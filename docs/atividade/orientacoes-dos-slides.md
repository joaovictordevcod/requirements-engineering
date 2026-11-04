# O que os slides da disciplina pedem

Este é um resumo do que os slides do Prof. Juliano Lopes de Oliveira (INF/UFG,
2026/2) ensinam e de como isso se aplica ao nosso trabalho. Slides usados:

- *Requisitos de Software — Conceitos Fundamentais* (baseado no SWEBOK v4,
  cap. 1);
- *Requisitos de Software — Técnicas e Ferramentas*;
- *Requisitos de Software — SQuaRE, Família ISO 25000*.

O professor vai avaliar o trabalho com o vocabulário e as classificações
destes slides. Onde eles divergem do que tínhamos padronizado, **siga os
slides**. Os ajustes propostos para a equipe estão na seção 6.

> Os slides são material de terceiros. Se uma ideia deles for usada no
> documento, cite os slides como referência (ver
> [referencias.md](../../referencias/referencias.md)).

## 1. Conceitos que o professor cobra

### 1.1 Três tipos de requisito do produto

| Tipo | O que é | Exemplo no Minha UFG |
|------|---------|----------------------|
| **RD — Requisito de Dados** | Um dado que o software trata: dados, relações e restrições sobre eles | "Uma avaliação tem nota inteira de 0 a 5 para cada questão" |
| **RF — Requisito Funcional** | Uma função que o software executa e o resultado que ela gera | "Calcular a nota da dimensão como média dos elementos" |
| **RNF — Requisito Não Funcional** | Uma qualidade do software, não ligada a uma função específica | "A consulta ao cardápio deve responder em até 3 s em 4G" |

**Regra importante dos slides:** toda função é RF, mesmo que esteja ligada a
uma qualidade. Por exemplo, "autenticar o usuário" é **RF**, e não RNF de
segurança.

### 1.2 Propriedades obrigatórias de todo requisito

| Propriedade | Como aparece nos slides |
|-------------|-------------------------|
| **Identidade** | Um ID descritivo com prefixo de tipo. Exemplos: `RD_DigitCPF`, `RF_ValidDigVerifCPF`, `RNF_ReqDesemp` |
| **Prioridade** | **obrigatório / desejável / opcional**, que equivale a **deve / deveria / poderia** |
| **Status** | identificado → definido (especificado) → validado → alocado → futuro → atendido (implementado) → implantado → obsoleto (retirado) |
| **Objetividade** | O requisito precisa ser **quantitativo** e **verificável**, avaliado por um conjunto finito de passos. Exemplos: "rápido" não serve; "dados básicos do cliente" não serve; "nome, CPF e endereço" serve |

### 1.3 Classificação de requisitos

Do slide *Classificar Requisitos*:

| Dimensão | Valores |
|----------|---------|
| Escopo | Sistema de Informação (SI) ou Software (Sw) |
| Natureza | Produto ou processo |
| Origem | **Primitivo**, com fonte identificada, ou **derivado** de outro requisito |
| Tipo | RD, RF, RNF |
| Alocação | **Encapsulada** em um elemento, ou **transversal** (propriedade emergente) |
| Status | Ver tabela acima |
| Modificabilidade | Regra de domínio (negócio), estável, semiestável, volátil |

### 1.4 Sistema de Informação (SI) × Software (Sw)

O *Minha UFG* é um SI: o app, o painel web, as unidades administrativas, a
central de segurança, o RU, a Rádio, os dados e os procedimentos. O app é
**um elemento** dele. Os slides pedem para:

- definir o **escopo do Sw dentro do SI**;
- **alocar** os requisitos do SI ao app;
- registrar o **"não escopo"**: o que fica com outros elementos. Por exemplo,
  quem cadastra dimensões e questões é o painel web, não o app.

### 1.5 O processo é iterativo

Os slides deixam claro que o processo de engenharia de requisitos **não é
sequencial**. As atividades são eliciar, analisar, especificar, validar e
gerenciar, e voltam umas às outras. O documento deve mostrar isso. Por
exemplo, a validação gera defeitos que voltam para a especificação, e esse
ciclo fica registrado no VA-03.

## 2. Técnicas citadas, por atividade

| Atividade | Técnicas nos slides |
|-----------|---------------------|
| **Eliciação** | aprendizagem clássica, etnografia, entrevista, questionário, reuniões (JAD, brainstorming, grupo focal, roteiro semiestruturado, workshop), prototipagem, revisão de literatura, benchmark |
| **Análise** | modelagem conceitual de estrutura (classes, MER com dicionário de dados, leiautes de IHC); modelagem de comportamento (atividade, estados, sequência, caso de uso, BPMN); análise de cenários (caso de uso textual, storyboard); histórias de usuário; mapa de navegação; prototipagem |
| **Especificação** | padrões de documentação (ISO/IEC/IEEE 29148), templates, notações, vocabulário restrito |
| **V&V** | inspeção com checklist, leitura baseada em perspectiva, walkthrough, prototipação, análise de modelos, análise de testes de aceitação |
| **Gestão** | rastreabilidade (matriz bidirecional, vertical e horizontal), negociação (WinWin, 5 porquês), priorização (obrigatório/desejável/opcional, bubble sort, 100 pontos, AHP), controle de mudanças |

**Ferramentas citadas:**

- UML e MER para modelos;
- **Figma** para IHC;
- checklists para V&V;
- templates e edição colaborativa para documentação.

O professor usa **PlantUML** no próprio slide do mapa mental, o que confirma a
nossa escolha.

## 3. Qualidade: ISO/IEC 25010:2023

Os requisitos não funcionais seguem as **9 características** da versão 2023 da
norma. Use os nomes dos slides:

1. Adequação funcional
2. Eficiência de desempenho
3. Compatibilidade (interoperabilidade)
4. Usabilidade
5. Confiabilidade (inclui tolerância a falhas, disponibilidade e
   recuperabilidade)
6. Segurança (*security*, contra ataques e acesso indevido)
7. Manutenibilidade
8. Flexibilidade (antiga portabilidade)
9. Proteção (*safety*, evitar danos a vida, saúde, propriedade e ambiente)

**Outros pontos dos slides de qualidade:**

- **Modelo hierárquico (ISO 25020):** característica → subcaracterística →
  atributo → medida. Todo RNF deve chegar a algo **mensurável**.
- **Qualidade em uso:** efetividade, produtividade, segurança e satisfação. É o
  que o usuário percebe, e é especificada por meio da qualidade interna e da
  externa.
- **Conflitos entre atributos:** atributos de qualidade se conflitam (por
  exemplo, segurança × facilidade de uso). Sempre há uma solução de compromisso,
  que deve ir para o AN-05.
- **Legislação como fonte:** leis e normas são fontes de requisitos de
  qualidade. Para nós, valem a LGPD e a ANPD como agência reguladora.

## 4. Os itens do João Victor (JVBT)

### EL-02 — Plano de elicitação ([#2](https://github.com/joaovictordevcod/requirements-engineering/issues/2))

Siga a estrutura do slide *Eliciar Requisitos de Sistema*.

**1. Escopo do SI.** Propósito, limites e objetivos do *Minha UFG*.

**2. Partes interessadas.** Use os papéis do slide *Papéis típicos na ER*:

| Papel | No Minha UFG |
|-------|--------------|
| Usuários | discentes, docentes, técnicos, visitantes |
| Clientes | UFG, Secom e direção das UAs |
| Especialistas no domínio | CPA, gestores de avaliação institucional |
| Agências reguladoras | ANPD (dados pessoais) |
| Equipe de sustentação | quem mantém o app e o painel web |

**3. Fontes de requisitos e técnica para cada fonte.** É o coração do item:

| Fonte (slide) | Fonte concreta | Técnica |
|---------------|----------------|---------|
| Missão e objetivos | Missão da UFG, objetivo do app | Revisão de documentos |
| Ambiente organizacional | Regras das unidades (RU, segurança, Rádio) | Análise de documentos, entrevista |
| Legislação | LGPD, SINAES (Lei 10.861/2004) | Aprendizagem clássica |
| Sistemas similares | O próprio app atual; apps de outras universidades; sites de avaliação | **Benchmark** e inspeção do app (etnografia leve) |
| Conhecimento de domínio | Tabela de áreas do CNPq, instrumentos do INEP | Revisão de literatura |
| Usuários | Comunidade acadêmica | **Questionário** (alcance) + **entrevista semiestruturada** (conhecimento tácito) |

**4. Justificativa de cada técnica,** com as vantagens e desvantagens dadas nos
slides. Exemplo: o questionário alcança muitos participantes, mas tem baixa
confiabilidade, por isso é complementado com entrevistas.

**5. Expectativas e prioridades de cada fonte,** como o slide pede.

**6. Roteiros:**

- o que observar no app (EL-03);
- as perguntas do questionário (EL-05);
- o roteiro de entrevista;
- o termo de consentimento.

**7. Cronograma e responsáveis.**

**8. Cuidados:**

- conhecimento tácito e ambiguidades;
- a observação também interfere no que é observado;
- protótipos de alta fidelidade criam a expectativa de "produto pronto".

### AN-01 — Glossário ([#7](https://github.com/joaovictordevcod/requirements-engineering/issues/7))

- É o **"vocabulário restrito"** dos slides de especificação: cada termo tem
  uma definição única, e o documento inteiro usa só esse termo.
- Separe os termos do **domínio do problema** (UA, dimensão de qualidade,
  elemento educacional, área do conhecimento, regional) dos termos do
  **domínio da solução** (avaliação registrada, nota calculada, usuário
  autenticado).
- Inclua os termos de engenharia de requisitos que o documento usa: RD, RF,
  RNF, requisito primitivo e derivado, propriedade emergente, SI e Sw, baseline.
- Sempre que possível, indique a fonte da definição: o enunciado, o CNPq, o
  INEP ou a ISO 25010.

### AN-06 — Priorização ([#12](https://github.com/joaovictordevcod/requirements-engineering/issues/12))

- Use a escala dos slides: **obrigatório (deve) / desejável (deveria) /
  opcional (poderia)**, e não MoSCoW.
- Aplique e **justifique** uma técnica dos slides:
  - **100 pontos:** cada stakeholder distribui 100 pontos entre os requisitos;
  - **bubble sort:** comparação par a par até ordenar;
  - **AHP:** prioridade relativa entre cada par.

  Para 6 pessoas e dezenas de requisitos, a de **100 pontos** é a mais viável.
  Use o AHP só para desempatar os requisitos da evolução, se quiser.
- Use os **fatores** que o slide define e registre-os por requisito:
  - valor agregado;
  - penalidade por não ter o requisito;
  - custo e tempo.
- Registre o **racional** de cada decisão. O slide de negociação diz que o
  registro é fundamental para a rastreabilidade das decisões.

### ES-08 — Matriz de rastreabilidade ([#20](https://github.com/joaovictordevcod/requirements-engineering/issues/20))

O slide define a matriz como **bidirecional**, com dois eixos:

- **Vertical:** fonte → requisito → alocação. Por exemplo:
  - stakeholder, documento ou técnica (`NEC`) → RD/RF/RNF → caso de uso,
    modelo e critério de aceitação;
  - requisito → elemento do SI (app ou painel web).
- **Horizontal:** requisito → requisito, ou seja, as dependências. Por exemplo,
  `RF_CalcNotaUA` depende de `RF_CalcNotaDimensao`, que depende de
  `RD_NotaQuestao`.

O objetivo declarado é a **análise de impacto**: a partir de um requisito, saber
o que muda se ele mudar. Inclua também o **status** de cada requisito e a
classificação **primitivo/derivado**.

### VA-02 — Checklist de inspeção ([#22](https://github.com/joaovictordevcod/requirements-engineering/issues/22))

- O slide diz que o checklist "reflete erros mais comuns e defeitos mais
  graves". Monte as perguntas a partir de:
  - as propriedades do requisito (seção 1.2): identidade, prioridade, status,
    objetividade, verificabilidade;
  - a qualidade do **conjunto**: tamanho, legibilidade, organização,
    consistência, completude;
  - as características de requisito bem formado da ISO/IEC/IEEE 29148.
- Use **leitura baseada em perspectiva**, que é uma técnica citada no slide:
  um checklist diferente para cada ponto de vista.

  | Perspectiva | Pergunta central |
  |-------------|------------------|
  | Usuário | O requisito atende a uma necessidade real? Está compreensível? |
  | Projetista | Dá para construir a partir do requisito? Está alocado ao app? |
  | Testador | Dá para escrever um teste de aceitação? É quantitativo? |

- Separe as perguntas de **verificação**, que avaliam a qualidade técnica do
  documento, das de **validação**, que perguntam se descrevemos o software
  certo. O slide faz essa distinção explicitamente.

### Itens em que você é coautor (responsável: Hendrew)

- **VA-01 — Plano de validação:** inspeção formal com papéis (autor, moderador,
  leitor, escritor, inspetor), estudo prévio e reunião, conforme o slide.
  Inclui também o walkthrough, a prototipação e a análise de testes de
  aceitação. Define o critério de saída: o requisito aprovado entra na
  **baseline** e passa a ter controle de mudanças.
- **ES-03 — Requisitos de qualidade:** organizados pelas 9 características da
  ISO 25010:2023 (seção 3), cada um quantitativo e com condição de teste.
  Indique os que são **propriedade emergente**, como a disponibilidade do app
  inteiro.
- **AN-05 — Conflitos:** WinWin para negociar e 5 porquês para a causa raiz,
  sempre com o racional registrado.
- **EL-06 — Necessidades:** cada necessidade com a sua **fonte** e a técnica
  usada (requisito primitivo).

## 5. Formato de requisito alinhado aos slides

| Campo | Exemplo |
|-------|---------|
| ID | `RF_CalcNotaDimensao` |
| Enunciado | O app deve calcular a nota de uma dimensão de qualidade como a média aritmética das notas dos seus elementos educacionais, com uma casa decimal. |
| Tipo | RF |
| Prioridade | Obrigatório (deve) |
| Status | Definido |
| Origem | Primitivo: enunciado da APS, Apêndice A |
| Alocação | Encapsulada: app (ou serviço do SI, se o cálculo for no servidor) |
| Modificabilidade | Regra de domínio |
| Depende de (horizontal) | `RF_CalcNotaElemento`, `RD_NotaQuestao` |
| Critério de aceitação | Dado o elemento A com média 4,0 e o B com 3,0, quando a dimensão for calculada, então a nota é 3,5. |

## 6. Ajustes propostos para a equipe

Estes ajustes afetam todas as duplas. Precisam ser aprovados em reunião e, depois
disso, aplicados no [guia de estilo](../documento/guia-de-estilo.md) e no
[modelo de item](../documento/modelo-item-de-informacao.md).

1. **IDs no estilo do professor:** `RF_NomeDescritivo` em vez de `RF-12`. Os IDs
   dos itens de informação (EL-01, AN-03…) continuam como estão.
2. **Novo tipo RD (requisito de dados).** As restrições sobre dados que
   chamávamos de "regra de negócio" passam a ser RD. A modificabilidade "regra
   de domínio" vira um atributo do requisito.
3. **Prioridade obrigatório / desejável / opcional** no lugar de MoSCoW.
4. **Atributos de classificação** (seção 1.3) e **status** em todo requisito.
5. **Nomes da ISO 25010:2023** nos requisitos de qualidade (as 9
   características da seção 3).
6. **Escopo SI × Sw:** acrescentar ao EL-01 ou ao EL-02 uma visão do SI, com o
   que é do app e o que fica com o painel web, as unidades e as pessoas
   ("não escopo").
