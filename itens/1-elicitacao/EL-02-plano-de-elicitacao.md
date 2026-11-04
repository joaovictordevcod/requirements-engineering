# 1.2 Plano de elicitação

| Identificação | |
|---|---|
| **ID** | `EL-02` |
| **Autoria** | Dupla C: João Victor Borges Tavares (responsável); Hendrew |
| **Revisão** | Dupla B: Nicole Cabral Lopes Dantas; Cali Freitas Silva |
| **Versão / data** | 0.1 (rascunho), 2026-10-25 |
| **Técnica / linguagem** | Plano de elicitação baseado em fontes de requisitos (IEEE, 2024; OLIVEIRA, 2026) |
| **Depende de** | `EL-01` (identificação de stakeholders) |
| **Usado por** | `EL-03`, `EL-04`, `EL-05`, `EL-06`, `VA-05` |

**Objetivo.** Este plano define de onde vêm os requisitos do aplicativo *Minha
UFG*, que técnica de elicitação será usada em cada fonte e por quê, quem aplica
cada técnica e quando. Ele padroniza a coleta das duas frentes do trabalho, o
app atual e a avaliação de qualidade das Unidades Acadêmicas (UA). Com isso, as
necessidades levantadas podem ser comparadas e consolidadas no `EL-06`.

---

## 1.2.1 Escopo do sistema e do software

O *Minha UFG* é um **sistema de informação (SI)**, e não apenas um aplicativo. Ele
é formado pelos seguintes elementos:

- **o aplicativo móvel**;
- **o painel de controle web**;
- **as unidades administrativas** que publicam conteúdo: comunicação, RU, Rádio
  UFG e central de segurança;
- **as UAs** avaliadas;
- **os dados** de eventos, notícias, cardápios, locais e avaliações;
- **os procedimentos** que mantêm esse conteúdo atualizado.

O **software** especificado neste trabalho é **somente o aplicativo móvel**,
conforme o enunciado da APS (Apêndice A). A elicitação, porém, olha para o SI
inteiro. Muitos requisitos nascem fora do app e precisam ser **alocados**: uma
parte fica com o app e outra com os demais elementos.

| Elemento do SI | Situação neste trabalho |
|---|---|
| Aplicativo móvel: 8 funcionalidades atuais | **Escopo.** Requisitos modelados a partir do que o app já faz |
| Aplicativo móvel: avaliação de qualidade de UA | **Escopo.** Requisitos da evolução |
| Painel de controle web | **Não escopo.** Tratado apenas como interface. Exemplo: o cadastro de dimensões, elementos e questões é feito fora do app |
| Unidades administrativas e UAs | **Não escopo.** São fontes de requisitos e de dados |
| Apps externos (Rádio, segurança, lojas de aplicativos) | **Não escopo.** O app apenas os abre |

## 1.2.2 Fontes de requisitos e técnicas

As fontes seguem as categorias dos slides da disciplina (OLIVEIRA, 2026):

- missão e objetivos;
- ambiente organizacional;
- legislação;
- sistemas similares;
- conhecimento de domínio;
- usuários.

Para cada fonte foi escolhida a técnica mais adequada, e as técnicas se
complementam. O que uma técnica não alcança (por exemplo, o conhecimento tácito
em um questionário) é coberto por outra (a entrevista).

A Tabela 1 resume as fontes, as técnicas e o item que registra o resultado de
cada uma.

**Tabela 1 – Fontes de requisitos, técnicas e itens que registram os resultados**

| ID | Fonte | Exemplos concretos | Técnica | Frente | Resultado em |
|---|---|---|---|---|---|
| F-01 | Sistema existente | App *Minha UFG* (Android e iOS), versão em uso | Inspeção do app e observação de uso | App atual | `EL-03` |
| F-02 | Sistemas similares | Apps de outras universidades federais; plataformas de avaliação de instituições | Benchmark | Ambas | `EL-03`, `EL-04` |
| F-03 | Missão e objetivos | Missão e PDI da UFG; descrição do app nas lojas | Aprendizagem clássica (análise de documentos) | Ambas | `EL-04` |
| F-04 | Ambiente organizacional | Regras do RU, da central de segurança e da Rádio UFG; lista de UAs e regionais | Análise de documentos | App atual | `EL-04` |
| F-05 | Conhecimento de domínio | Tabela de Áreas do Conhecimento do CNPq; instrumentos de avaliação do INEP/SINAES; relatórios da CPA da UFG | Revisão de literatura | Evolução | `EL-04` |
| F-06 | Legislação | LGPD (Lei 13.709/2018); orientações da ANPD; Lei do SINAES (Lei 10.861/2004) | Aprendizagem clássica | Ambas | `EL-04` |
| F-07 | Usuários: comunidade acadêmica | Discentes, docentes e técnicos-administrativos | Questionário | Evolução | `EL-05` |
| F-08 | Usuários e especialistas | 4 a 6 pessoas: discentes, docentes e, se possível, um membro de CPA ou de direção de UA | Entrevista semiestruturada | Evolução | `EL-05` |

> A lista de stakeholders que originam as fontes F-07 e F-08 é definida no
> `EL-01`. Este plano usa as categorias provisórias acima até o `EL-01` ser
> aprovado.

## 1.2.3 Justificativa das técnicas

**Inspeção do app e observação de uso (F-01).** O enunciado pede os requisitos
da versão **atual** do app. A fonte mais confiável sobre o que o app faz é o
próprio app. A inspeção registra telas, dados exibidos, navegação e integrações.

A observação de 2 ou 3 colegas usando o app em tarefas comuns, como "ver o
cardápio de hoje" ou "achar um evento desta semana", traz o lado da
**etnografia**. Ela mostra como o app é usado de fato e revela requisitos de
qualidade percebidos, como tempo de resposta e dificuldades de navegação.

**Limitação:** a presença do observador influencia o comportamento observado.
Por isso, as tarefas são curtas e o observador não interfere.

**Benchmark (F-02).** Comparar com sistemas similares ajuda a identificar boas
práticas e alternativas de solução. Na evolução, isso é especialmente útil para
decidir como apresentar notas e médias. Os sistemas comparados servem de
**referência**, não de requisito. Toda ideia aproveitada precisa ser confirmada
pelas fontes de usuários.

**Análise de documentos e revisão de literatura (F-03 a F-06).** Esses documentos
contêm regras já estabelecidas:

- a classificação das áreas do conhecimento (CNPq);
- as dimensões usadas na avaliação institucional (INEP/SINAES);
- as obrigações de proteção de dados (LGPD).

Reaproveitar esse conhecimento evita inventar regras que já existem e garante
**conformidade**.

**Limitação:** documentos podem estar desatualizados. Por isso, todos são
registrados com a data de acesso.

**Questionário (F-07).** Ele alcança muitos membros da comunidade e permite
tratar as respostas estatisticamente. É útil para medir a **importância** das
dimensões de qualidade e as preferências sobre a avaliação, como anonimato e
frequência.

**Limitação** apontada nos slides: as respostas podem ter baixa confiabilidade,
por má interpretação ou desinteresse, e o questionário não capta conhecimento
tácito. Para reduzir isso, o questionário passa por um **pré-teste** com 2
pessoas antes da aplicação e é **complementado pelas entrevistas**.

**Entrevista semiestruturada (F-08).** Com um roteiro flexível e poucos
participantes, a entrevista permite confirmar na hora se a pergunta e a resposta
foram entendidas. Ela também revela necessidades tácitas: por exemplo, o receio
de identificação ao avaliar um docente.

**Limitação:** depende do entrevistador e sofre influência de fatores sociais.
Para reduzir isso, a entrevista sempre tem dois membros da equipe: um conduz e
outro anota.

## 1.2.4 Expectativas e prioridades por fonte

A Tabela 2 registra o que se espera obter de cada fonte e a prioridade de cada
fonte na consolidação das necessidades (`EL-06`).

**Tabela 2 – Expectativas e prioridade das fontes**

| Fonte | O que se espera obter | Prioridade |
|---|---|---|
| F-01 | Funcionalidades, dados exibidos, fluxos e integrações do app atual | Obrigatória: é a base da frente "app atual" |
| F-07, F-08 | Necessidades da comunidade sobre a avaliação de UA: o que avaliar, como, com que frequência e com quais garantias | Obrigatória: é a base da frente "evolução" |
| F-05, F-06 | Regras de domínio e restrições legais | Obrigatória: restringem a solução |
| F-03, F-04 | Objetivos institucionais e regras das unidades | Desejável |
| F-02 | Alternativas de solução e boas práticas | Opcional: apoia decisões, mas não origina requisitos sozinha |

Quando duas fontes entrarem em **conflito**, o caso vai para o `AN-05`, com a
solução negociada e o racional da decisão. Por exemplo: os usuários querem
anonimato total, mas é preciso evitar avaliações repetidas da mesma pessoa.

## 1.2.5 Roteiros

### a) Inspeção do app atual (F-01, `EL-03`)

Para cada uma das 8 funcionalidades, quem inspeciona registra o seguinte em
`elicitacao/app-atual/<funcionalidade>/notas.md`, com prints:

1. Como se chega à funcionalidade a partir da tela inicial.
2. Dados exibidos (campos) e de onde parecem vir.
3. Ações possíveis: filtros, busca, compartilhar, abrir outro app.
4. Integrações externas: outro app, navegador, mapa, loja, telefone.
5. Comportamento sem conexão e mensagens de erro.
6. Qualidade percebida: tempo de carregamento, tamanho de fonte, leitor de tela,
   modo escuro.
7. Versão do app, dispositivo e sistema operacional usados.

**Observação de uso:** a pessoa observada recebe 3 tarefas curtas. O observador
anota o caminho percorrido, as hesitações e os comentários, sem ajudar.

### b) Benchmark (F-02)

Comparar o *Minha UFG* com pelo menos 2 sistemas similares, nos critérios abaixo:

- funcionalidades oferecidas;
- como as notas e as médias são apresentadas;
- como o anonimato é tratado;
- acessibilidade.

O resultado é uma tabela comparativa com a data de acesso de cada sistema.

### c) Análise de documentos (F-03 a F-06, `EL-04`)

Para cada documento, registrar:

- a referência completa (ABNT) e a data de acesso;
- o trecho relevante;
- a necessidade ou regra que ele origina;
- a frente afetada: app atual ou evolução.

Documentos mínimos:

- Tabela de Áreas do Conhecimento do CNPq;
- instrumento de avaliação institucional do INEP;
- Lei 13.709/2018 (LGPD);
- lista oficial de UAs e regionais da UFG.

### d) Questionário (F-07, `EL-05`)

Feito no Google Forms, com respostas **anônimas** e sem coleta de e-mail. O
tempo estimado de resposta é de 5 a 7 minutos.

| Bloco | Perguntas | Tipo |
|---|---|---|
| Consentimento | Aceite do termo (seção f) | Obrigatória, sim/não |
| Perfil | Vínculo com a UFG (discente, docente, técnico); regional; área do conhecimento do curso ou lotação | Múltipla escolha |
| Uso do app | Usa o *Minha UFG*? Com que frequência? Quais funcionalidades usa? | Múltipla escolha |
| Importância das dimensões | Grau de importância (1 a 5) de cada dimensão: infraestrutura física, corpo docente, recursos pedagógicos, condições ambientais | Escala |
| Elementos | Que outros elementos deveriam ser avaliados em cada dimensão? | Aberta, opcional |
| Regras da avaliação | Avaliaria a sua UA pelo app? A avaliação deve ser anônima? Com que frequência deveria ser possível avaliar? | Múltipla escolha |
| Resultados | Quais resultados gostaria de ver: nota da UA, média por área, média da UFG, evolução no tempo, comparação entre UAs? | Caixas de seleção |
| Comentários | Sugestões livres | Aberta, opcional |

**Pré-teste:** 2 pessoas fora da equipe respondem e comentam as perguntas
ambíguas antes da divulgação.

**Meta:** pelo menos 30 respostas, de mais de um tipo de vínculo. Abaixo de 15
respostas em 5 dias, o risco R-05 é acionado.

### e) Entrevista semiestruturada (F-08, `EL-05`)

**Duração:** 15 a 20 minutos, presencial ou online, com uma pessoa conduzindo e
outra anotando.

1. Apresentação do objetivo e leitura do termo de consentimento.
2. Perfil do entrevistado: vínculo e UA.
3. Como você avaliaria hoje a qualidade da sua UA? O que pesa mais nessa
   opinião?
4. As 4 dimensões do enunciado cobrem o que importa? Falta alguma?
5. O que faria você confiar, ou não, numa nota publicada pelo app?
6. Você teria receio de avaliar? Em que situação? (Explorar anonimato e
   represálias.)
7. Quem deveria poder ver as notas? Como você gostaria de vê-las?
8. Pergunta de fechamento: há algo que não perguntamos e que você acha
   importante?

As notas são registradas em `elicitacao/entrevistas/`, identificando o
entrevistado só por código (`P01`, `P02`…).

### f) Termo de consentimento

Texto curto, apresentado antes do questionário e no início das entrevistas.
Ele informa:

- o objetivo **acadêmico** (disciplina INF0339, UFG);
- que a participação é **voluntária** e pode ser interrompida a qualquer
  momento;
- que **nenhum dado pessoal identificável** é coletado ou publicado;
- que as respostas são usadas apenas de forma consolidada no trabalho.

## 1.2.6 Cronograma e responsáveis

Esta é uma proposta, a ajustar quando o prazo de entrega for confirmado no
SIGAA. A Tabela 3 apresenta as atividades.

**Tabela 3 – Cronograma de elicitação**

| Atividade | Responsável | Início | Fim |
|---|---|---|---|
| Aprovar este plano (revisão pela Dupla B) | Dupla C | 26/10 | 28/10 |
| Inspeção do app e observação de uso | Dupla A | 28/10 | 04/11 |
| Benchmark | Dupla A (app atual) e Dupla B (evolução) | 28/10 | 04/11 |
| Análise de documentos | Dupla B | 28/10 | 04/11 |
| Questionário: montagem e pré-teste | Dupla B | 28/10 | 30/10 |
| Questionário: divulgação e coleta | Dupla B, com divulgação de todos | 31/10 | 07/11 |
| Entrevistas | Dupla B, com apoio da Dupla C para anotar | 01/11 | 07/11 |
| Consolidação das necessidades (`EL-06`) | Dupla C | 05/11 | 10/11 |

## 1.2.7 Registro e tratamento dos dados

- **Evidências.** Ficam em `elicitacao/`, organizadas por técnica. Prints do
  app, notas de inspeção e notas de entrevista são versionados.
- **Respostas brutas do questionário.** Ficam somente no Google Forms da equipe.
  No repositório entra apenas a **versão consolidada e anonimizada**.
- **Necessidades.** Cada necessidade levantada recebe um ID (`NEC-xx`) no
  `EL-06`, com a **fonte** (F-xx) e a técnica que a originou. Essa é a origem
  dos requisitos **primitivos** e a ponta inicial da rastreabilidade
  (`ES-08`).

## 1.2.8 Cuidados e limitações

- **Conhecimento tácito e ambiguidades:**
  - as perguntas abertas e as entrevistas existem para captar o que as
    pessoas não dizem espontaneamente;
  - termos ambíguos encontrados durante a coleta vão para o glossário
    (`AN-01`).
- **Viés da equipe:** os membros da equipe também são usuários do app. As
  opiniões da equipe **não** são registradas como necessidades de usuário, a
  menos que venham de uma técnica aplicada a terceiros.
- **Representatividade:** o questionário não é uma amostra estatística da UFG. Os
  resultados indicam tendências e são apresentados como tal.
- **Simulação:** se alguma técnica não puder ser aplicada a pessoas reais, o
  documento vai declarar isso explicitamente.

**Rastreabilidade.** Este plano depende do `EL-01`, que define os stakeholders.
Ele é usado por:

- `EL-03`, `EL-04` e `EL-05`, que executam as técnicas;
- `EL-06`, que consolida as necessidades com a fonte de cada uma;
- `VA-05`, que reaproveita os participantes na validação por protótipo.

**Referências deste item:**

- IEEE, 2024 (SWEBOK v4, cap. 1).
- OLIVEIRA, 2026 (slides de *Técnicas e Ferramentas* da disciplina).
- BRASIL, 2018 (LGPD).
- BRASIL, 2004 (SINAES).
- CNPq (Tabela de Áreas do Conhecimento).
