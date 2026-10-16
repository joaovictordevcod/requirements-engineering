# Itens de informação — catálogo e matriz autor × revisor

Este arquivo é a **fonte única** de quem escreve e de quem revisa cada parte do
documento. Ele atende à **regra 5** do enunciado (todos são autores e
revisores, e ninguém revisa o próprio item) e ao critério individual *"Autoria
e revisão"*.

> **Status desta matriz:** a divisão em **3 duplas** foi decidida pela equipe.
> Falta preencher a composição das duplas e confirmar o sentido do anel de
> revisão na reunião de abertura. Registre a aprovação na ata.

## 1. Duplas

| Dupla | Frente de trabalho | Integrantes |
|-------|--------------------|-------------|
| **A** | **App atual**: as 8 funcionalidades existentes (Segurança, Rádio, Guia Estudantil, Eventos, Notícias, RU, Locais, Apps UFG) | _a definir_ · _a definir_ |
| **B** | **Nova evolução**: avaliação de qualidade das UAs (dimensões, elementos, questões, cálculo das notas) | _a definir_ · _a definir_ |
| **C** | **Integração e validação**: técnicas de elicitação, vocabulário único, requisitos de qualidade do app inteiro, rastreabilidade e validação | _a definir_ · _a definir_ |

### Anel de revisão

```
        revisa              revisa              revisa
Dupla C ───────▶ Dupla A ───────▶ Dupla B ───────▶ Dupla C
```

| Quem escreve | Quem revisa | Por que esse par funciona |
|--------------|-------------|---------------------------|
| Dupla A (app atual) | **Dupla C** | A integração confere se o app atual usa o mesmo vocabulário e segue os mesmos padrões do resto do documento. |
| Dupla B (evolução) | **Dupla A** | Quem conhece o app atual verifica se a evolução se encaixa nele sem conflito. |
| Dupla C (integração) | **Dupla B** | Quem modelou o domínio mais complexo confere se os requisitos de qualidade, a rastreabilidade e os checklists cobrem a evolução. |

> ⚠️ O documento de diretrizes da equipe traz os dois sentidos de anel em
> respostas diferentes. O sentido acima (C→A→B→C) é o que aparece na maior parte
> do documento. **Confirmar na reunião de abertura.**

### Responsável principal de cada item

Os dois membros da dupla são **coautores** de todos os itens da dupla. Mesmo
assim, cada item tem um **responsável principal**, que conduz a escrita e
responde pelo prazo. Os itens de cada dupla devem ser alternados entre os dois
membros. Isso serve de evidência de contribuição individual (Apêndice B) e evita
que uma pessoa carregue a dupla.

No documento final, o cabeçalho do item lista o responsável principal primeiro,
depois o coautor, e em seguida os revisores (os dois membros da dupla revisora).

## 2. Ajustes feitos em relação às diretrizes da equipe

O documento de diretrizes foi seguido, com quatro ajustes para não perder
pontos nos critérios de avaliação:

1. **Requisitos não funcionais com um único dono (Dupla C).** Desempenho,
   acessibilidade, privacidade e compatibilidade valem para o app inteiro. Se
   fossem escritos pelas Duplas A e B em separado, sairiam duplicados ou
   conflitantes (critério 4.2). As Duplas A e B mandam as necessidades de
   qualidade de cada frente para a C.
2. **Glossário e modelo conceitual únicos.** Um glossário (AN-01, Dupla C) e um
   modelo conceitual integrado (AN-03, Dupla B), em vez de modelos de domínio
   separados por frente. A Dupla A fornece os conceitos do app atual e revisa o
   AN-03.
3. **Elicitação com dados reais, ou declaradamente simulada.** O questionário e
   as entrevistas (EL-05) devem ser aplicados de verdade. Se alguma parte for
   simulada, o documento precisa dizer isso explicitamente (critério 1.2, Ética).
4. **A Dupla C também modela.** Além de validação e formatação, ela é autora de
   itens técnicos (glossário, requisitos de qualidade, conflitos, priorização).
   A avaliação compara a qualidade técnica, e todas as duplas precisam mostrar
   isso.

## 3. Catálogo

**Legenda:**

- **Status:** `A fazer` → `Em autoria` → `Em revisão` → `Aprovado` → `No documento`.
- **Depende de:** itens que precisam existir, ao menos em rascunho, antes deste.
  É a base da análise de impacto (critério 5.1).
- **Resp.:** responsável principal dentro da dupla autora (preencher com a
  sigla).

### 3.1 Elicitação

| ID    | Item de informação | Conteúdo esperado | Autoria | Resp. | Revisão | Depende de | Status | Issue |
|-------|--------------------|-------------------|:-------:|-------|:-------:|------------|--------|-------|
| EL-01 | Identificação de stakeholders | Ver nota EL-01 abaixo. | A | | C | — | A fazer | |
| EL-02 | Plano de elicitação | Técnicas escolhidas e justificadas (SWEBOK cap. 1), fontes, cronograma e roteiros. Padrão comum às duas frentes. | C | | B | EL-01 | A fazer | |
| EL-03 | Inventário do app atual | Ver nota EL-03 abaixo. | A | | C | EL-02 | A fazer | |
| EL-04 | Análise de documentos | Ver nota EL-04 abaixo. | B | | A | EL-02 | A fazer | |
| EL-05 | Questionário e entrevistas | Instrumento aplicado à comunidade sobre a avaliação de UA (as 4 dimensões e os elementos), com consolidação anonimizada das respostas. | B | | A | EL-01, EL-02 | A fazer | |
| EL-06 | Registro de necessidades | Consolidação das necessidades brutas (`NEC-xx`) das duas frentes, com a origem de cada uma (stakeholder e técnica). É a entrada da análise. | C | | B | EL-03, EL-04, EL-05 | A fazer | |

**Notas da Elicitação:**

- **EL-01.**
  - Stakeholders do app inteiro: discentes, docentes, técnicos, visitantes,
    direção de UA, Secom, central de segurança, RU, Rádio, CPA etc.
  - Para cada um: interesse, influência e papel na evolução.
- **EL-03.**
  - Engenharia reversa das 8 funcionalidades, com capturas de tela e fluxos
    observados.
  - Versão do app e dispositivo usados.
  - Integrações externas observadas.
- **EL-04.** Documentos analisados:
  - tabela de áreas do conhecimento do CNPq;
  - instrumentos de avaliação institucional (SINAES/CPA);
  - lista de UAs da UFG;
  - termos de uso e política de privacidade do app.

### 3.2 Análise

| ID    | Item de informação | Conteúdo esperado | Autoria | Resp. | Revisão | Depende de | Status | Issue |
|-------|--------------------|-------------------|:-------:|-------|:-------:|------------|--------|-------|
| AN-01 | Glossário | Termos do domínio com definição única, para o app atual e a evolução. Ex.: UA, regional, dimensão de qualidade, elemento educacional, questão, avaliação, nota, área do conhecimento. | C | | B | EL-03, EL-04 | A fazer | |
| AN-02 | Modelo de objetivos | Objetivos dos stakeholders e como o app contribui para eles, em iStar 2.0 ou árvore de objetivos. Inclui por que avaliar UAs. | A | | C | EL-01, EL-06 | A fazer | |
| AN-03 | Modelo conceitual do domínio (integrado) | Ver nota AN-03 abaixo. | B | | A | AN-01 | A fazer | |
| AN-04 | Diagrama de casos de uso | Atores e casos de uso do app inteiro, com a versão atual e a evolução em pacotes separados. A Dupla B fornece os casos de uso da evolução. | A | | C | EL-03, EL-06 | A fazer | |
| AN-05 | Conflitos e consistência | Conflitos entre necessidades e entre o app atual e a evolução, com a resolução adotada. Ex.: anonimato × evitar avaliações duplicadas. | C | | B | EL-06, AN-03, AN-04 | A fazer | |
| AN-06 | Priorização | Classificação MoSCoW (ou outra técnica justificada) das necessidades e dos requisitos, com o critério e os participantes. | C | | B | EL-06, AN-05 | A fazer | |

**Nota AN-03.** Um único diagrama de classes conceitual, com dicionário de
dados, para o app inteiro.

- Conceitos da evolução: Unidade Acadêmica, Área do Conhecimento, Dimensão,
  Elemento Educacional, Questão, Avaliação, Resposta, Usuário.
- Conceitos do app atual, fornecidos pela Dupla A: Regional, Evento, Notícia,
  Cardápio, Local, App.

### 3.3 Especificação

| ID    | Item de informação | Conteúdo esperado | Autoria | Resp. | Revisão | Depende de | Status | Issue |
|-------|--------------------|-------------------|:-------:|-------|:-------:|------------|--------|-------|
| ES-01 | Requisitos funcionais — app atual | `RF-01` a `RF-49` das 8 categorias, no padrão da ISO/IEC/IEEE 29148, com prioridade e origem. | A | | C | AN-04, AN-06 | A fazer | |
| ES-02 | Requisitos funcionais — avaliação de UA | `RF-50` a `RF-99`: registrar avaliação e consultar as notas por UA, por área do CNPq e da UFG. | B | | A | AN-03, AN-04, AN-06 | A fazer | |
| ES-03 | Requisitos de qualidade (app inteiro) | Ver nota ES-03 abaixo. | C | | B | EL-06, AN-06 | A fazer | |
| ES-04 | Regras de negócio | Ver nota ES-04 abaixo. | B | | A | AN-03, AN-05 | A fazer | |
| ES-05 | Casos de uso e comportamento — app atual | Especificação detalhada dos casos de uso prioritários do app atual (pré-condições, fluxos, pós-condições), com diagramas de atividade ou sequência quando o fluxo justificar. | A | | C | AN-04, ES-01 | A fazer | |
| ES-06 | Casos de uso e comportamento — avaliação de UA | Especificação detalhada dos casos de uso da evolução, com diagramas de sequência (registrar avaliação, consultar notas) e de estados da Avaliação. | B | | A | AN-04, ES-02, ES-04 | A fazer | |
| ES-07 | Protótipos de interface — avaliação de UA | Telas da evolução (avaliar UA, ver notas por UA, por área e da UFG) em baixa ou média fidelidade, ligadas aos casos de uso do ES-06. | B | | A | ES-02, ES-06 | A fazer | |
| ES-08 | Matriz de rastreabilidade | `NEC` → `RF`/`RNF`/`RN` → `UC` → modelos → critérios de aceitação, com links para os itens. | C | | B | ES-01 a ES-07, VA-04 | A fazer | |

**Notas da Especificação:**

- **ES-03.** `RNF-xx` organizados pelas características da ISO/IEC 25010, cada
  um com **métrica verificável**. Características esperadas:
  - usabilidade e acessibilidade;
  - desempenho;
  - disponibilidade;
  - segurança e privacidade (LGPD);
  - compatibilidade;
  - manutenibilidade.

  As Duplas A e B enviam as necessidades de qualidade da sua frente.
- **ES-04.** `RN-xx`, com destaque para o cálculo das médias (elemento →
  dimensão → UA → área do CNPq → UFG). Também define:
  - arredondamento;
  - mínimo de respostas para exibir uma nota;
  - elegibilidade de quem pode avaliar.

### 3.4 Validação

| ID    | Item de informação | Conteúdo esperado | Autoria | Resp. | Revisão | Depende de | Status | Issue |
|-------|--------------------|-------------------|:-------:|-------|:-------:|------------|--------|-------|
| VA-01 | Plano de validação | Técnicas (inspeção, prototipação, critérios de aceitação), participantes, critérios de saída. | C | | B | — | A fazer | |
| VA-02 | Checklist de inspeção | Checklist baseado nas características de requisitos bem formados da ISO/IEC/IEEE 29148. Ver nota VA-02 abaixo. | C | | B | VA-01 | A fazer | |
| VA-03 | Relatório de inspeção | Execução do VA-02 em validação cruzada: a Dupla A inspeciona a frente B e a Dupla B inspeciona a frente A. Registra os defeitos (`DEF-xx`): item, tipo, severidade, quem encontrou, correção e status. | A + B | | C | VA-02, seção 3 | A fazer | |
| VA-04 | Critérios de aceitação | Critérios verificáveis (Dado/Quando/Então) para os requisitos prioritários das duas frentes. | B | | A | ES-01, ES-02, ES-04 | A fazer | |
| VA-05 | Validação por protótipo | Sessões com usuários usando o ES-07: roteiro, participantes anonimizados, achados e mudanças geradas. Feita por quem **não** construiu o protótipo. | A | | C | ES-07 | A fazer | |

**Nota VA-02.** Características verificadas pelo checklist:

- necessário;
- adequado;
- não ambíguo;
- completo;
- singular;
- viável;
- verificável;
- correto;
- conforme.

### 3.5 Apêndices do documento

| ID    | Apêndice | Responsável |
|-------|----------|-------------|
| AP-01 | Atas de reuniões | Guardião(ã) de atas, registros e riscos (papel rotativo, ver o plano de trabalho) |
| AP-02 | Registro de comunicações | Todos registram; o(a) guardião(ã) consolida |
| AP-03 | Matriz de autoria e revisão final | Gestor(a) de rastreabilidade e formatação |

## 4. Verificação

### Carga por dupla

| Dupla | Itens de autoria | Itens que revisa |
|-------|:----------------:|:----------------:|
| A | 8 (EL-01, EL-03, AN-02, AN-04, ES-01, ES-05, VA-03\*, VA-05) | 8 (os itens só da B) |
| B | 9 (EL-04, EL-05, AN-03, ES-02, ES-04, ES-06, ES-07, VA-03\*, VA-04) | 9 (todos os da C) |
| C | 9 (EL-02, EL-06, AN-01, AN-05, AN-06, ES-03, ES-08, VA-01, VA-02) | 8 (os da A, incluindo o VA-03) |

\* O VA-03 tem autoria conjunta das Duplas A e B.

### Restrições

Elas precisam continuar valendo depois de qualquer troca.

- [x] Todas as duplas são autoras e revisoras, logo todos os membros também.
- [x] Nenhum item é revisado por uma dupla que seja autora dele.
- [ ] Dentro de cada dupla, os dois membros são responsáveis principais por
  quantidades parecidas de itens (diferença máxima de 1). Conferir depois de
  preencher a coluna *Resp.*
