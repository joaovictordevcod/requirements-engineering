# Modelo de item de informação

Todo item de informação do documento começa por este bloco de identificação
(regra 4c: *"cada item de informação deve identificar seus autores e
revisores"*). Copie o bloco para o Google Docs logo abaixo do título do item
(Título 2).

---

## <número da seção> <Título do item>

| Identificação | |
|---|---|
| **ID** | `XX-nn` (ex.: `AN-03`) |
| **Autoria** | Nome completo do autor (e coautores, se houver) |
| **Revisão** | Nome completo do revisor (nunca o autor) |
| **Versão / data** | 1.0, AAAA-MM-DD (data da aprovação) |
| **Técnica / linguagem** | ex.: diagrama de classes UML 2.5; entrevista semiestruturada; MoSCoW |
| **Depende de** | IDs dos itens de entrada (ex.: `AN-01`, `EL-04`) |
| **Usado por** | IDs dos itens que dependem deste (ex.: `ES-02`, `ES-04`) |

**Objetivo.** Uma ou duas frases: que pergunta este item responde e por que ele
é necessário (critério 6.1, Relevância).

**Conteúdo.** O corpo do item.

- Toda figura e toda tabela tem legenda numerada e é citada no texto antes de
  aparecer. Exemplo: *"A Figura 5 apresenta…"*.
- Todo requisito, regra ou caso de uso tem ID único (ver o
  [guia de estilo](guia-de-estilo.md)).

**Rastreabilidade.** Relação explícita com os outros itens, citando os IDs.

**Referências deste item.** As obras citadas neste item, em formato curto. A
lista completa fica na seção Referências.

---

## Exemplo de preenchimento (ilustrativo)

| Identificação | |
|---|---|
| **ID** | `AN-03` |
| **Autoria** | Dupla B: <responsável principal>; <coautor(a)> |
| **Revisão** | Dupla A: <revisor(a) 1>; <revisor(a) 2> |
| **Versão / data** | 1.0, 2026-11-05 |
| **Técnica / linguagem** | Diagrama de classes conceitual, UML 2.5.1 |
| **Depende de** | `AN-01`, `EL-04` |
| **Usado por** | `ES-02`, `ES-04`, `ES-06` |

## Formato de um requisito

Use o formato abaixo nos itens ES-01, ES-02 e ES-03. Ele segue as
características de requisitos bem formados da ISO/IEC/IEEE 29148.

| Campo | Conteúdo |
|---|---|
| **ID** | `RF-12` |
| **Enunciado** | O aplicativo deve [ação] [objeto] [condição/restrição]. Use frase única, voz ativa e "deve". |
| **Prioridade** | Must / Should / Could / Won't (ver AN-06) |
| **Origem** | `NEC-07` (EL-05) |
| **Justificativa** | Por que o requisito existe |
| **Critério de aceitação** | `CA-12.1` (ver VA-04) |
| **Relacionados** | `UC-04`, `RN-03` |
