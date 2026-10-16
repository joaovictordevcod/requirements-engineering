# Checklist de autoavaliação (Apêndice B)

Esta lista traduz os critérios de avaliação do enunciado em perguntas
verificáveis. Ela deve ser usada:

- pelo **revisor** de cada item de informação, em conjunto com o modelo de PR;
- pela **equipe inteira** na revisão final, antes da exportação do PDF.

Marque `[x]` somente quando houver evidência concreta.

## Critérios da equipe

### 1. Conformidade

**1.1 Regras**
- [ ] O PDF é único, com o nome `INF0339-APS-Sul.pdf`.
- [ ] O cabeçalho traz a disciplina, a tarefa e os autores em ordem alfabética,
  só quem contribuiu.
- [ ] O corpo tem exatamente as 4 seções: Elicitação, Análise, Especificação e
  Validação.
- [ ] Todo item de informação tem autores e revisores identificados.
- [ ] Ninguém é autor e revisor do mesmo item.
- [ ] Todos os membros aparecem como autor de algum item.
- [ ] Todos os membros aparecem como revisor de algum item.
- [ ] As referências vêm depois das seções e antes dos apêndices.

**1.2 Ética**
- [ ] Nenhum dado pessoal de participantes da elicitação foi exposto. As
  respostas estão anonimizadas e houve consentimento.
- [ ] Os fatos atribuídos ao app real foram verificados no app, e não supostos.

**1.3 Referências**
- [ ] Toda ideia de terceiros está citada no item em que é usada.
- [ ] As citações seguem a ABNT (NBR 10520 para citação e NBR 6023 para a lista).

### 2. Completude

**2.1 Funcional**
- [ ] As 8 categorias da versão atual estão cobertas.
- [ ] A evolução (avaliação de UA) está coberta: registrar avaliação e mostrar as
  notas por UA, por área do CNPq e da UFG.

**2.2 Qualidade**
- [ ] Há requisitos não funcionais para as características relevantes da ISO/IEC
  25010:
  - usabilidade e acessibilidade;
  - desempenho;
  - disponibilidade;
  - segurança e privacidade (LGPD);
  - compatibilidade com Android/iOS;
  - manutenibilidade.

### 3. Corretude

**3.1 Contextual**
- [ ] Os conceitos e requisitos refletem o app real e o enunciado, sem invenções
  indevidas.

**3.2 Modelagem**
- [ ] Os diagramas respeitam a sintaxe e a semântica da linguagem (UML, iStar
  etc.):
  - multiplicidades;
  - tipos de relacionamento;
  - include/extend usados corretamente.

### 4. Consistência

**4.1 Intramodelo**
- [ ] Não há elementos soltos nem contradições dentro de um mesmo diagrama ou
  tabela.

**4.2 Intermodelos**
- [ ] Os mesmos nomes são usados nos modelos, nos requisitos e no glossário.
- [ ] Não há redundância, sobreposição ou conflito entre itens.

### 5. Rastreabilidade

**5.1 Análise de impacto**
- [ ] A matriz de rastreabilidade liga necessidade → requisito → caso de uso /
  modelo → critério de aceitação.

**5.2 Navegação**
- [ ] Os IDs são citados no texto, com links internos no PDF (marcadores do
  Google Docs).
- [ ] Cada modelo indica os modelos correlatos.

### 6. Essencialidade

**6.1 Relevância**
- [ ] Cada item de informação tem propósito claro e nada é "enchimento".

**6.2 Priorização**
- [ ] Os requisitos estão priorizados (MoSCoW).
- [ ] Os mais relevantes estão mais detalhados.

### 7. Perspectivas

**7.1 Comportamento**
- [ ] As interações relevantes estão modeladas: casos de uso, sequência,
  atividade e estados.

**7.2 Estrutura**
- [ ] Os conceitos e dados manipulados estão modelados: modelo conceitual e
  dicionário de dados.

### 8. Comunicação efetiva

**8.1 Língua portuguesa**
- [ ] O documento passou por revisão ortográfica e gramatical (pt-BR).

**8.2 Objetividade**
- [ ] As frases são curtas, sem ambiguidade nem termos vagos ("rápido",
  "amigável" sem métrica).

**8.3 Estrutura**
- [ ] O sumário está atualizado.
- [ ] A numeração de seções é consistente.
- [ ] Cada item é fácil de encontrar.

**8.4 Formatação**
- [ ] Fonte, tamanho e espaçamento são uniformes.
- [ ] O texto está justificado.
- [ ] Não há espaços vazios no corpo.

**8.5 Figuras e tabelas**
- [ ] Toda figura e toda tabela tem número e legenda.
- [ ] Toda figura e toda tabela é referenciada no texto.

## Critérios individuais

- [ ] **Autoria e revisão:** a matriz autor × revisor fecha, com todos nos dois
  papéis.
- [ ] **Interação com a equipe:** as atas de reuniões e os registros de
  comunicação estão nos apêndices.
- [ ] **Atitudes:** os compromissos não cumpridos estão registrados com fatos e
  datas no [registro de riscos](../../gestao/riscos.md).
