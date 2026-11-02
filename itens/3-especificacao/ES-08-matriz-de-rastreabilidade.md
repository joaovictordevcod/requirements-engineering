# 3.8 Matriz de rastreabilidade

| Identificação | |
|---|---|
| **ID** | `ES-08` |
| **Autoria** | Dupla C: João Victor Borges Tavares (responsável); Tales Ian Costa Barkema |
| **Revisão** | Dupla B: Nicole Cabral Lopes Dantas; Cali Freitas Silva |
| **Versão / data** | 0.1 (rascunho), 2026-11-02 |
| **Técnica / linguagem** | Matriz de rastreabilidade bidirecional, vertical e horizontal (OLIVEIRA, 2026) |
| **Depende de** | `EL-03`, `EL-04`, `EL-06`, `AN-03`, `AN-05`, `AN-06`, `ES-01` a `ES-07`, `VA-04` |
| **Usado por** | `VA-01` (critério de saída CS-05 e atividade VAL-04), `VA-03` |

**Objetivo.** Ligar cada requisito à sua origem e a tudo o que dele decorre, nos
dois sentidos. A matriz permite responder a duas perguntas:

1. **De onde vem este requisito?** Rastreabilidade para trás: fonte e
   necessidade.
2. **O que muda se ele mudar?** Rastreabilidade para frente: modelos, telas e
   critérios de aceitação.

Ela consolida as tabelas de rastreabilidade que cada item já tem e mostra o que
ainda não está ligado.

---

## 3.8.1 Critério

Os slides da disciplina definem a matriz de rastreabilidade com dois eixos
(OLIVEIRA, 2026):

- **Vertical:** da fonte do requisito até os elementos que o realizam. Neste
  documento, a cadeia é:

  ```
  fonte (EL-03, EL-04 ou lei)
    → necessidade (NEC, EL-06)
    → requisito (RF, RN, RNF)
    → dados (RD, AN-03)
    → caso de uso (UC, ES-05 e ES-06)
    → tela (TL, ES-07)
    → critério de aceitação (CA, VA-04)
  ```

- **Horizontal:** de requisito para requisito, ou seja, as dependências entre
  eles.

**Por que bidirecional.** A matriz pode ser lida nos dois sentidos. Para a
análise de impacto, parte-se de um requisito e chega-se a tudo o que depende
dele (seção 3.8.6).

**Regra de consolidação.** Cada ligação vem do item que a define. Esta matriz
não cria ligações novas. Quando um item ainda não existe, ou não tem a coluna
correspondente, a célula mostra **"—"**, e a lacuna é registrada na seção 3.8.7.

**Prioridade** de cada requisito: a proposta do `AN-06`.

**Legenda de status** (OLIVEIRA, 2026):

- **Definido:** escrito no item, ainda não validado;
- **Validado:** aprovado na inspeção do VA-03;
- **A confirmar:** depende de decisão registrada no AN-05 ou no AN-06.

## 3.8.2 Matriz vertical — avaliação de qualidade de UA

A Tabela 1 liga cada requisito funcional da evolução à sua origem e aos
elementos que o realizam. As ligações vêm do `EL-06` (Tabela 4), do `ES-02`
(Tabela 12), do `ES-07` (Tabela 3) e do `VA-04` (Tabela 11). Os trechos T1 a T8
são os do Apêndice A analisados no `EL-04`.

**Tabela 1 – Rastreabilidade vertical dos requisitos funcionais da avaliação de UA**

| Requisito | Fonte (EL-04) | Necessidade | Regra | Dados (AN-03) | Caso de uso | Tela | Critérios | Prior. | Status |
|---|---|---|---|---|---|---|---|---|---|
| RF-AVA-01 | T1, T4 | NEC-AVA-01 | — | RD-AVA-01, 06 | UC-AVA-01 | TL-AVA-01 | CA-AVA-01.1, 01.2 | Must | Definido |
| RF-AVA-02 | T2, T3, T5, T7 | NEC-AVA-02, 03 | — | RD-AVA-03, 04, 05 | UC-AVA-01 | TL-AVA-02 | CA-AVA-02.1, 02.2 | Must | Definido |
| RF-AVA-03 | T5 | NEC-AVA-03 | — | RD-AVA-05, 07 | UC-AVA-01 | TL-AVA-02 | CA-AVA-03.1, 03.2 | Must | Definido |
| RF-AVA-04 | T1, T4 | NEC-AVA-01 | — | RD-AVA-01, 06, 07, 08 | UC-AVA-01 | TL-AVA-03 | CA-AVA-04.1, 04.2 | Must | A confirmar (CNF-01, CNF-03) |
| RF-AVA-05 | T6 | NEC-AVA-04 | RN-AVA-01 | RD-AVA-03, 04, 07 | UC-AVA-01 | — (cálculo interno) | CA-AVA-05.1 a 05.4 | Must | A confirmar (CNF-04) |
| RF-AVA-06 | T6 | NEC-AVA-04 | RN-AVA-02 | RD-AVA-03, 06 | UC-AVA-01 | — (cálculo interno) | CA-AVA-06.1 a 06.5 | Must | A confirmar (CNF-04) |
| RF-AVA-07 | T8 | NEC-AVA-05 | — (TBD-EXP-11) | RD-AVA-01, 06, 09 | UC-AVA-02 | TL-AVA-04 | CA-AVA-07.1 a 07.4 | Must | A confirmar (CNF-02) |
| RF-AVA-08 | T8 | NEC-AVA-06 | RN-AVA-04 | RD-AVA-01, 02, 09 | UC-AVA-03 | TL-AVA-05 | CA-AVA-08.1 a 08.6 | Must | A confirmar (CNF-04, CNF-05) |
| RF-AVA-09 | T8 | NEC-AVA-07 | RN-AVA-03 | RD-AVA-01, 09 | UC-AVA-04 | TL-AVA-06 | CA-AVA-09.1 a 09.5 | Must | A confirmar (CNF-04) |

Fonte: elaborada pelos autores com base no EL-04, EL-06, AN-03, ES-02, ES-04,
ES-06, ES-07 e VA-04.

## 3.8.3 Matriz vertical — app atual

A Tabela 2 liga os requisitos do `ES-01` ao inventário (`EL-03`) e às
necessidades (`EL-06`). Como o ES-01 não tem coluna de origem, a ligação com a
necessidade foi feita por módulo: cada `NEC-ATU` corresponde a uma
funcionalidade do enunciado.

**Tabela 2 – Rastreabilidade vertical dos requisitos funcionais do app atual**

| Requisitos | Fonte (EL-03) | Necessidade | Caso de uso | Critérios | Prioridade (AN-06) | Status |
|---|---|---|---|---|---|---|
| RF-SEG-01 a RF-SEG-10 | 1.3.1 Segurança | NEC-ATU-01 | — | — | Won't (aplicativo externo) | A confirmar (Dupla A) |
| RF-RAD-01, RF-RAD-02 | 1.3.2 Rádio | NEC-ATU-02 | — | — | Must | Definido |
| RF-GUI-01 | 1.3.3 Guia Estudantil | NEC-ATU-03 | — | — | Must | Definido |
| RF-EVE-01 a RF-EVE-03 | 1.3.4 Eventos | NEC-ATU-04 | — | — | Must | Definido |
| RF-NOT-01 a RF-NOT-04 | 1.3.5 Notícias | NEC-ATU-05 | — | — | Must (01, 02), Should (03), Could (04) | Definido |
| RF-RU-01 a RF-RU-05 | 1.3.7 RU | NEC-ATU-06 | — | — | Must (01 a 03), Should (04), Could (05) | Definido |
| RF-LOC-01 a RF-LOC-06 | 1.3.6 Locais | NEC-ATU-07 | — | — | Must (01, 02, 04), Should (03, 06), Could (05) | Definido |
| RF-APP-01, RF-APP-02 | 1.3.8 Apps UFG | NEC-ATU-08 | — | — | Must | Definido |

Fonte: elaborada pelos autores com base no EL-03, EL-06, ES-01 e AN-06.

**Necessidades do app atual que o inventário já confirma.** O `EL-06` deixou
`NEC-ATU-01` a `NEC-ATU-08` com status "A confirmar (EL-03)". O inventário da
Dupla A observou as oito funcionalidades no aplicativo (versão 3.1.1, Android).
O Apps UFG estava em dúvida porque a página da App Store não o cita, e foi
observado no `EL-03`, seção 1.3.8. O `EL-06` pode passar as oito necessidades
para "Confirmada".

## 3.8.4 Matriz vertical — requisitos de qualidade

A Tabela 3 liga cada requisito de qualidade à sua fonte, à necessidade e à
forma de verificação definida no `ES-03`.

**Tabela 3 – Rastreabilidade vertical dos requisitos de qualidade**

| Requisito | Fonte | Necessidade | Verificação (ES-03, Tabela 2) | Conflito (AN-05) | Prior. |
|---|---|---|---|---|---|
| RNF-GER-01 a RNF-GER-03 | LGPD (BRASIL, 2018) | NEC-GER-01 | Inspeção de telas e requisições; captura de tráfego | CNF-01, CNF-02 | Must |
| RNF-GER-04 a RNF-GER-06 | LBI (BRASIL, 2015); WCAG 2.1 | NEC-GER-02 | Percurso com leitor de tela; medição de contraste; fonte ampliada | — | Must |
| RNF-GER-07 | Página da App Store; EL-03 | NEC-GER-03 | Execução dos critérios de aceitação na menor versão suportada | — | Must |
| RNF-AVA-01, RNF-AVA-03, RNF-AVA-04 | Proposto pela equipe | NEC-AVA-01 (e NEC-AVA-03 no RNF-AVA-04) | Medição de tempo; teste de falha de envio; teste de envio incompleto | — | Should |
| RNF-AVA-02 | Proposto pela equipe | NEC-AVA-05, 06, 07 | Medição de tempo | — | Should |
| RNF-AVA-05 | Apêndice A ("sistema em operação") | NEC-GER-04 | Critérios de aceitação do ES-01 executados após a inclusão da evolução | CNF-03 | Must |
| RNF-AVA-06 | Proposto pela equipe | NEC-AVA-02 | Alteração de questões sem nova versão do aplicativo | CNF-04 | Should |
| RNF-AVA-07 | Proposto pela equipe | NEC-AVA-01, 05, 06, 07 | Taxa mensal de sucesso | — | Should |

Fonte: elaborada pelos autores com base no EL-06, ES-03, AN-05 e AN-06.

## 3.8.5 Matriz horizontal — dependências entre requisitos

A Tabela 4 mostra de quais requisitos cada um depende. Ela é a base da análise
de impacto: uma mudança em um requisito da coluna "Depende de" pode exigir a
revisão do requisito da primeira coluna.

**Tabela 4 – Dependências entre requisitos**

| Requisito | Depende de | Tipo de dependência |
|---|---|---|
| RF-AVA-03 | RF-AVA-02 | Só há nota para questão apresentada |
| RF-AVA-04 | RF-AVA-01, RF-AVA-03 | O registro exige a UA selecionada e as notas atribuídas |
| RF-AVA-05 | RF-AVA-04; RN-AVA-01 | Calcula sobre a avaliação registrada, pela regra |
| RF-AVA-06 | RF-AVA-05; RN-AVA-02 | A nota final usa as notas das dimensões |
| RF-AVA-07 | RF-AVA-06 | A nota da UA usa as notas finais das avaliações (regra pendente: TBD-EXP-11) |
| RF-AVA-08 | RF-AVA-06; RN-AVA-04 | A média por Área de Conhecimento usa as notas das UAs |
| RF-AVA-09 | RF-AVA-06; RN-AVA-03 | A nota da UFG usa as notas das UAs |
| RN-AVA-02 | RN-AVA-01 | Média das notas das dimensões |
| RN-AVA-03, RN-AVA-04 | RN-AVA-02 | Médias sobre as notas das UAs |
| RNF-AVA-01, RNF-AVA-03, RNF-AVA-04 | RF-AVA-04 | Restringem o registro da avaliação |
| RNF-AVA-02 | RF-AVA-07, RF-AVA-08, RF-AVA-09 | Restringe a exibição das notas |
| RNF-AVA-05 | Todos os RF do ES-01 | Garante que o comportamento atual seja mantido |
| RNF-AVA-06 | RF-AVA-02 | Restringe a origem das questões |
| RNF-GER-01 a RNF-GER-03 | RF-AVA-04 | O registro é o único ponto em que dados do usuário podem ser coletados (CNF-01, CNF-03) |
| RF-NOT-03, RF-NOT-04 | RF-NOT-01 | Atualizam ou reiniciam a lista de notícias |
| RF-EVE-02, RF-EVE-03 | RF-EVE-01 | Dependem da data selecionada e dos cards exibidos |
| RF-LOC-04, RF-LOC-05 | RF-LOC-01, RF-LOC-02 | Ligam a lista ao mapa |
| RF-RU-02, RF-RU-03, RF-RU-04 | RF-RU-01 | Partem do card de refeição selecionado |
| RF-APP-02 | RF-APP-01 | Parte do card do aplicativo |

Fonte: elaborada pelos autores com base no ES-01, ES-02, ES-03 e ES-04.

## 3.8.6 Análise de impacto: exemplos

**Exemplo 1 — Decisão do CNF-01 (anonimato × avaliação repetida).** Se o
docente escolher a avaliação identificada, a matriz mostra o que precisa ser
revisto:

| Eixo | Elementos a revisar |
|---|---|
| Vertical | RF-AVA-04 → RD-AVA-06 e RD-AVA-08 → UC-AVA-01 → TL-AVA-01 e TL-AVA-03 → CA-AVA-04.1 e 04.2 |
| Horizontal | RNF-GER-01 a RNF-GER-03, que depois passam a tratar dado pessoal ligado à opinião |

**Exemplo 2 — Definição do tipo de média (TBD-EXP-12).** Se a média for
ponderada, a matriz mostra o que precisa ser revisto:

| Eixo | Elementos a revisar |
|---|---|
| Vertical | RN-AVA-01 a RN-AVA-04 → RF-AVA-05, 06, 08 e 09 → CA-AVA-05.x, 06.x, 08.x e 09.x |
| Horizontal | RF-AVA-07, que depende do RF-AVA-06 |

## 3.8.7 Análise de cobertura

Esta é a análise de cobertura prevista no `VA-01` (atividade VAL-04). Ela confere
o critério de saída CS-05 e parte do CS-03. A Tabela 5 apresenta o resultado.

**Tabela 5 – Cobertura da rastreabilidade**

| Verificação | Avaliação de UA | App atual | Qualidade |
|---|---|---|---|
| Toda necessidade tem requisito (CS-05) | Sim: NEC-AVA-01 a 07 | Sim, com ressalva para NEC-ATU-01 (ver lacuna L1) | Sim: NEC-GER-01 a 04 |
| Todo requisito tem fonte | Sim | **Não**: o ES-01 não tem coluna de origem (lacuna L2) | Sim |
| Todo RF tem caso de uso | Sim: UC-AVA-01 a 04 | **Não**: AN-04 e ES-05 ainda vazios (lacuna L3) | N.A. |
| Todo RF percebido pelo usuário tem tela | Sim: TL-AVA-01 a 06 | N.A.: o app atual é descrito por prints no EL-03 | N.A. |
| Todo requisito tem critério de aceitação ou métrica (CS-03, CS-04) | Sim: CA-AVA para os 9 RF | **Não**: o VA-04 não cobre o ES-01 (lacuna L4) | Sim: métrica e valor-alvo no ES-03 |
| IDs únicos | **Não**: colisão de RF-AVA com o rascunho da Dupla A (lacuna L5) | Sim | Sim |

**Lacunas a resolver antes da entrega:**

| ID | Lacuna | Quem resolve | Item |
|---|---|---|---|
| L1 | Com o módulo Segurança como aplicativo externo (AN-06), falta um RF que atenda NEC-ATU-01: abrir o aplicativo de Segurança ou levar à loja de aplicativos | Dupla A | ES-01 |
| L2 | O ES-01 não indica a origem de cada requisito (seção do EL-03) | Dupla A | ES-01 |
| L3 | Não há casos de uso do app atual | Dupla A | AN-04, ES-05 |
| L4 | Não há critérios de aceitação para os requisitos Must do ES-01 | Dupla B (responsável pelo VA-04), com a Dupla A | VA-04 |
| L5 | O rascunho da Dupla A repete os IDs RF-AVA-01 a 08 com outro conteúdo | Dupla A, com registro no AN-05 | ES-01, AN-05 |

Fonte: elaborada pelos autores.

## 3.8.8 Rastreabilidade deste item

- **Depende de:** todos os itens que definem ligações: `EL-03`, `EL-04`,
  `EL-06`, `AN-03`, `AN-05`, `AN-06`, `ES-01` a `ES-07` e `VA-04`. Quando um
  deles mudar uma ligação, esta matriz é atualizada no mesmo dia.
- **Usado por:**
  - `VA-01`, critério de saída CS-05 e atividade VAL-04;
  - `VA-03`, pergunta K5 do `VA-02`, que confere se os IDs citados existem.

**Referências deste item:**

- BRASIL. Lei nº 13.146, de 6 de julho de 2015. Institui a Lei Brasileira de
  Inclusão da Pessoa com Deficiência (Estatuto da Pessoa com Deficiência).
  Brasília, DF: Presidência da República, 2015.
- BRASIL. Lei nº 13.709, de 14 de agosto de 2018. Lei Geral de Proteção de Dados
  Pessoais (LGPD). Brasília, DF: Presidência da República, 2018.
- OLIVEIRA, J. L. *Requisitos de Software: conceitos fundamentais; técnicas e
  ferramentas; SQuaRE, família ISO 25000.* Slides de aula da disciplina
  INF0339 – Engenharia de Requisitos. Goiânia: INF/UFG, 2026.
- UNIVERSIDADE FEDERAL DE GOIÁS (UFG). Instituto de Informática. *Definição de
  Atividades Práticas Supervisionadas (APS) da disciplina: INF0339 – Engenharia
  de Requisitos, semestre 2026/2.* Goiânia: UFG, 2026. Apêndice A: Domínio do
  problema – escopo do software a ser especificado.
