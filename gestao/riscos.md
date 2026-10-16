# Gerenciamento de riscos do trabalho em equipe

O enunciado (Apêndices B e C) exige que a equipe gerencie **continuamente** o
risco de descumprimento de compromissos e mantenha **registros** que subsidiem a
avaliação individual. Este arquivo tem duas partes:

1. **Registro de riscos**: o que pode dar errado e como respondemos.
2. **Acompanhamento de compromissos**: fatos datados, revisados em toda
   reunião de acompanhamento.

**Escalas:**

- **Probabilidade (P):** 1 = baixa, 2 = média, 3 = alta.
- **Impacto (I):** 1 = baixo, 2 = médio, 3 = alto.
- **Exposição:** P × I. Valores ≥ 6 são revistos em toda reunião.

## 1. Registro de riscos

| ID | Risco | P | I | Exp. | Gatilho (sinal de alerta) | Resposta planejada | Responsável | Status |
|----|-------|:-:|:-:|:----:|---------------------------|--------------------|-------------|--------|
| R-01 | Membro não cumpre um compromisso (item atrasado ou não entregue) | 2 | 3 | 6 | Duas ausências seguidas no check-in, ou item sem atualização em 4 dias | Ver resposta R-01 abaixo. | Facilitador(a) da semana | Ativo |
| R-02 | Membro não revisa no prazo (gargalo de revisão) | 2 | 2 | 4 | PR ou comentário sem resposta em 48 h | Lembrete. Depois de 72 h, o outro membro da dupla revisora assume a revisão e o fato é registrado. | Dupla autora | Ativo |
| R-03 | Inconsistência entre itens feitos por duplas diferentes | 3 | 3 | 9 | Termos diferentes para o mesmo conceito, ou IDs duplicados | Glossário (AN-01) e modelo conceitual (AN-03) únicos, sessão de integração antes de cada marco e inspeção cruzada (VA-03). | Dupla C | Ativo |
| R-04 | Concentração do trabalho nos últimos dias | 2 | 3 | 6 | Marco de fase vencido com itens em `A fazer` | Marcos intermediários, replanejamento na reunião e folga de 2 dias antes do prazo. | Todos | Ativo |
| R-05 | Baixa adesão da comunidade ao questionário (EL-05) | 2 | 2 | 4 | Menos de 15 respostas em 5 dias | Divulgar em mais canais, complementar com entrevistas e declarar a limitação no documento. | Dupla B | Ativo |
| R-06 | Documentar no app atual um comportamento que não existe | 1 | 3 | 3 | Requisito da versão atual sem captura de tela ou evidência | Toda funcionalidade da versão atual precisa de evidência em `elicitacao/app-atual/`. | Dupla A | Ativo |
| R-07 | Membro sai da equipe, ou outro entra (Apêndice C) | 1 | 2 | 2 | Aviso do docente ou do próprio membro | Redistribuir os itens na matriz, mantendo as restrições, e fazer o onboarding pelo README. | Equipe | Ativo |
| R-08 | Perda de conteúdo ou conflito de versões no Google Docs | 1 | 3 | 3 | Edição simultânea na mesma seção, ou texto apagado | Modo Sugestão para editar seções alheias, histórico de versões e cópia semanal em PDF. | Gestor(a) de rastreabilidade e formatação | Ativo |
| R-09 | Formatação fora do padrão na montagem final | 2 | 2 | 4 | Estilos manuais no Docs em vez de estilos de parágrafo | [Guia de estilo](../docs/documento/guia-de-estilo.md) e revisão de forma na fase 5. | Gestor(a) de rastreabilidade e formatação | Ativo |

**Resposta planejada para R-01:**

1. Conversa direta, registrada.
2. Se não resolver, renegociar o prazo com novo compromisso registrado.
3. Se descumprir de novo, redistribuir o item e registrar o fato.
4. Se o problema persistir, comunicar ao docente.

## 2. Acompanhamento de compromissos

Registre **todo** compromisso assumido em reunião ou check-in que tenha prazo.
Atualize o status na reunião seguinte. Os registros devem ser objetivos e
**factuais**: o que foi combinado, quando e o que aconteceu. Não use
adjetivos nem julgamentos.

| Data | Membro | Compromisso | Prazo | Situação | Evidência |
|------|--------|-------------|-------|----------|-----------|
| _AAAA-MM-DD_ | _sigla_ | _ex.: rascunho do EL-03 no PR_ | _AAAA-MM-DD_ | _Cumprido / Cumprido com atraso / Não cumprido / Renegociado_ | _link da issue, PR, ata ou mensagem_ |

## 3. Histórico de revisões dos riscos

| Data | Reunião (ata) | Alterações |
|------|---------------|------------|
| | | Registro inicial dos riscos R-01 a R-09 |
| _data a registrar_ | | R-07 ocorreu: Hendrew substituiu Tales Ian Costa Barkema. Os itens foram redistribuídos nas 3 duplas, mantendo as restrições da matriz. |
