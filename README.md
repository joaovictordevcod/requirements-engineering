# INF0339 — APS de Engenharia de Requisitos · Equipe Sul

Repositório de organização do trabalho da Atividade Prática Supervisionada (APS)
da disciplina **INF0339 – Engenharia de Requisitos** (UFG/INF, semestre 2026/2).

**Objetivo da APS:** identificar, analisar, especificar e validar os requisitos do
aplicativo móvel **Minha UFG**. Isso inclui a versão atual do aplicativo e a
evolução proposta de **avaliação de qualidade das Unidades Acadêmicas (UA)**.

> Resumo completo das regras e dos critérios de avaliação:
> [docs/atividade/resumo-do-enunciado.md](docs/atividade/resumo-do-enunciado.md)

## Equipe Sul

Em ordem alfabética, como deve constar no cabeçalho do documento entregue.

| Sigla | Integrante                      | GitHub |
|-------|---------------------------------|--------|
| Sigla | Integrante                      | Dupla | GitHub |
|-------|---------------------------------|:-----:|--------|
| CFS   | Cali Freitas Silva              | B | —      |
| GBR   | Gustavo Bittencourt Ribeiro     | A | —      |
| HEN   | Hendrew _(nome completo a registrar)_ | C | —      |
| JVBT  | João Victor Borges Tavares      | C | [@joaovictordevcod](https://github.com/joaovictordevcod) |
| MMRA  | Maria Michelle Rodrigues Amaral | A | —      |
| NCLD  | Nicole Cabral Lopes Dantas      | B | —      |

As siglas identificam autores e revisores em todo o repositório. As duplas são:

- **A:** app atual;
- **B:** avaliação de UA;
- **C:** integração e validação.

Os detalhes estão em [gestao/itens-de-informacao.md](gestao/itens-de-informacao.md).

> Hendrew entrou na Equipe Sul no lugar de Tales Ian Costa Barkema, que aparece
> na lista original do enunciado. Ver o
> [registro de comunicações](gestao/comunicacoes/registro-de-comunicacoes.md).

## Entrega

| Item                 | Valor |
|----------------------|-------|
| Arquivo              | um único PDF: `INF0339-APS-Sul.pdf` |
| Onde                 | tarefa da disciplina no SIGAA |
| Prazo                | _consultar a tarefa no SIGAA e registrar aqui_ |
| Documento de trabalho | Google Docs — [_inserir link (acesso restrito à equipe)_](https://docs.google.com/document/d/15i2m6unj2w0gHVdLEZf59Tzuz_QhPO0yYf5WKd123v4/edit?usp=sharing) |

## Como o trabalho está organizado

O **texto** do documento é escrito no **Google Docs**. Este repositório guarda
tudo que precisa de versionamento e de evidência de autoria:

```
requirements-engineering/
├── docs/
│   ├── atividade/        resumo do enunciado e checklist dos critérios de avaliação
│   └── documento/        estrutura do documento final, guia de estilo e modelo de item de informação
├── gestao/
│   ├── itens-de-informacao.md   catálogo dos itens, matriz autor × revisor e status
│   ├── plano-de-trabalho.md     fases, cadência de reuniões e definição de pronto
│   ├── riscos.md                registro e monitoramento de riscos da equipe
│   ├── atas/                    atas de reuniões (viram apêndice do documento)
│   └── comunicacoes/            registro de comunicações relevantes (idem)
├── itens/                rascunhos dos itens de informação, revisados por PR
├── elicitacao/           evidências brutas: capturas do app, questionários, respostas, notas
├── modelos/              diagramas em PlantUML (fonte versionada) e estilo compartilhado
├── referencias/          lista de referências bibliográficas no padrão ABNT
├── scripts/              utilitários (ex.: renderizar diagramas localmente)
└── .github/              modelos de issue/PR e renderização automática dos diagramas
```

## Fluxo de trabalho

Cada **item de informação** do documento (ex.: glossário, modelo conceitual,
casos de uso) segue o mesmo ciclo:

1. **Issue.** Abrir uma issue com o modelo *Item de informação*, indicando o ID
   do item, a dupla autora (com o responsável principal) e a dupla revisora
   definidas em [gestao/itens-de-informacao.md](gestao/itens-de-informacao.md).
   O trabalho é dividido em 3 duplas (A: app atual; B: avaliação de UA;
   C: integração e validação), com revisão cruzada em anel.
2. **Branch.** O autor trabalha em uma branch `item/<ID>-<slug>`, por exemplo
   `item/AN-03-modelo-conceitual`.
3. **Pull request.** O autor abre um PR que referencia a issue e preenche o
   checklist do modelo de PR.
4. **Revisão.** O revisor, que nunca é o próprio autor, comenta e depois aprova
   ou pede mudanças. Essa aprovação é a evidência de revisão exigida pela regra 5.
5. **Merge e cópia.** Após o merge, o conteúdo aprovado é copiado para o Google
   Docs na seção correspondente, já com o cabeçalho de autoria do item.
6. **Status.** Atualizar o status do item em `gestao/itens-de-informacao.md`.

Itens escritos diretamente no Google Docs usam **Sugestões** para as alterações
e **comentários** com `@menção` ao revisor. O revisor resolve os comentários, e
o histórico de versões do Docs fica como evidência.

### Criar as issues dos itens

O script `scripts/criar-issues.sh` lê a matriz em
[gestao/itens-de-informacao.md](gestao/itens-de-informacao.md) e cria no GitHub:

- **uma issue por item**, com a dupla autora, o responsável, os coautores, a
  dupla revisora, as dependências e a definição de pronto;
- **os rótulos** `item`, `dupla A`, `dupla B` e `dupla C`;
- **os marcos** das 4 seções do documento.

O script pode ser rodado de novo sem problema: itens que já têm issue são
pulados.

Ele precisa do [GitHub CLI](https://cli.github.com) autenticado. No Windows:

```bash
winget install --id GitHub.cli
```

```bash
gh auth login
```

Para ver o que seria criado sem criar nada:

```bash
SIMULAR=1 ./scripts/criar-issues.sh
```

Para criar de verdade:

```bash
./scripts/criar-issues.sh
```

As issues só são atribuídas (*assignee*) a quem tem o usuário do GitHub
preenchido no topo do script. Quando cada membro informar o seu usuário,
complete a lista e atribua as issues pelo site, ou edite o script e use
`gh issue edit`.

### Convenções

- **Commits:** mensagens em português, no formato `tipo(escopo): descrição`.
  - Tipos: `docs`, `modelo`, `gestao`, `elicitacao`, `chore`.
  - Exemplo: `modelo(AN-03): adicionar classes Dimensao e ElementoEducacional`.
- **Identificadores** (ver o [guia de estilo](docs/documento/guia-de-estilo.md)):
  - `RF-xx`: requisito funcional;
  - `RNF-xx`: requisito não funcional;
  - `RN-xx`: regra de negócio;
  - `UC-xx`: caso de uso;
  - `NEC-xx`: necessidade de stakeholder;
  - `DEF-xx`: defeito encontrado na validação.
- **Diagramas:** sempre em PlantUML dentro de `modelos/`. Nunca edite uma imagem
  à mão; altere a fonte `.puml` e renderize de novo.

## Diagramas (PlantUML)

- **Editar:** use a extensão *PlantUML* do VS Code (pré-visualização com
  `Alt+D`) ou o editor online <https://www.plantuml.com/plantuml>.
- **Renderizar localmente:** precisa de Java e Graphviz. Execute:

  ```bash
  ./scripts/render-diagramas.sh
  ```

- **Automático:** a cada push que altera `modelos/`, o GitHub Actions renderiza
  todos os diagramas em PNG e SVG. O resultado fica disponível como artefato
  `diagramas` na execução do workflow. Os PNGs são os que vão para o Google Docs.

Mais detalhes em [modelos/README.md](modelos/README.md).

## Licença

[MIT](LICENSE).
