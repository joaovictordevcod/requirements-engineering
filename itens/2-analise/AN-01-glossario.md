# 2.1 Glossário

| Identificação | |
|---|---|
| **ID** | `AN-01` |
| **Autoria** | Dupla C: João Victor Borges Tavares (responsável); Tales Ian Costa Barkema |
| **Revisão** | Dupla B: Nicole Cabral Lopes Dantas; Cali Freitas Silva |
| **Versão / data** | 0.2 (ajustes da revisão), 2026-11-04 |
| **Técnica / linguagem** | Glossário de vocabulário restrito: um termo preferido e uma definição para cada conceito (OLIVEIRA, 2026a; ISO/IEC/IEEE, 2018) |
| **Depende de** | `EL-03`, `EL-04`, `EL-06`, `AN-03` |
| **Usado por** | Todos os itens do documento, em especial `AN-03`, `ES-01` a `ES-07` e a inspeção `VA-03` (pergunta C9 do `VA-02`) |

**Objetivo.** Fixar um único nome e uma única definição para cada conceito
usado no documento, para que as três duplas escrevam sobre a mesma coisa com as
mesmas palavras. O glossário é o "vocabulário restrito" que os slides da
disciplina apresentam como técnica de especificação (OLIVEIRA, 2026a). Ele
também é a referência da pergunta C9 do checklist de inspeção (`VA-02`), que
verifica se cada requisito usa o vocabulário da equipe.

---

## 2.1.1 Critério

**Fonte única do nome e do significado.** Cada termo tem uma definição e uma
fonte. A ordem de preferência das fontes é:

1. o enunciado da APS (UFG, 2026);
2. o que foi observado no aplicativo (`EL-03`);
3. documentos externos (CNPq, legislação);
4. os slides da disciplina (OLIVEIRA, 2026a), para os termos de engenharia de
   requisitos.

**Termos do domínio já definidos em outros itens.** Para os termos que já são
classes no modelo conceitual (`AN-03`), a definição é a mesma do dicionário de
dados, e o glossário só aponta para ela. Assim não há duas definições
competindo.

**O que não é decidido aqui.** O glossário não resolve pendências nem
ambiguidades da fonte. Quando o significado de um termo depende de algo em
aberto, a entrada cita o ID da pendência (`TBD-EXP-nn`, EL-05) ou da
ambiguidade (`AMB-EXP-nn`, EL-04).

**Coluna "Evitar".** Lista formas que apareceram nos rascunhos e não devem ser
usadas no documento final. As divergências entre itens estão reunidas na seção
2.1.6.

Os termos estão em ordem alfabética dentro de cada grupo:

| Grupo | Conteúdo | Tabela |
|---|---|---|
| A | Domínio: a UFG e a comunidade acadêmica | Tabela 1 |
| B | O aplicativo e as funcionalidades atuais | Tabela 2 |
| C | Avaliação de qualidade de UA | Tabela 3 |
| D | Termos de engenharia de requisitos usados no documento | Tabela 4 |

## 2.1.2 Grupo A — UFG e comunidade acadêmica

**Tabela 1 – Termos do domínio institucional**

| Termo | Definição | Fonte | Evitar |
|---|---|---|---|
| Área de Conhecimento | Classe da classificação do CNPq usada para agrupar as notas das UAs. Ex.: Ciências Exatas e da Terra, Ciências Humanas. Definida no `AN-03` (`RD-AVA-02`). O nível da classificação usado está em aberto (`TBD-EXP-13`). | UFG, 2026; CNPq, 2025 | "área do conhecimento" no texto corrido, "área CNPq" |
| CNPq | Conselho Nacional de Desenvolvimento Científico e Tecnológico, que publica a Tabela de Áreas do Conhecimento. | CNPq, 2025 | — |
| Comunidade acadêmica | Conjunto de pessoas a quem o enunciado atribui a avaliação das UAs. Quem compõe a comunidade (discentes, docentes, técnicos-administrativos, egressos) está em aberto (`AMB-EXP-01`, `TBD-EXP-01`). | UFG, 2026 | "comunidade UFG", "alunos e professores" |
| Discente | Estudante matriculado em curso da UFG. Stakeholder `STK-01` no `EL-01`. | EL-01 | "aluno" |
| Docente | Professor da UFG. Stakeholder `STK-03` no `EL-01`. | EL-01 | "professor" (exceto em citação) |
| Regional | Cada unidade geográfica da UFG cujos eventos e notícias o aplicativo apresenta. No aplicativo observado: Goiânia, Catalão, Goiás e Jataí. | UFG, 2026; EL-03 | "campus", "campi", "câmpus" como sinônimo de Regional |
| Técnico-administrativo | Servidor da UFG que não é docente. Stakeholder `STK-04` no `EL-01`. | EL-01 | "servidor" (quando o papel importa), "técnico" |
| UFG | Universidade Federal de Goiás, organização dona do sistema Minha UFG. | UFG, 2026 | — |
| Unidade Acadêmica (UA) | Unidade da UFG cuja qualidade é avaliada. Ex.: o Instituto de Informática (INF). Definida no `AN-03` (`RD-AVA-01`). A lista de UAs está em aberto (`TBD-EXP-14`). Plural: UAs. | UFG, 2026 | "unidade", "instituto", "faculdade" como termo genérico |
| Visitante | Pessoa sem vínculo com a UFG que usa as funcionalidades públicas do aplicativo. Stakeholder `STK-02` no `EL-01`. | EL-01 | "usuário externo" |

## 2.1.3 Grupo B — Aplicativo e funcionalidades atuais

**Tabela 2 – Termos do aplicativo e das funcionalidades atuais**

| Termo | Definição | Fonte | Evitar |
|---|---|---|---|
| Aba | Divisão de uma tela do aplicativo que o usuário alterna por toque. Ex.: as abas "Lista" e "Mapa" do módulo Locais. | EL-03 | "guia" |
| Aplicação web (painel de controle) | Componente do sistema Minha UFG, fora do aplicativo móvel, usado para administrar conteúdo. Fora do escopo do trabalho. | UFG, 2026 | "site do Minha UFG", "backend" |
| Aplicativo | O aplicativo móvel Minha UFG, único software especificado neste trabalho. É o sujeito dos requisitos: "O aplicativo deve…". | UFG, 2026 | "o sistema" como sujeito de requisito; "app" antes da primeira menção completa |
| Aplicativo externo | Aplicativo ou página que o Minha UFG apenas abre, sem controlar o seu comportamento. Ex.: o aplicativo de Segurança, a página do player da Rádio, o leitor de PDF, a loja de aplicativos e os aplicativos de mapa. Seus requisitos ficam fora do escopo. | UFG, 2026; EL-03 | Descrever funções do aplicativo externo como requisitos do Minha UFG |
| Apps UFG | Módulo que lista outros aplicativos ligados à UFG e leva o usuário à página de cada um na loja de aplicativos. Na versão observada: RU UFG, Inventário Patrimonial e CS – Candidato. | UFG, 2026; EL-03 | "catálogo de apps" |
| Card | Bloco visual selecionável que resume um conteúdo (evento, notícia, local, refeição, aplicativo ou UA) e leva ao detalhe ao ser tocado. | EL-03 | "cartão", "tile" |
| Cardápio | Lista dos itens de uma Refeição para um dia da semana, exibida no módulo RU. Pode sofrer alterações. | UFG, 2026; EL-03 | "menu" |
| Central de Segurança | Unidade da UFG que recebe os pedidos de apoio em segurança. Stakeholder `STK-05`. No aplicativo de Segurança ela aparece como "Central de Operações da UFG". | UFG, 2026; EL-03 | "Central de Operações" fora de citação da tela |
| Chamado | Pedido de atendimento registrado no aplicativo de Segurança, que é um aplicativo externo. Pode ser identificado ou anônimo e tem os estados Aberto, Em andamento e Finalizado. | EL-03 | Tratar como funcionalidade do Minha UFG (ver 2.1.6, item 4) |
| Evento | Atividade realizada na UFG, apresentada no módulo Eventos com data, regional, sinopse e duração, e detalhada em página do site da UFG. | UFG, 2026; EL-03 | "atividade", "evento acadêmico" |
| Guia Estudantil | Documento institucional em PDF com orientações e oportunidades para discentes, aberto pelo módulo de mesmo nome. | UFG, 2026; EL-03 | "Guia do Estudante" (exceto como título do PDF) |
| Local | Unidade ou ponto de interesse da UFG apresentado no módulo Locais, com nome, foto e posição no mapa. | UFG, 2026; EL-03 | "localidade", "ponto" sozinho |
| Loja de aplicativos | Loja oficial do sistema operacional do aparelho: Google Play no Android, App Store no iOS. | EL-03 | "Play Store" para os dois sistemas |
| Módulo | Cada uma das funcionalidades da tela inicial do aplicativo: Segurança, Rádio, Guia Estudantil, Eventos, Notícias, RU, Locais, Apps UFG e, na evolução, Avaliação de Qualidade de UA. | UFG, 2026; EL-03 | "categoria de funcionalidade", "seção" |
| Notícia | Texto informativo publicado por uma Regional, apresentado em card no módulo Notícias e aberto no site correspondente. | UFG, 2026; EL-03 | "post", "matéria" |
| Programação | Lista de programas da Rádio UFG para um dia da semana, com descrição e horários de início e fim. | UFG, 2026; EL-03 | "grade" |
| Refeição | Tipo de refeição servida pelo Restaurante Universitário: Café da Manhã, Almoço ou Jantar. | EL-03 | "Janta" |
| Restaurante Universitário (RU) | Restaurante da UFG cujo cardápio semanal é apresentado no módulo RU. | UFG, 2026 | "bandejão" (exceto em citação) |
| SOS | Botão do aplicativo de Segurança para emergências, acionado ao pressioná-lo por três segundos. | EL-03 | "botão de pânico" |
| Usuário | Pessoa que usa o aplicativo. Quando o papel importa, usar o stakeholder específico (discente, docente, técnico-administrativo, visitante) ou Usuário Avaliador. | UFG, 2026 | "user", "cliente" |

## 2.1.4 Grupo C — Avaliação de qualidade de UA

Os termos marcados com o ID `RD-AVA-nn` são classes do modelo conceitual. A
definição completa e os atributos estão no dicionário de dados do `AN-03`.

**Tabela 3 – Termos da avaliação de qualidade de UA**

| Termo | Definição | Fonte | Evitar |
|---|---|---|---|
| Avaliação | Registro da opinião de um Usuário Avaliador sobre a qualidade de uma UA (`RD-AVA-06`). Tem os estados "Em preenchimento" e "Registrada" (`ES-06`). | UFG, 2026; AN-03 | "review", "rating", "feedback", "pesquisa" |
| Dimensão de Qualidade | Categoria de Elementos Educacionais correlatos (`RD-AVA-03`). Exemplos da fonte: infraestrutura física, corpo docente, recursos pedagógicos e condições ambientais. | UFG, 2026; AN-03 | A sigla "DQ"; "categoria", "eixo", "critério" |
| Elemento Educacional | Aspecto avaliável que caracteriza uma Dimensão de Qualidade (`RD-AVA-04`). Ex.: salas de aula, laboratórios, limpeza. | UFG, 2026; AN-03 | "item", "critério", "elemento" sozinho quando houver ambiguidade |
| Escala de notas | Faixa de valores que o Usuário Avaliador pode atribuir a uma Questão. O enunciado usa de 0 (péssima) a 5 (excelente) como exemplo; a escala definitiva está em aberto (`TBD-EXP-08`). | UFG, 2026 | "pontuação de 0 a 5" como regra fechada |
| Nota Consolidada | Nota exibida pelo aplicativo, calculada a partir de várias Avaliações (`RD-AVA-09`). Pode ser a Nota da UA, a Nota média da Área de Conhecimento ou a Nota da UFG. | AN-03 | "nota geral" sem dizer qual |
| Nota da Dimensão | Média das pontuações dos Elementos Educacionais de uma Dimensão de Qualidade em uma Avaliação (`RN-AVA-01`). | UFG, 2026; ES-04 | "nota da DQ" |
| Nota da Questão | Valor que o Usuário Avaliador atribui a uma Questão em uma Avaliação (`RD-AVA-07`). | UFG, 2026; AN-03 | "resposta", "voto" |
| Nota da UA | Nota Consolidada de uma UA, exibida ao usuário. É a média aritmética simples das Notas finais das Avaliações registradas para a UA, conforme o e-mail do docente de 03/11/2026 (OLIVEIRA, 2026b), que respondeu à `TBD-EXP-11`. | UFG, 2026; OLIVEIRA, 2026b | "nota média da UA"; "nota de avaliação" para a nota de uma única Avaliação |
| Nota da UFG | Média das notas de todas as UAs (`RN-AVA-03`). | UFG, 2026; ES-04 | "nota geral", "média geral" |
| Nota final da Avaliação | Média das Notas das Dimensões de uma Avaliação (`RN-AVA-02`). | UFG, 2026; ES-04 | "nota total" |
| Nota média da Área de Conhecimento | Média dos valores ligados às UAs de uma Área de Conhecimento (`RN-AVA-04`). A fonte e o docente não definem se esses valores são as notas das UAs ou as Notas finais das Avaliações (`TBD-EXP-12`), nem a Área de cada UA (`TBD-EXP-13`). | UFG, 2026; ES-04 | "nota da área CNPq" |
| Questão | Pergunta predefinida sobre um Elemento Educacional, à qual o Usuário Avaliador atribui uma nota (`RD-AVA-05`). | UFG, 2026; AN-03 | "pergunta" no texto de requisitos, "quesito" |
| Usuário Avaliador | Pessoa que registra uma Avaliação (`RD-AVA-08`). Quem pode avaliar está em aberto (`TBD-EXP-01`, `AMB-EXP-01`). | AN-03 | "avaliador" sozinho, "respondente" |

## 2.1.5 Grupo D — Engenharia de requisitos

**Tabela 4 – Termos de engenharia de requisitos usados no documento**

| Termo | Definição | Fonte | Evitar |
|---|---|---|---|
| Ambiguidade (`AMB-EXP-nn`) | Trecho da fonte que admite mais de uma leitura. Registrada no `EL-04`. | EL-04 | Usar como sinônimo de pendência |
| Critério de aceitação (`CA-...`) | Situação de teste no formato Dado / Quando / Então que mostra que um requisito foi atendido. Registrado no `VA-04`. | ISO/IEC/IEEE, 2018; VA-04 | "caso de teste" |
| Conflito (`CNF-nn`) | Duas necessidades que não podem ser atendidas por completo ao mesmo tempo. Registrado no `AN-05`. | IEEE, 2024; AN-05 | "inconsistência" |
| Defeito (`DEF-nn`) | Problema encontrado em um requisito ou modelo durante a inspeção. Registrado no `VA-03`. | VA-03 | "erro", "bug" |
| Escopo e não escopo | O que é alocado ao aplicativo (escopo) e o que fica com outros elementos do sistema de informação (não escopo). | OLIVEIRA, 2026a | — |
| Inconsistência (`INC-nn`) | O mesmo elemento descrito de formas diferentes em dois itens do documento. Registrada no `AN-05`. | AN-05 | "conflito" |
| Inspeção | Revisão por pares com checklist, feita por inspetores que não são autores do item. Ver `VA-01`, `VA-02` e `VA-03`. | OLIVEIRA, 2026a | "correção", "conferência" |
| Item de informação | Cada parte do documento com ID próprio (EL, AN, ES, VA), autores e revisores. | UFG, 2026 | "capítulo", "seção" como sinônimo |
| Necessidade (`NEC-...`) | O que um stakeholder precisa obter do aplicativo, na linguagem do problema. Registrada no `EL-06`. | ISO/IEC/IEEE, 2018; EL-06 | "requisito" |
| Pendência (`TBD-EXP-nn`) | Assunto que a fonte não define e que a especificação precisa. Registrada no `EL-05`. | EL-05 | "dúvida" |
| Propriedade emergente | Requisito que não pode ser alocado a um único componente, porque depende da interação entre eles. Ex.: disponibilidade do aplicativo inteiro. | OLIVEIRA, 2026a | — |
| Rastreabilidade | Ligação documentada entre necessidades, requisitos, modelos e critérios de aceitação, nos dois sentidos. Consolidada no `ES-08`. | OLIVEIRA, 2026a | — |
| Regra de negócio (`RN-...`) | Definição de como um valor é obtido no domínio. Ex.: o cálculo das notas. É aplicada por um requisito funcional. | ES-04 | "regra" sozinho quando houver ambiguidade |
| Requisito de dados (`RD-...`) | Dado que o software trata, com suas relações e restrições. | OLIVEIRA, 2026a; AN-03 | — |
| Requisito funcional (`RF-...`) | Função que o aplicativo executa e o resultado que ela gera. Toda função é RF, mesmo ligada a uma qualidade (por exemplo, autenticar o usuário). | OLIVEIRA, 2026a | Classificar funções como RNF |
| Requisito não funcional (`RNF-...`) | Qualidade que o aplicativo deve apresentar, ligada a uma característica da ISO/IEC 25010:2023. Também chamado requisito de qualidade. | OLIVEIRA, 2026a; ES-03 | "requisito técnico" |
| Requisito primitivo e derivado | Primitivo: tem fonte identificada. Derivado: decorre de outro requisito ou de um trecho da fonte por dedução, sem acréscimo de conteúdo. | OLIVEIRA, 2026a; ES-02 | — |
| Sistema de informação (SI) | O Minha UFG como um todo: aplicativo, aplicação web, unidades administrativas, dados e procedimentos. O aplicativo é um elemento do SI. | UFG, 2026; OLIVEIRA, 2026a | "sistema" como sinônimo de aplicativo |
| Stakeholder (parte interessada) | Pessoa ou organização com interesse no aplicativo ou influência sobre ele. Registrado no `EL-01` (`STK-nn`). Na primeira menção, usar "stakeholder (parte interessada)". | IEEE, 2024; EL-01 | "interessado", "ator" (ator é termo de caso de uso) |
| Verificação e validação | Verificação: o requisito está bem escrito? Validação: o requisito descreve o software certo para os stakeholders? | OLIVEIRA, 2026a; ISO/IEC/IEEE, 2018 | Usar os dois como sinônimos |

## 2.1.6 Divergências de vocabulário encontradas nos rascunhos

A Tabela 5 lista os pontos em que os itens já escritos usam termos diferentes
para o mesmo conceito, ou o mesmo termo para conceitos diferentes. Cada linha
indica o termo que o glossário adota e o item que precisa de ajuste. Os casos
1, 2 e 4 também devem entrar no `AN-05` como inconsistências (INC).

**Tabela 5 – Divergências de vocabulário entre itens**

| # | Divergência | Onde aparece | Termo adotado | Ajuste |
|---|---|---|---|---|
| 1 | Sujeito dos requisitos: "O sistema deve…" × "O aplicativo deve…" | ES-01 e ES-02 usam "O sistema"; ES-03 e o guia de estilo usam "O aplicativo" (já registrado como `INC-04`) | **Aplicativo.** "Sistema" é o SI inteiro, e os requisitos são alocados ao aplicativo | ES-01 e ES-02: trocar o sujeito |
| 2 | A sigla "DQ" para Dimensão de Qualidade | Requisitos da avaliação no rascunho da Dupla A | **Dimensão de Qualidade**, sem sigla | Rascunho da Dupla A |
| 3 | "Janta" × "Jantar" | ES-01 (`RF-RU-01`) × EL-03 | **Jantar** | ES-01 |
| 4 | Funções do aplicativo de Segurança descritas como requisitos do Minha UFG | ES-01 (`RF-SEG-01` a `RF-SEG-10`) | **Chamado** e **SOS** são termos do aplicativo externo de Segurança, como o docente confirmou (OLIVEIRA, 2026b) | ES-01: tratar os RF-SEG como funções do aplicativo externo (ver nota abaixo) |
| 5 | "campus" (sem acento), "câmpus" e "regional" | EL-03 e ES-01 | **Regional**, como no enunciado | EL-03 e ES-01 |
| 6 | "área do conhecimento" × "Área de Conhecimento" | Tabela do CNPq × AN-03, ES-02 e ES-04 | **Área de Conhecimento** como nome do conceito; "Tabela de Áreas do Conhecimento" só como título do documento do CNPq | Textos que usam a forma minúscula como conceito |
| 7 | "Central de Operações" × "Central de Segurança" | EL-03 × enunciado | **Central de Segurança**; "Central de Operações" só ao citar a tela | EL-03 |
| 8 | "Usuário" × "Usuário Avaliador" | ES-02, ES-06 e ES-07 | **Usuário Avaliador** quando a pessoa está avaliando; **Usuário** nos demais casos | Conferir na inspeção (VA-02, pergunta C9) |

**Nota sobre o caso 4.** O enunciado descreve a funcionalidade como "abrir
aplicativo para solicitar apoio da central de segurança da UFG" (UFG, 2026), e
o inventário mostra que o módulo leva a um aplicativo separado, "Minha UFG –
Segurança" (`EL-03`, seção 1.3.1). Pela definição de **aplicativo externo**
deste glossário, os requisitos do Minha UFG para esse módulo são:

- abrir o aplicativo de Segurança, ou oferecer a versão web dele;
- levar à loja de aplicativos, quando ele não está instalado.

Abrir chamado, consultar chamados e acionar o SOS são funções do aplicativo
externo.

**Decisão.** No e-mail de 03/11/2026, o docente confirmou que chamado e SOS são
funções do aplicativo de Segurança, e não do Minha UFG (OLIVEIRA, 2026b). Por
isso, os termos **Chamado** e **SOS** ficam no glossário só para descrever o
aplicativo externo. A Dupla A ajusta o `ES-01`, e a decisão deve ser registrada
no `AN-05`.

**Fora do vocabulário, mas encontrado na leitura.** O rascunho da Dupla A
define `RF-AVA-01` a `RF-AVA-08` para a avaliação de qualidade de UA. Esses IDs
**já existem** no `ES-02` da Dupla B, com outro conteúdo. A colisão deve ser
registrada no `AN-05`. A evolução continua especificada só no `ES-02`.

## 2.1.7 Rastreabilidade

- **Depende de:**
  - `EL-03`, de onde vêm os termos do aplicativo atual;
  - `EL-04`, `EL-05` e `AN-03`, de onde vêm os termos da avaliação, as
    pendências e as ambiguidades;
  - `EL-01`, de onde vêm os stakeholders.
- **Usado por:**
  - todos os itens, que devem usar os termos adotados;
  - `VA-02` (pergunta C9) e `VA-03`, que verificam o uso do vocabulário;
  - `AN-05`, que deve receber os casos 1, 2 e 4 da Tabela 5 e a colisão de IDs
    `RF-AVA`.
- **Quando um item novo usar um termo que não está aqui,** o autor inclui o
  termo no glossário no mesmo PR, com definição e fonte.

**Referências deste item:**

- CONSELHO NACIONAL DE DESENVOLVIMENTO CIENTÍFICO E TECNOLÓGICO (CNPq).
  **Áreas do conhecimento**. Brasília, DF: CNPq, 2025. Relatório gerado em
  30 jun. 2025. Disponível em:
  https://lattes.cnpq.br/documents/11871/24930/TabeladeAreasdoConhecimento.pdf.
  Acesso em: 28 out. 2026.
- IEEE. *Guide to the Software Engineering Body of Knowledge (SWEBOK Guide):
  version 4.0.* Piscataway: IEEE Computer Society, 2024. Chapter 1: Software
  Requirements.
- ISO/IEC/IEEE. *ISO/IEC/IEEE 29148:2018: Systems and software engineering —
  Life cycle processes — Requirements engineering.* 2. ed. Geneva: ISO, 2018.
- OLIVEIRA, J. L. *Requisitos de Software: conceitos fundamentais; técnicas e
  ferramentas; SQuaRE, família ISO 25000.* Slides de aula da disciplina
  INF0339 – Engenharia de Requisitos. Goiânia: INF/UFG, 2026a.
- OLIVEIRA, J. L. **[Respostas às dúvidas da Equipe Sul sobre a APS]**.
  Destinatário: Equipe Sul. Goiânia, 3 nov. 2026b. 1 mensagem eletrônica.
- UNIVERSIDADE FEDERAL DE GOIÁS (UFG). Instituto de Informática. *Definição de
  Atividades Práticas Supervisionadas (APS) da disciplina: INF0339 – Engenharia
  de Requisitos, semestre 2026/2.* Goiânia: UFG, 2026. Apêndice A: Domínio do
  problema – escopo do software a ser especificado.
