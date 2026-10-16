# Plano de trabalho da Equipe Sul

> **Prazo de entrega:** _consultar a tarefa no SIGAA e registrar aqui_.
> As datas das fases abaixo são calculadas de trás para frente a partir do prazo,
> e devem ser preenchidas na reunião de abertura.

## 1. Fases

O processo é **iterativo**: as fases se sobrepõem, e achados da validação voltam
para a especificação. As datas marcam quando cada fase precisa estar
**substancialmente concluída**.

| Fase | Objetivo | Itens | Marco de saída | Data-alvo |
|------|----------|-------|----------------|-----------|
| 0. Organização | Alinhar regras, aprovar a matriz autor × revisor, combinar a cadência | — | Ata da reunião de abertura com a matriz aprovada | |
| 1. Elicitação  | Levantar o app atual e as necessidades da evolução | EL-01 a EL-06 | Registro de necessidades (EL-06) revisado | |
| 2. Análise     | Entender, estruturar e priorizar | AN-01 a AN-06 | Modelo conceitual e casos de uso aprovados | |
| 3. Especificação | Escrever requisitos e modelos detalhados | ES-01 a ES-08 | Todos os RF/RNF/RN com ID, prioridade e origem | |
| 4. Validação   | Inspecionar, validar com usuários, corrigir | VA-01 a VA-05 | Nenhum defeito de severidade alta em aberto | |
| 5. Integração e entrega | Montar o documento único, revisar a forma e exportar o PDF | todos | `INF0339-APS-Sul.pdf` enviado no SIGAA | |

**Folga recomendada:** entregar a versão final no SIGAA pelo menos **2 dias antes**
do prazo.

## 2. Cadência de trabalho

O Apêndice C exige que a cadência seja definida por **consenso**, com limites
mínimo e máximo de atividades síncronas por semana. A tabela abaixo é uma
proposta para a reunião de abertura.

| Atividade | Tipo | Frequência proposta | Duração |
|-----------|------|---------------------|---------|
| Reunião de acompanhamento | Síncrona | mín. 1, máx. 2 por semana (pode usar a aula prática) | até 1 h |
| Sessão de integração (antes de cada marco) | Síncrona | 1 por fase | até 1 h 30 |
| Check-in assíncrono | Assíncrona | 2 por semana (ex.: segunda e quinta) | — |
| Autoria e revisão de itens | Assíncrona | contínua | — |

### Check-in assíncrono

No grupo da equipe, cada membro responde em uma mensagem:

1. **O que fiz** desde o último check-in.
2. **O que vou fazer** até o próximo.
3. **Impedimentos**.

Quem não responder até o fim do dia combinado recebe um lembrete. Duas ausências
seguidas acionam o risco **R-01** (ver [riscos.md](riscos.md)).

## 3. Canais de comunicação

| Canal | Uso | Fica registrado como |
|-------|-----|----------------------|
| GitHub (issues e PRs) | Autoria, revisão e decisões técnicas sobre itens | O próprio histórico do GitHub |
| Grupo de mensagens da equipe | Check-ins, avisos, combinação de reuniões | Resumo em [comunicacoes/](comunicacoes/registro-de-comunicacoes.md) |
| Reuniões | Decisões coletivas | Ata em [atas/](atas/) |
| E-mail ou SIGAA com o docente | Dúvidas sobre regras | Registro em [comunicacoes/](comunicacoes/registro-de-comunicacoes.md) |

**Decisões tomadas fora do GitHub ou de reuniões** precisam ser registradas em
uma issue ou ata em até 24 h. Decisão sem registro não vale como evidência.

## 4. Definição de pronto de um item de informação

Um item só muda para `Aprovado` quando cumpre **todas** as condições abaixo:

- [ ] Segue o [modelo de item de informação](../docs/documento/modelo-item-de-informacao.md):
  ID, título, autores, revisores, versão, rastreabilidade e referências.
- [ ] Os termos usados estão no glossário (AN-01), ou foram adicionados a ele.
- [ ] Os IDs referenciados existem, e os novos IDs não colidem com os existentes.
- [ ] Figuras e tabelas têm número e legenda e são citadas no texto.
- [ ] Os diagramas foram gerados a partir do `.puml` em `modelos/`.
- [ ] As ideias de terceiros estão citadas no padrão ABNT.
- [ ] O revisor designado aprovou o PR, ou resolveu os comentários no Docs.
- [ ] O status foi atualizado em [itens-de-informacao.md](itens-de-informacao.md).

## 5. Duplas e papéis

O conteúdo é dividido entre **3 duplas temáticas** (A: app atual; B: avaliação
de UA; C: integração e validação), com revisão cruzada em anel. A composição, os
itens e o anel de revisão estão em
[itens-de-informacao.md](itens-de-informacao.md).

Além das duplas, há dois **papéis de gestão rotativos**, trocados a cada
2 semanas, conforme as diretrizes da equipe:

| Papel | Responsabilidade |
|-------|------------------|
| Gestor(a) de rastreabilidade e formatação | Ver detalhes abaixo. |
| Guardião(ã) de atas, registros e riscos | Ver detalhes abaixo. |

**Gestor(a) de rastreabilidade e formatação:**

- aplicar o [guia de estilo](../docs/documento/guia-de-estilo.md): fonte,
  espaçamento sem linhas vazias, legendas;
- manter a coluna de status de [itens-de-informacao.md](itens-de-informacao.md);
- consolidar o PDF final `INF0339-APS-Sul.pdf`.

**Guardião(ã) de atas, registros e riscos:**

- registrar a presença e as atividades das reuniões e dos check-ins;
- garantir que cada ata seja publicada em até 24 h;
- atualizar o [registro de riscos](riscos.md) e o
  [registro de comunicações](comunicacoes/registro-de-comunicacoes.md).

Em cada reunião, as funções de **facilitador(a)**, que conduz a pauta e o
tempo, e de **secretário(a)**, que escreve a ata, também giram entre os
membros.

| Período | Gestor(a) de rastreabilidade e formatação | Guardião(ã) de atas, registros e riscos |
|---------|-------------------------------------------|-----------------------------------------|
| Semanas 1–2 | _sigla_ | _sigla_ |
| Semanas 3–4 | _sigla_ | _sigla_ |
| Semanas 5–6 | _sigla_ | _sigla_ |

**Rotina semanal (sprint), conforme as diretrizes da equipe:**

1. **Início da semana (assíncrono):** cada membro trabalha nos itens em que é
   responsável principal.
2. **Meio da semana (síncrono):** reunião em que os autores apresentam os itens
   para a dupla revisora.
3. **Fim da semana (assíncrono):** os autores aplicam as correções, os revisores
   aprovam o PR e o item é registrado no Docs com o cabeçalho de autoria.

## 6. Integração final (fase 5)

1. Congelar o conteúdo, sem novos requisitos.
2. Rodar o [checklist de avaliação](../docs/atividade/checklist-de-avaliacao.md)
   completo. Cada critério fica com um membro, e ninguém confere o que escreveu.
3. Atualizar o sumário, as numerações de figuras e tabelas e os links internos.
4. Fazer a revisão ortográfica e gramatical do documento inteiro.
5. Conferir a lista de autores no cabeçalho: ordem alfabética, apenas quem
   contribuiu.
6. Exportar como PDF, nomear `INF0339-APS-Sul.pdf` e conferir abrindo o arquivo.
7. Enviar no SIGAA e registrar na ata quem enviou e quando.
