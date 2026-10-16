# Guia de estilo do documento

O objetivo deste guia é que o documento pareça escrito por **uma equipe**, e não
por seis pessoas (critérios 8.1 a 8.5 e 4.2). Siga-o tanto no Google Docs quanto
nos arquivos deste repositório.

## 1. Formatação (Google Docs)

| Elemento | Padrão |
|----------|--------|
| Papel / margens | A4; superior e esquerda 3 cm, inferior e direita 2 cm |
| Fonte | Arial 12 pt (texto); 10 pt em tabelas, legendas e notas |
| Texto normal | Justificado, espaçamento 1,5, recuo de primeira linha 1,25 cm, 0 pt antes e 6 pt depois |
| Título 1 (seções 1–4) | Arial 14 pt, negrito, MAIÚSCULAS, numerado (`1 ELICITAÇÃO DE REQUISITOS`), nova página |
| Título 2 (itens) | Arial 12 pt, negrito, numerado (`1.3 Inventário do aplicativo atual`) |
| Título 3 | Arial 12 pt, negrito e itálico, numerado (`1.3.1 Segurança`) |
| Tabelas | Largura total, cabeçalho em negrito com fundo cinza claro, espaçamento simples |
| Legenda de tabela | **Acima** da tabela: `Tabela 3 – Requisitos funcionais do RU` |
| Legenda de figura | **Abaixo** da figura: `Figura 5 – Modelo conceitual da avaliação de UA` |
| Fonte da figura/tabela | Abaixo da legenda, 10 pt: `Fonte: elaborado pelos autores (2026).` |

**Regras gerais:**

- **Sem linhas em branco** para espaçar. Use o espaçamento do estilo
  (critério 8.4).
- **Sem formatação manual** (negrito solto, tamanho alterado). Use os estilos de
  parágrafo.
- Toda figura e toda tabela é **citada no texto antes** de aparecer.
- A numeração de figuras e tabelas é **contínua** no documento inteiro.

## 2. Identificadores

| Prefixo | Significado | Item de origem | Exemplo |
|---------|-------------|----------------|---------|
| `EL-nn`, `AN-nn`, `ES-nn`, `VA-nn` | Itens de informação | [catálogo](../../gestao/itens-de-informacao.md) | `AN-03` |
| `STK-nn` | Stakeholder | EL-01 | `STK-04` (Discente) |
| `NEC-nn` | Necessidade de stakeholder | EL-06 | `NEC-07` |
| `OBJ-nn` | Objetivo | AN-02 | `OBJ-02` |
| `UC-nn` | Caso de uso | AN-04, ES-05 | `UC-09` |
| `RF-nn` | Requisito funcional | ES-01, ES-02 | `RF-23` |
| `RNF-nn` | Requisito não funcional (qualidade) | ES-03 | `RNF-05` |
| `RN-nn` | Regra de negócio | ES-04 | `RN-03` |
| `CA-nn.m` | Critério de aceitação *m* do requisito *nn* | VA-04 | `CA-23.1` |
| `DEF-nn` | Defeito encontrado na validação | VA-03 | `DEF-11` |

**Regras dos identificadores:**

- Os IDs **nunca são reutilizados**. Um requisito removido mantém o ID com a
  marcação *(removido)*.
- **Reserve faixas** para evitar colisão entre autores:
  - `RF-01` a `RF-49`: versão atual (ES-01);
  - `RF-50` a `RF-99`: evolução (ES-02).
- Sempre cite o ID no texto, e não apenas "o requisito acima".

## 3. Escrita de requisitos

- **Forma:** "O aplicativo deve…". Use "deve" para obrigatório e "pode" para
  opcional. Evite "deverá", "poderia" e "é desejável".
- **Requisitos singulares:** uma necessidade por requisito, sem "e/ou".
- **Termos vagos são proibidos sem métrica.** Exemplos: rápido, fácil, amigável,
  intuitivo, adequado, eficiente, etc.

  | Errado | Certo |
  |--------|-------|
  | "O app deve carregar rápido." | "O app deve exibir o cardápio da semana em até 3 s em conexão 4G." |

- **Use os termos do glossário (AN-01).** Por exemplo, sempre "Unidade
  Acadêmica (UA)", e não "unidade", "instituto" e "faculdade" alternadamente.
- **Separe o que o app faz hoje do que é evolução.** Os requisitos da versão
  atual descrevem o comportamento **observado** (com evidência em
  `elicitacao/app-atual/`).

## 4. Vocabulário preferido

| Use | Evite |
|-----|-------|
| aplicativo (ou app, após a primeira menção) | aplicação mobile, application |
| Unidade Acadêmica (UA) | unidade, instituto (quando genérico) |
| dimensão de qualidade | categoria, eixo |
| elemento educacional | item, critério |
| avaliação | review, rating, feedback |
| nota | score, pontuação (exceto em citação) |
| usuário | user |
| discente / docente / técnico-administrativo | aluno / professor / servidor (quando o papel importa) |
| stakeholder (parte interessada na 1ª menção) | interessado |

## 5. Citações e referências

- Siga a ABNT: **NBR 10520** para citações no texto e **NBR 6023** para a lista
  de referências.
- No texto, use o formato autor-data:
  - *"…conforme o SWEBOK (IEEE, 2024)…"*;
  - *"(ISO/IEC/IEEE, 2018, p. 12)"* em citação direta.
- Cada item lista, ao final, as referências que usou. A lista completa e única
  fica em [referencias/referencias.md](../../referencias/referencias.md), que
  também é copiada para a seção REFERÊNCIAS do documento.

## 6. Diagramas

- A fonte sempre é PlantUML, em `modelos/`, com o estilo compartilhado
  (`modelos/_estilo.puml`). Ver [modelos/README.md](../../modelos/README.md).
- Use a imagem **PNG** renderizada pelo workflow, com largura máxima de 16 cm no
  Docs.
- Os nomes de classes, atores e casos de uso nos diagramas são **idênticos** aos
  do glossário e dos requisitos.
