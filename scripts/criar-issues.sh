#!/usr/bin/env bash
# Cria no GitHub uma issue para cada item de informação de
# gestao/itens-de-informacao.md, além dos rótulos e marcos usados por elas.
#
# Uso:
#   ./scripts/criar-issues.sh              cria o que ainda não existe
#   SIMULAR=1 ./scripts/criar-issues.sh    só mostra o que seria criado
#
# Requisitos: GitHub CLI (gh) autenticado com `gh auth login`.
# Pode ser rodado de novo sem duplicar: issues com o mesmo ID no título são puladas.
set -euo pipefail

RAIZ="$(cd "$(dirname "$0")/.." && pwd)"
MATRIZ="$RAIZ/gestao/itens-de-informacao.md"
SIMULAR="${SIMULAR:-0}"

# Usuário do GitHub de cada membro. Preencha quando souber; vazio = sem assignee.
declare -A USUARIO=(
  [JVBT]="joaovictordevcod"
  [HEN]=""
  [MMRA]=""
  [GBR]=""
  [NCLD]=""
  [CFS]=""
)

declare -A NOME=(
  [JVBT]="João Victor" [HEN]="Hendrew" [MMRA]="Maria Michelle"
  [GBR]="Gustavo" [NCLD]="Nicole" [CFS]="Cali"
)
declare -A MEMBROS=(
  [A]="MMRA GBR" [B]="NCLD CFS" [C]="JVBT HEN"
)
declare -A SECAO=(
  [EL]="1 Elicitação" [AN]="2 Análise" [ES]="3 Especificação" [VA]="4 Validação"
)

executar() {
  if [[ "$SIMULAR" == 1 ]]; then echo "  [simulação] $*"; else "$@"; fi
}

if [[ "$SIMULAR" != 1 ]]; then
  command -v gh >/dev/null || { echo "Erro: instale o GitHub CLI (https://cli.github.com)." >&2; exit 1; }
  gh auth status >/dev/null 2>&1 || { echo "Erro: rode 'gh auth login' antes." >&2; exit 1; }
fi

echo "== Rótulos =="
executar gh label create "item"    --color 0E8A16 --description "Item de informação do documento" --force
executar gh label create "defeito" --color D73A4A --description "Defeito encontrado em revisão ou inspeção" --force
executar gh label create "dupla A" --color 1D76DB --description "App atual" --force
executar gh label create "dupla B" --color 5319E7 --description "Avaliação de UA" --force
executar gh label create "dupla C" --color FBCA04 --description "Integração e validação" --force

echo "== Marcos (seções do documento) =="
for chave in EL AN ES VA; do
  titulo="${SECAO[$chave]}"
  if [[ "$SIMULAR" == 1 ]]; then
    echo "  [simulação] criar marco '$titulo'"
  elif ! gh api "repos/{owner}/{repo}/milestones?state=all" --jq '.[].title' | grep -qxF "$titulo"; then
    gh api "repos/{owner}/{repo}/milestones" -f title="$titulo" >/dev/null
    echo "  criado: $titulo"
  fi
done

echo "== Issues =="
EXISTENTES=""
if [[ "$SIMULAR" != 1 ]]; then
  EXISTENTES="$(gh issue list --state all --limit 200 --json title --jq '.[].title')"
fi

criadas=0
while IFS='|' read -r _ id item conteudo autoria resp revisao depende _resto; do
  id="$(echo "$id" | xargs)"
  [[ "$id" =~ ^(EL|AN|ES|VA)-0[0-9]$ ]] || continue
  item="$(echo "$item" | xargs)"
  conteudo="$(echo "$conteudo" | sed 's/^ *//; s/ *$//')"
  autoria="$(echo "$autoria" | xargs)"
  resp="$(echo "$resp" | xargs)"
  revisao="$(echo "$revisao" | xargs)"
  depende="$(echo "$depende" | xargs)"
  titulo="[$id] $item"

  if grep -qF "[$id]" <<<"$EXISTENTES"; then
    echo "  já existe: $titulo"
    continue
  fi

  # Rótulos e responsáveis (VA-03 é da Dupla A + B, com dois responsáveis).
  rotulos="item"
  for d in A B C; do [[ "$autoria" == *"$d"* ]] && rotulos+=",dupla $d"; done

  responsaveis=""; assignees=""
  for s in ${resp//+/ }; do
    responsaveis+="${responsaveis:+ e }${NOME[$s]} ($s)"
    [[ -n "${USUARIO[$s]:-}" ]] && assignees+="${assignees:+,}${USUARIO[$s]}"
  done

  coautores=""
  for d in A B C; do
    [[ "$autoria" == *"$d"* ]] || continue
    for m in ${MEMBROS[$d]}; do
      [[ " ${resp//+/ } " == *" $m "* ]] && continue
      coautores+="${coautores:+, }${NOME[$m]} ($m)"
    done
  done

  revisores=""
  for m in ${MEMBROS[$revisao]}; do revisores+="${revisores:+, }${NOME[$m]} ($m)"; done

  corpo="$(cat <<EOF
**Item:** $id — $item
**Seção:** ${SECAO[${id%%-*}]}

| Papel | Quem |
|---|---|
| Dupla autora | $autoria |
| Responsável principal | $responsaveis |
| Coautor(a) | ${coautores:-—} |
| Dupla revisora | $revisao — $revisores |
| Depende de | $depende |

### Conteúdo esperado
$conteudo

Detalhes e notas do item: [gestao/itens-de-informacao.md](../blob/main/gestao/itens-de-informacao.md)

### Definição de pronto
- [ ] Bloco de identificação preenchido ([modelo](../blob/main/docs/documento/modelo-item-de-informacao.md))
- [ ] Termos conferidos com o glossário (AN-01)
- [ ] IDs únicos e referências cruzadas válidas
- [ ] Figuras e tabelas com legenda e citadas no texto
- [ ] Referências ABNT incluídas em \`referencias/referencias.md\`
- [ ] Revisão aprovada pela dupla revisora
- [ ] Copiado para o Google Docs e status atualizado na matriz
EOF
)"

  echo "  criando: $titulo  [$rotulos]${assignees:+ -> $assignees}"
  args=(issue create --title "$titulo" --body "$corpo" --label "$rotulos" --milestone "${SECAO[${id%%-*}]}")
  [[ -n "$assignees" ]] && args+=(--assignee "$assignees")
  executar gh "${args[@]}" >/dev/null
  criadas=$((criadas + 1))
done < <(tr -d '\r' < "$MATRIZ")

echo "Pronto: $criadas issue(s) $([[ "$SIMULAR" == 1 ]] && echo 'seriam criadas' || echo 'criadas')."
