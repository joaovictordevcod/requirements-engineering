# Resumo do enunciado da APS

Este é um resumo do documento *"Definição de Atividades Práticas Supervisionadas
(APS) da Disciplina"*, de INF0339 (Engenharia de Requisitos, UFG/INF, 2026/2),
publicado pelo docente no SIGAA. O documento original prevalece. Em caso de
dúvida, consulte o docente (regra 7).

## 1. Objetivo

Aplicar o processo de Engenharia de Requisitos: **identificar, analisar,
especificar e validar** os requisitos do software definido no Apêndice A do
enunciado.

## 2. Regras de entrega

| #  | Regra | Como atendemos |
|----|-------|----------------|
| 1  | A tarefa vale 10 pontos (além da presença em APS). A entrega é feita pelo SIGAA, no prazo da tarefa. | Prazo registrado no [README](../../README.md). |
| 2  | Critérios de avaliação no Apêndice B. | [checklist-de-avaliacao.md](checklist-de-avaliacao.md) |
| 3  | Trabalho em **equipe** (Apêndice C). | Equipe Sul, com 6 integrantes. |
| 4  | Entrega de **um único PDF**. | Exportado do Google Docs. |
| 4a | Nome do arquivo: `INF0339-APS-<Nome da Equipe>`. | `INF0339-APS-Sul.pdf`. ⚠️ O enunciado diz "definido no Apêndice A", mas os nomes das equipes estão no Apêndice C. Confirmar com o docente. |
| 4b | O cabeçalho identifica a disciplina, a tarefa e a autoria em **ordem alfabética**. Só entra quem contribuiu. | [estrutura-do-documento.md](../documento/estrutura-do-documento.md) |
| 4c | O corpo tem **4 seções**: elicitação, análise, especificação e validação. Cada item de informação identifica **autores e revisores**. | [modelo-item-de-informacao.md](../documento/modelo-item-de-informacao.md) |
| 4d | A lista completa de referências fica **depois das seções e antes dos apêndices**. Cada item cita as referências que usou. | [referencias/](../../referencias/referencias.md) |
| 5  | Cada membro é **autor e revisor** de algum item. A mesma pessoa **não pode** ser autora e revisora do mesmo item. | [Matriz autor × revisor](../../gestao/itens-de-informacao.md) |
| 6  | O uso de Inteligência Artificial deve ser citado como referência bibliográfica (veja os detalhes abaixo). | — |
| 7  | Consultar o docente em caso de dúvida, sobretudo sobre a citação de bibliografia ou de IA. | Dúvidas registradas em [comunicações](../../gestao/comunicacoes/registro-de-comunicacoes.md). |

**Detalhes da regra 6.** A referência de uso de IA deve conter:

- organização e nome da ferramenta;
- URL;
- data de acesso;
- prompt completo.

Prompts com mais de um parágrafo vão para um apêndice, e a referência cita esse
apêndice.

### Bibliografia sugerida

- **[SWEBOK, 2024]** *Guide to the Software Engineering Body of Knowledge* —
  SWEBOK v4, Chapter 1 – Software Requirements. IEEE, 2024.
- **[ISO/IEC/IEEE, 2018]** *ISO/IEC/IEEE 29148:2018 — Systems and software
  engineering — Life cycle processes — Requirements engineering.*

## 3. Escopo do software (Apêndice A)

**Domínio do problema.** O sistema de informação *Minha UFG*, em operação, que
envolve diversas unidades administrativas da UFG.

**Domínio da solução.** O software *Minha UFG* tem dois componentes:

- aplicativo móvel;
- aplicação web (painel de controle).

**Escopo do trabalho:** somente o **aplicativo móvel**. O trabalho modela
requisitos de **todas as características** do aplicativo.

### 3.1 Versão atual (o que o app já implementa)

| #  | Categoria                 | Funcionalidade |
|----|---------------------------|----------------|
| 1  | Segurança                 | Abrir aplicativo para solicitar apoio da central de segurança da UFG. |
| 2  | Rádio                     | Conhecer a programação semanal da Rádio UFG e abrir aplicativo para ouvi-la. |
| 3  | Guia Estudantil           | Encontrar informações sobre oportunidades que a UFG oferece ao discente. |
| 4  | Eventos                   | Conhecer eventos da UFG, explorando por regional e por data. |
| 5  | Notícias                  | Acompanhar acontecimentos das regionais por meio de notícias atualizadas. |
| 6  | Restaurante Universitário | Obter o cardápio da semana do RU. |
| 7  | Locais                    | Obter a localização de unidades e pontos de interesse em mapa digital. |
| 8  | Apps UFG                  | Ver aplicativos que atendem a comunidade e abrir aplicativo para baixá-los. |

### 3.2 Evolução: avaliação de qualidade das Unidades Acadêmicas

O app passa a registrar **avaliações de qualidade** feitas pela comunidade
acadêmica sobre as **Unidades Acadêmicas (UA)** da UFG, como o INF.

**Conceitos do domínio:**

- **Dimensão de qualidade:** categoria de elementos educacionais correlatos.
- **Elemento educacional:** item avaliado dentro de uma dimensão.
- **Questão:** pergunta predefinida sobre um elemento, com nota de **0 (péssima)
  a 5 (excelente)**. Exemplo: *"Em uma escala de zero (péssima) a cinco
  (excelente), qual a sua avaliação da limpeza do prédio da Unidade Acadêmica?"*
- **Avaliação:** registro da opinião de um usuário sobre a qualidade de uma UA.

**Exemplos de dimensões e elementos dados no enunciado:**

| Dimensão               | Elementos educacionais (exemplos) |
|------------------------|-----------------------------------|
| Infraestrutura física  | salas de aula, laboratórios, banheiros |
| Corpo docente          | qualificação acadêmica, regime de trabalho, experiência profissional |
| Recursos pedagógicos   | material didático, bibliografia, abordagem de ensino, projeto político-pedagógico do curso |
| Condições ambientais   | nível de ruído, iluminação, climatização, limpeza |

**Regras de cálculo:**

- nota do **elemento**: média das notas dadas às questões do elemento;
- nota da **dimensão**: média das notas dos seus elementos;
- nota da **avaliação da UA**: média das notas das dimensões.

**O que o app deve mostrar:**

- nota de avaliação por **UA individual**;
- nota média por **área do conhecimento** (Exatas, Humanas etc., conforme a
  classificação do CNPq);
- nota da **UFG como um todo**, que é a média das notas de todas as UAs.

> Pontos em aberto, a resolver na elicitação e na análise:
>
> 1. Quem pode avaliar (discentes, docentes, técnicos)?
> 2. Quantas vezes e com que periodicidade?
> 3. A avaliação é anônima?
> 4. A nota da UA agrega as avaliações de vários usuários, e como?
> 5. Como uma UA se associa a uma área do CNPq (uma UA pode ter cursos de
>    áreas diferentes)?
> 6. Quem cadastra dimensões, elementos e questões? Provavelmente o painel web,
>    que está fora do escopo, mas é uma interface relevante.
> 7. Qual é a média mínima de respostas para exibir uma nota?

## 4. Avaliação (Apêndice B)

A avaliação é **comparativa** entre as equipes e considera duas perspectivas:

- o resultado da equipe;
- a participação individual.

A equipe deve **gerenciar o risco de descumprimento de compromissos**
continuamente, não só na data de entrega, e **registrar fatos e comunicações**.
Os critérios detalhados estão em
[checklist-de-avaliacao.md](checklist-de-avaliacao.md).

## 5. Trabalho em equipe (Apêndice C)

- Formamos uma **equipe**, não um grupo: objetivo coletivo, responsabilidade
  compartilhada e cooperação.
- Aplicamos **"dividir e conquistar"**: decompor o trabalho em unidades lógicas e
  **integrá-las de forma consistente**. Não devemos "esquartejar" o trabalho sem
  cuidar da integração.
- **Tarefas síncronas** são combinadas por consenso, com limite mínimo e máximo
  semanal, e podem usar as aulas práticas.
- **Tarefas assíncronas** são individuais, e cada pessoa gerencia o próprio tempo.
- Cada membro deve comunicar ao docente desvios de conduta ética ou profissional.

### Composição da Equipe Sul

Cali Freitas Silva · Gustavo Bittencourt Ribeiro · João Victor Borges Tavares ·
Maria Michelle Rodrigues Amaral · Nicole Cabral Lopes Dantas · Tales Ian Costa
Barkema.
