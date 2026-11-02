# 4.2 Checklist de inspeção

| Identificação | |
|---|---|
| **ID** | `VA-02` |
| **Autoria** | Dupla C: João Victor Borges Tavares (responsável); Tales Ian Costa Barkema |
| **Revisão** | Dupla B: Nicole Cabral Lopes Dantas; Cali Freitas Silva |
| **Versão / data** | 0.1 (rascunho), 2026-11-02 |
| **Técnica / linguagem** | Checklist de inspeção com leitura baseada em perspectiva (OLIVEIRA, 2026), a partir das características de requisitos bem formados da ISO/IEC/IEEE 29148 (ISO/IEC/IEEE, 2018) |
| **Depende de** | `VA-01` |
| **Usado por** | `VA-03` e todos os itens inspecionados (`EL-06`, `ES-01` a `ES-07`) |

**Objetivo.** Dar aos inspetores do VA-03 uma lista de perguntas fechadas para
encontrar defeitos nos requisitos e nos modelos de forma igual para todos os
itens. Cada pergunta tem um ID, diz se é de verificação ou de validação e
indica a severidade padrão do defeito, se a resposta for "Não". Este checklist
substitui o checklist provisório do VA-03 (seção 4.3.2). As perguntas C1 a C10
mantêm os mesmos IDs de lá, para que os registros já feitos continuem válidos.

---

## 4.2.1 Como usar

**Verificação e validação.** A ISO/IEC/IEEE 29148 separa duas perguntas
(ISO/IEC/IEEE, 2018). Os slides da disciplina fazem a mesma separação
(OLIVEIRA, 2026):

- **verificação (Ver):** o requisito está bem escrito? A pergunta é sobre a
  qualidade técnica do documento;
- **validação (Val):** o requisito descreve o software certo para os
  stakeholders?

A coluna "Tipo" das tabelas indica a qual das duas cada pergunta pertence.

**O checklist tem quatro partes**, aplicadas em passadas separadas sobre o
mesmo item:

| Parte | Aplica-se a | Quando |
|---|---|---|
| A — Requisito individual (C1 a C10) | Cada RF, RN, RD, RNF e necessidade | Uma vez por requisito |
| B — Conjunto do item (K1 a K7) | O item inteiro | Uma vez por item |
| C — Modelos e artefatos (M1 a M12) | Casos de uso, diagramas, protótipos e critérios de aceitação | Uma vez por modelo |
| D — Leitura por perspectiva (PU, PP, PT) | O item inteiro | Uma passada por perspectiva |

**Registro.** Responda cada pergunta com:

- **Sim:** sem defeito;
- **Não:** há defeito;
- **N.A.:** a pergunta não se aplica ao item.

Cada "Não" vira uma linha na tabela de defeitos do VA-03, com:

- o ID do defeito (`DEF-nn`);
- o requisito ou modelo afetado;
- o ID da pergunta, por exemplo C3 ou M5;
- a severidade.

**Severidade.** A severidade segue a definição do VA-03:

- **Alta:** o requisito está errado, em conflito ou sem origem;
- **Média:** está incompleto ou ambíguo;
- **Baixa:** o problema é de forma, estilo ou ortografia.

A coluna "Sev." indica a severidade padrão de cada pergunta. O inspetor pode
mudá-la se justificar na descrição do defeito.

**O que não é defeito novo:**

- uma lacuna já registrada como pendência (`TBD-EXP-nn`, EL-05);
- uma ambiguidade da fonte já registrada (`AMB-EXP-nn`, EL-04);
- uma inconsistência já registrada no AN-05 (`INC-nn`).

Esses casos só são defeitos se o item não citar o ID correspondente.

## 4.2.2 Parte A — Requisito individual

A Tabela 1 traz as perguntas aplicadas a cada requisito. Elas seguem as
características de requisito bem formado da ISO/IEC/IEEE 29148
(ISO/IEC/IEEE, 2018) e as propriedades de requisito dos slides: identidade,
prioridade, status e objetividade (OLIVEIRA, 2026).

**Tabela 1 – Perguntas para cada requisito**

| ID | Característica | Pergunta | Tipo | Sev. |
|---|---|---|---|---|
| C1 | Necessário | O requisito tem origem rastreável a uma necessidade do EL-06, a um trecho da fonte (EL-04) ou a uma evidência do app atual (EL-03)? | Val | Alta |
| C2 | Adequado | O requisito diz **o que** o aplicativo faz, sem decidir **como** será implementado (tela, tecnologia, componente)? | Ver | Média |
| C3 | Não ambíguo | O requisito admite uma única leitura, sem termos vagos como "rápido", "fácil", "adequado", "dados básicos" ou "etc."? | Ver | Média |
| C4 | Completo | O requisito tem todos os campos do formato do seu item (ID, enunciado, origem, prioridade, dependências)? A parte que falta está registrada como pendência? | Ver | Média |
| C5 | Singular | O requisito expressa uma única necessidade, sem "e", "ou" e "e/ou" que juntem duas funções? | Ver | Média |
| C6 | Viável | O requisito pode ser atendido pelo aplicativo móvel, dentro do escopo da APS, sem depender de algo fora do sistema que não esteja declarado? | Val | Alta |
| C7 | Verificável | Existe um conjunto finito de passos que prove que o requisito foi atendido? O requisito tem critério de aceitação no VA-04 ou, se for de qualidade, métrica e valor-alvo no ES-03? | Ver | Média |
| C8 | Correto | O requisito representa corretamente o app atual (EL-03) ou o Apêndice A, sem acrescentar comportamento que a fonte não sustenta? | Val | Alta |
| C9 | Conforme | O requisito segue os padrões da equipe: prefixo e numeração do ID, redação, prioridade e vocabulário do glossário (AN-01)? | Ver | Baixa |
| C10 | Consistente | Os nomes, IDs e valores do requisito são os mesmos nos outros itens que o citam, sem contradição? | Ver | Alta |

**Perguntas complementares por tipo de requisito.** Use estas perguntas junto
com a Tabela 1, conforme o tipo do requisito:

| ID | Tipo de requisito | Pergunta | Tipo | Sev. |
|---|---|---|---|---|
| C11 | RF | O requisito descreve uma **função** e o resultado que ela gera? Funções ligadas a qualidade, como "autenticar o usuário", são RF e não RNF (OLIVEIRA, 2026). | Ver | Média |
| C12 | RN | A regra define como um valor é obtido (fórmula, condição, limite) e é citada pelo ID no RF que a aplica? | Ver | Média |
| C13 | RD | O dado tem nome igual ao do modelo conceitual (AN-03), com restrições (faixa, obrigatoriedade, unicidade) explícitas? | Ver | Média |
| C14 | RNF | O requisito está ligado a uma característica e subcaracterística da ISO/IEC 25010:2023 e tem métrica, valor-alvo e condição de medição (rede, aparelho, carga)? | Ver | Média |
| C15 | RNF | O requisito descreve uma **qualidade** e não uma função? | Ver | Média |
| C16 | Necessidade (EL-06) | A necessidade está na linguagem do problema, sem "o aplicativo deve", e tem stakeholder e fonte? | Ver | Baixa |

## 4.2.3 Parte B — Conjunto do item

Os slides avaliam também a qualidade do **conjunto** de requisitos: tamanho,
legibilidade, organização, consistência e completude (OLIVEIRA, 2026). A
Tabela 2 traz essas perguntas. Elas são respondidas uma vez por item.

**Tabela 2 – Perguntas para o item como um todo**

| ID | Aspecto | Pergunta | Tipo | Sev. |
|---|---|---|---|---|
| K1 | Identificação | O item tem o bloco de identificação completo, com autores e revisores, e o revisor é de outra dupla? | Ver | Alta |
| K2 | Completude | O item cobre todo o escopo que lhe cabe? (Ex.: as 8 funcionalidades no ES-01; registrar, calcular e consultar as notas por UA, por área e da UFG no ES-02.) | Val | Alta |
| K3 | Sem redundância | Nenhum requisito do item repete, com outras palavras, um requisito do mesmo item ou de outro? | Ver | Média |
| K4 | Organização | Os requisitos estão em uma ordem com critério declarado (por funcionalidade, por dependência) e fáceis de localizar pelo ID? | Ver | Baixa |
| K5 | Rastreabilidade | O item tem a seção de rastreabilidade, e todo ID que ele cita existe no item de origem? | Ver | Média |
| K6 | Figuras e tabelas | Toda figura e toda tabela têm número, legenda e fonte e são citadas no texto antes de aparecer? | Ver | Baixa |
| K7 | Referências | Toda ideia de terceiros está citada no texto e aparece em "Referências deste item"? | Ver | Média |

## 4.2.4 Parte C — Modelos e artefatos

O critério 3.2 de avaliação da APS cobra o uso correto das linguagens de
modelagem: sintaxe, semântica e pragmática. A Tabela 3 traz perguntas para cada
tipo de modelo do documento. A notação de referência é a UML 2.5.1
(OMG, 2017).

**Tabela 3 – Perguntas para modelos e artefatos**

| ID | Artefato | Pergunta | Tipo | Sev. |
|---|---|---|---|---|
| M1 | Caso de uso (texto) | O caso de uso tem ator, objetivo, pré-condições, fluxo principal, fluxos alternativos e de exceção e pós-condições? | Ver | Média |
| M2 | Caso de uso (texto) | Cada passo é uma interação entre o ator e o aplicativo, sem detalhes de interface ou de implementação? | Ver | Baixa |
| M3 | Caso de uso (texto) | Cada caso de uso cita os RF que realiza, e todo RF do item é realizado por algum caso de uso? | Ver | Média |
| M4 | Diagrama de casos de uso | Atores ficam fora da fronteira do sistema, e as relações `include` e `extend` estão no sentido correto? | Ver | Média |
| M5 | Diagrama de classes | As multiplicidades estão nas duas pontas de cada associação, e as classes não têm operações nem tipos de implementação (modelo conceitual)? | Ver | Média |
| M6 | Diagrama de classes | Os nomes das classes são os mesmos do glossário (AN-01) e dos RD? | Ver | Média |
| M7 | Diagrama de sequência | As mensagens seguem a ordem do fluxo do caso de uso correspondente, e os fragmentos (`loop`, `alt`, `opt`) têm condição de guarda? | Ver | Média |
| M8 | Diagrama de estados | Todo estado é alcançável, toda transição tem evento ou condição, e há estado inicial? | Ver | Média |
| M9 | Protótipo de tela | Cada tela tem ID, cita o caso de uso e o passo que representa e mostra todos os dados que os RF pedem? | Ver | Média |
| M10 | Protótipo de tela | A tela permite ao usuário cumprir o objetivo do caso de uso sem passos que o caso de uso não prevê? | Val | Média |
| M11 | Critério de aceitação | O critério está no formato Dado / Quando / Então, e o "Então" é observável e tem valor esperado? | Ver | Média |
| M12 | Critério de aceitação | O critério testa o requisito a que está ligado, e não outro? | Ver | Alta |

## 4.2.5 Parte D — Leitura por perspectiva

Na leitura baseada em perspectiva, cada passada lê o item com os olhos de um
tipo de stakeholder. Assim, defeitos que um olhar não percebe aparecem em outro
(OLIVEIRA, 2026). O inspetor faz três passadas rápidas sobre cada item. A
Tabela 4 traz as perguntas de cada perspectiva.

**Tabela 4 – Perguntas por perspectiva**

| ID | Perspectiva | Pergunta | Tipo | Sev. |
|---|---|---|---|---|
| PU1 | Usuário (comunidade acadêmica) | Com estes requisitos, eu consigo fazer o que preciso no aplicativo, sem passos sem sentido? | Val | Alta |
| PU2 | Usuário | Os termos usados são os que a comunidade acadêmica usa, ou estão explicados no glossário? | Val | Baixa |
| PU3 | Usuário | Meus dados e minha opinião estão protegidos como eu esperaria? (Ver CNF-01 e CNF-02 do AN-05.) | Val | Alta |
| PP1 | Projetista (quem vai construir) | Tenho informação suficiente para construir a função sem adivinhar regras, valores ou dados? | Ver | Média |
| PP2 | Projetista | Está claro o que é do aplicativo e o que é de outro elemento do sistema (painel web, servidor)? | Ver | Média |
| PP3 | Projetista | Algum requisito exige algo impossível ou contraditório com outro? | Ver | Alta |
| PT1 | Testador | Consigo escrever um teste para cada requisito, com entrada e resultado esperado? | Ver | Média |
| PT2 | Testador | Os valores-limite estão definidos (nota 0 e 5, UA sem avaliações, sem conexão)? Se não estão, a pendência está citada? | Ver | Média |
| PT3 | Testador | As condições de medição dos requisitos de qualidade são reproduzíveis? | Ver | Média |

## 4.2.6 Aplicação na inspeção cruzada

A Tabela 5 mostra que partes do checklist se aplicam a cada item inspecionado.
Ela segue o escopo da inspeção cruzada definido no VA-01 e no VA-03.

**Tabela 5 – Partes do checklist por item inspecionado**

| Item | Inspetor (VA-03) | Parte A | Parte B | Parte C | Parte D |
|---|---|---|---|---|---|
| ES-01 Requisitos funcionais — app atual | Cali Freitas Silva | C1–C11 | K1–K7 | — | PU, PP, PT |
| ES-02 Requisitos funcionais — avaliação de UA | Gustavo Bittencourt Ribeiro | C1–C11 | K1–K7 | — | PU, PP, PT |
| ES-03 Requisitos de qualidade | Inspetor a definir no VA-03 | C1–C10, C14, C15 | K1–K7 | — | PT |
| ES-04 Regras de negócio | Gustavo Bittencourt Ribeiro | C1–C10, C12 | K1–K7 | — | PP, PT |
| ES-05 Casos de uso — app atual | Cali Freitas Silva | — | K1–K7 | M1–M4, M7, M8 | PU, PT |
| ES-06 Casos de uso — avaliação de UA | Gustavo Bittencourt Ribeiro | — | K1–K7 | M1–M4, M7, M8 | PU, PT |
| ES-07 Protótipos — avaliação de UA | Gustavo Bittencourt Ribeiro | — | K1–K7 | M9, M10 | PU |
| AN-03 Modelo conceitual (quando inspecionado) | Inspetor a definir no VA-03 | C13 | K1–K7 | M5, M6 | PP |
| VA-04 Critérios de aceitação (análise de cobertura, VAL-04) | Dupla C | — | K5 | M11, M12 | PT |

> O ES-03 não aparece no escopo da inspeção cruzada do VA-03, porque não é de
> nenhuma das duas frentes. Sugestão: o ES-03 é inspecionado pela Dupla B, que é
> a revisora da Dupla C, e a decisão é registrada no VA-03.

## 4.2.7 Rastreabilidade

- **Depende de:** VA-01, que define que a inspeção usa este checklist como
  critério de entrada.
- **Usado por:** VA-03, que registra os defeitos encontrados com o ID da
  pergunta que os revelou.
- **Origem das perguntas:**

  | Perguntas | Origem |
  |---|---|
  | C1 a C10 | Características de requisito bem formado (ISO/IEC/IEEE, 2018) |
  | C11 a C15 | Classificação RD, RF e RNF e a ISO/IEC 25010:2023 (OLIVEIRA, 2026) |
  | K1 a K7 | Qualidade do conjunto de requisitos (OLIVEIRA, 2026) e critérios 1.1, 4.2, 5.1 e 8.5 do Apêndice B da APS |
  | M1 a M12 | UML 2.5.1 (OMG, 2017) e critério 3.2 do Apêndice B |
  | PU, PP, PT | Leitura baseada em perspectiva (OLIVEIRA, 2026) |

**Referências deste item:**

- ISO/IEC/IEEE. *ISO/IEC/IEEE 29148:2018: Systems and software engineering —
  Life cycle processes — Requirements engineering.* 2. ed. Geneva: ISO, 2018.
- OLIVEIRA, J. L. *Requisitos de Software: conceitos fundamentais; técnicas e
  ferramentas; SQuaRE, família ISO 25000.* Slides de aula da disciplina
  INF0339 – Engenharia de Requisitos. Goiânia: INF/UFG, 2026.
- OMG. *Unified Modeling Language (UML)*, version 2.5.1. Needham: Object
  Management Group, 2017.
- UNIVERSIDADE FEDERAL DE GOIÁS (UFG). Instituto de Informática. *Definição de
  Atividades Práticas Supervisionadas (APS) da disciplina: INF0339 – Engenharia
  de Requisitos, semestre 2026/2.* Goiânia: UFG, 2026. Apêndice B: Procedimentos
  e critérios para avaliação do trabalho.
