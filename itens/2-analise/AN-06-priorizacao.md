# 2.6 Priorização

| Identificação | |
|---|---|
| **ID** | `AN-06` |
| **Autoria** | Dupla C: João Victor Borges Tavares (responsável); Tales Ian Costa Barkema |
| **Revisão** | Dupla B: Nicole Cabral Lopes Dantas; Cali Freitas Silva |
| **Versão / data** | 0.1 (rascunho), 2026-11-02 |
| **Técnica / linguagem** | Classificação por critérios de valor, penalidade e custo (OLIVEIRA, 2026), na escala MoSCoW com equivalência à escala obrigatório / desejável / opcional |
| **Depende de** | `EL-06`, `AN-05`, `ES-01`, `ES-02`, `ES-03`, `ES-04` |
| **Usado por** | `ES-01` a `ES-04`, `VA-04`, `ES-08` |

**Objetivo.** Este item define como a equipe atribui prioridade aos
requisitos e registra a prioridade proposta para cada um, com o racional das
decisões. A prioridade orienta duas escolhas:

- o que detalhar primeiro;
- o que preservar quando houver conflito ou falta de recursos.

Os slides apresentam a prioridade como **"base para decisões diante de recursos
escassos"** (OLIVEIRA, 2026).

---

## 2.6.1 Escala de prioridade

Os slides da disciplina usam a escala obrigatório / desejável / opcional
(deve / deveria / poderia) (OLIVEIRA, 2026). Os itens já escritos pelas três
duplas (ES-01, ES-02, ES-03 e ES-04) usam a escala **MoSCoW**. Este item mantém
a MoSCoW, para não trocar a prioridade de todos os requisitos às vésperas da
entrega, e registra a equivalência entre as duas escalas na Tabela 1.

**Tabela 1 – Escala de prioridade e equivalência com a escala da disciplina**

| MoSCoW | Escala da disciplina | Significado neste trabalho |
|---|---|---|
| Must | Obrigatório (deve) | Sem o requisito, a funcionalidade não cumpre o que o enunciado ou a lei exige |
| Should | Desejável (deveria) | Agrega valor relevante, mas a funcionalidade continua útil sem ele |
| Could | Opcional (poderia) | Detalhe de conveniência ou de apresentação; pouca perda se ficar de fora |
| Won't | Sem equivalente: fora desta versão | Não será atendido pelo aplicativo nesta versão, por estar fora do escopo ou por decisão registrada |

## 2.6.2 Critérios

Os slides indicam três fatores para priorizar um requisito (OLIVEIRA, 2026):

- o **valor** que ele agrega ao sistema;
- a **penalidade** causada por não tê-lo;
- o **custo e o tempo** para implementá-lo e implantá-lo.

Cada requisito foi analisado nesses três fatores, com os níveis Alto, Médio e
Baixo. A prioridade segue as regras da Tabela 2, aplicadas em ordem: vale a
primeira regra que se aplica.

**Tabela 2 – Regras de decisão da prioridade**

| # | Regra | Prioridade |
|---|---|---|
| R1 | O requisito descreve uma função de um **aplicativo externo** que o Minha UFG apenas abre (definição no AN-01), ou está fora do escopo da APS | Won't |
| R2 | O requisito vem **explicitamente** do enunciado (UFG, 2026) ou de uma **lei** (LGPD, LBI) | Must |
| R3 | Outro requisito Must **depende** dele (coluna "Depende de" dos itens) | Must |
| R4 | Penalidade **Alta**: sem ele, a funcionalidade deixa de cumprir o seu objetivo | Must |
| R5 | Valor **Alto** ou **Médio**, mas penalidade Média ou Baixa | Should |
| R6 | Valor **Baixo** e penalidade **Baixa** (detalhe de interface ou de conveniência) | Could |

O custo entrou como critério de desempate entre Should e Could. Ele não
rebaixa um requisito obrigatório por lei ou pelo enunciado.

**App atual.** As funcionalidades atuais já existem: o status delas é "atendido
(implementado)" (OLIVEIRA, 2026). Para elas, a prioridade indica o quanto o
comportamento precisa ser **preservado** quando a avaliação de UA for incluída
(`NEC-GER-04`, `RNF-AVA-05`).

## 2.6.3 Prioridades — app atual (ES-01)

A Tabela 3 compara a prioridade do rascunho do ES-01 (Dupla A) com a proposta
deste item. Os requisitos sem mudança aparecem resumidos no fim da tabela.

**Tabela 3 – Prioridades dos requisitos funcionais do app atual**

| Requisito | ES-01 | Proposta AN-06 | Regra | Racional |
|---|---|---|---|---|
| RF-SEG-01 a RF-SEG-10 | Must, Should e Could | **Won't** (fora do escopo) | R1 | Ver racional do módulo Segurança abaixo da tabela. |
| RF-NOT-04 | Must | **Could** | R6 | Ver racional abaixo da tabela. |
| RF-LOC-03 | Must | **Should** | R5 | Ver racional abaixo da tabela. |
| RF-LOC-05 | Could | Could | R6 | Mantido. Repete em parte o RF-LOC-03; a Dupla A deve verificar se os dois podem ser um só requisito (pergunta K3 do VA-02). |
| RF-RAD-01, RF-RAD-02, RF-GUI-01, RF-EVE-01 a RF-EVE-03, RF-NOT-01, RF-NOT-02, RF-LOC-01, RF-LOC-02, RF-LOC-04, RF-RU-01 a RF-RU-03, RF-APP-01, RF-APP-02 | Must | Must | R2 / R4 | Realizam diretamente as funcionalidades descritas no enunciado. Sem eles, o módulo não cumpre o seu objetivo. |
| RF-NOT-03, RF-LOC-06, RF-RU-04 | Should | Should | R5 | Facilitam o uso, mas o módulo continua útil sem eles. |
| RF-RU-05 | Could | Could | R6 | Aviso informativo, de baixo valor e baixa penalidade. |

**Racional das mudanças:**

- **Módulo Segurança (RF-SEG-01 a RF-SEG-10).** O enunciado descreve a
  funcionalidade como "abrir aplicativo para solicitar apoio da central de
  segurança da UFG" (UFG, 2026). O inventário mostra que o módulo leva a um
  aplicativo separado, "Minha UFG – Segurança" (`EL-03`, seção 1.3.1).
  Autenticar, abrir e consultar chamados e acionar o SOS são funções desse
  aplicativo externo, não do Minha UFG.
  - **Proposta:** Won't para os dez requisitos.
  - **Requisito que falta no ES-01:** o Minha UFG deve abrir o aplicativo de
    Segurança ou a versão web dele, e levar à loja de aplicativos quando ele não
    estiver instalado. Esse requisito seria Must, pela regra R2.
  - **Decisão:** a decisão final é da Dupla A e deve ser registrada no `AN-05`.
- **RF-NOT-04.** Voltar à quantidade inicial de notícias ao sair do módulo é um
  comportamento observado de baixo valor para o usuário. Se faltar, a
  penalidade é baixa.
- **RF-LOC-03.** Centralizar o mapa na posição do usuário ao abrir a aba
  facilita o uso, mas a aba "Mapa" cumpre o seu objetivo sem isso: mostrar os
  locais (RF-LOC-02).

## 2.6.4 Prioridades — avaliação de qualidade de UA (ES-02 e ES-04)

O enunciado usa "deve" para todas as funcionalidades da evolução (UFG, 2026). A
Dupla B classificou todos os requisitos e regras como Must, e este item
**confirma** essa classificação pelas regras R2 e R3. A Tabela 4 mostra o
racional e a ordem de dependência, que define a sequência de detalhamento.

**Tabela 4 – Prioridades da avaliação de qualidade de UA**

| Requisito ou regra | Prioridade | Regra | Racional |
|---|---|---|---|
| RF-AVA-01, RF-AVA-02 | Must | R3 | Sem selecionar a UA e ver as questões, não há avaliação. RF-AVA-03 e RF-AVA-04 dependem deles. |
| RF-AVA-03, RF-AVA-04 | Must | R2 | Atribuir notas e registrar a avaliação estão explícitos no enunciado. |
| RF-AVA-05, RF-AVA-06; RN-AVA-01, RN-AVA-02 | Must | R2 | O cálculo da nota da dimensão e da nota final está explícito no enunciado. |
| RF-AVA-07 | Must | R2 | Exibir a nota por UA está explícito. A regra de cálculo da nota da UA continua pendente (`TBD-EXP-11`). |
| RF-AVA-08, RF-AVA-09; RN-AVA-03, RN-AVA-04 | Must | R2 | Exibir as notas por Área de Conhecimento e da UFG está explícito, com as regras de média definidas na fonte. |

> Os requisitos `RF-AVA-01` a `RF-AVA-08` que aparecem no rascunho da Dupla A
> **não foram priorizados**: eles repetem IDs do ES-02 com outro conteúdo (ver
> AN-01, seção 2.1.6). A evolução é especificada só no ES-02.

**Requisitos afetados por conflitos em aberto.** A prioridade não muda
enquanto o conflito está em aberto, mas a decisão pode alterar o enunciado do
requisito. Na classificação dos slides, esses requisitos são **voláteis**
(OLIVEIRA, 2026):

| Conflito | Requisitos afetados |
|---|---|
| CNF-01 | RF-AVA-04 |
| CNF-02 | RF-AVA-07 |
| CNF-04 | RN-AVA-01 a RN-AVA-04 |
| CNF-05 | RF-AVA-08 e RN-AVA-04 |

## 2.6.5 Prioridades — requisitos de qualidade (ES-03)

O ES-03 propôs que os requisitos de origem externa (lei ou norma) ou derivada
de uma necessidade confirmada sejam Must, e os de valor proposto pela equipe
sejam Should. A proposta é a mesma das regras R2 e R5, e este item a
**confirma**.

**Tabela 5 – Prioridades dos requisitos de qualidade**

| Requisitos | Prioridade | Regra | Racional |
|---|---|---|---|
| RNF-GER-01 a RNF-GER-03 | Must | R2 | Vêm da LGPD (BRASIL, 2018). |
| RNF-GER-04 a RNF-GER-06 | Must | R2 | Vêm da LBI (BRASIL, 2015) e da WCAG 2.1. |
| RNF-GER-07 | Must | R4 | Sem ele, usuários atuais perdem o acesso ao aplicativo (`NEC-GER-03`). |
| RNF-AVA-05 | Must | R4 | A evolução não pode quebrar as funcionalidades atuais (`NEC-GER-04`). |
| RNF-AVA-01 a RNF-AVA-04, RNF-AVA-06, RNF-AVA-07 | Should | R5 | Os valores (tempo, disponibilidade, reenvio) foram propostos pela equipe e valem só depois de aceitos pelo docente. |

## 2.6.6 Resumo

**Tabela 6 – Quantidade de requisitos por prioridade proposta**

| Item | Must | Should | Could | Won't | Total |
|---|---|---|---|---|---|
| ES-01 (app atual) | 16 | 4 | 3 | 10 | 33 |
| ES-02 e ES-04 (avaliação de UA) | 13 | 0 | 0 | 0 | 13 |
| ES-03 (qualidade) | 8 | 6 | 0 | 0 | 14 |
| **Total** | **37** | **10** | **3** | **10** | **60** |

## 2.6.7 Validação das prioridades

Estas prioridades são uma **proposta da Dupla C**, feita com as regras da Tabela
2. Elas serão confirmadas de três formas:

1. Na revisão deste item pela Dupla B.
2. Pela dupla autora de cada requisito. Em especial, a **Dupla A** deve aceitar
   ou recusar as três mudanças da Tabela 3; a decisão fica registrada no ES-01.
3. Na consulta ao docente prevista no VA-01 (atividade VAL-05), que responde à
   pendência de prioridade **`TBD-EXP-34`** em nome do cliente.

Quando uma prioridade mudar, a mudança é feita no item do requisito e neste
item, e o motivo fica registrado no racional.

## 2.6.8 Rastreabilidade

- **Depende de:**
  - `ES-01`, `ES-02`, `ES-03` e `ES-04`, de onde vêm os requisitos;
  - `AN-05`, de onde vêm os conflitos que tornam requisitos voláteis;
  - `EL-06`, de onde vêm as necessidades que justificam a regra R4.
- **Usado por:**
  - `ES-01` a `ES-04`, que usam a prioridade de cada requisito;
  - `VA-04`, que detalha primeiro os critérios dos requisitos Must;
  - `ES-08`, que inclui a prioridade na matriz de rastreabilidade.

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
