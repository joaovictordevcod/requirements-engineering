# Estrutura do documento final (Google Docs → PDF)

Este é o esqueleto do documento a montar no Google Docs. Os títulos numerados
devem usar os **estilos de título do Docs**: Título 1 para as seções e Título 2
para os itens. Assim, o sumário e a navegação lateral são gerados
automaticamente.

```
CABEÇALHO (primeira página)
  Universidade Federal de Goiás — Instituto de Informática
  Bacharelado em Ciência da Computação
  INF0339 — Engenharia de Requisitos — 2026/2
  Atividade Prática Supervisionada (APS): Especificação de requisitos do app Minha UFG
  Equipe Sul
  Autores (ordem alfabética, somente quem contribuiu):
    Cali Freitas Silva; Gustavo Bittencourt Ribeiro; João Victor Borges Tavares;
    Maria Michelle Rodrigues Amaral; Nicole Cabral Lopes Dantas; Tales Ian Costa Barkema
  Goiânia, <data da entrega>

SUMÁRIO
LISTA DE FIGURAS
LISTA DE TABELAS
(Opcional) LISTA DE SIGLAS — pode ser substituída pelo Glossário (AN-01)

INTRODUÇÃO (curta, sem numeração ou como seção 0 — ver nota 1)
  Propósito do documento, escopo (app atual + evolução), organização do documento,
  convenções de identificadores e de autoria/revisão

1 ELICITAÇÃO DE REQUISITOS
  1.1 Identificação de stakeholders ............................. EL-01
  1.2 Plano de elicitação ...................................... EL-02
  1.3 Inventário do aplicativo atual ........................... EL-03
  1.4 Análise de documentos .................................... EL-04
  1.5 Questionário e entrevistas com a comunidade .............. EL-05
  1.6 Registro de necessidades ................................. EL-06

2 ANÁLISE DE REQUISITOS
  2.1 Glossário ................................................ AN-01
  2.2 Modelo de objetivos ...................................... AN-02
  2.3 Modelo conceitual do domínio ............................. AN-03
  2.4 Modelo de casos de uso ................................... AN-04
  2.5 Conflitos e negociação ................................... AN-05
  2.6 Priorização .............................................. AN-06

3 ESPECIFICAÇÃO DE REQUISITOS
  3.1 Requisitos funcionais — versão atual ..................... ES-01
  3.2 Requisitos funcionais — avaliação de qualidade de UA ..... ES-02
  3.3 Requisitos de qualidade .................................. ES-03
  3.4 Regras de negócio ........................................ ES-04
  3.5 Especificação de casos de uso ............................ ES-05
  3.6 Modelos de comportamento ................................. ES-06
  3.7 Protótipos de interface .................................. ES-07
  3.8 Matriz de rastreabilidade ................................ ES-08

4 VALIDAÇÃO DE REQUISITOS
  4.1 Plano de validação ....................................... VA-01
  4.2 Checklist de inspeção .................................... VA-02
  4.3 Relatório de inspeção .................................... VA-03
  4.4 Critérios de aceitação ................................... VA-04
  4.5 Validação por protótipo .................................. VA-05

REFERÊNCIAS
  Lista completa, ABNT NBR 6023, ordem alfabética

APÊNDICE A — Atas de reuniões ...................................... AP-01
APÊNDICE B — Registro de comunicações .............................. AP-02
APÊNDICE C — Matriz de autoria e revisão ........................... AP-03
```

## Notas

1. **Introdução.** A regra 4c pede que o corpo tenha **quatro seções**. Para não
   ferir a regra, a introdução deve ser curta e **não numerada** (como texto
   pré-textual), ou o conteúdo dela pode ir no início da seção 1. Se houver
   dúvida, pergunte ao docente.
2. **Apêndices.** Os apêndices do documento usam letras (A, B, C…). Não
   confundir com os apêndices do enunciado.
3. **Cabeçalho de cada item.** Todo item (Título 2) começa pelo bloco de
   identificação do [modelo de item de informação](modelo-item-de-informacao.md).
4. **Ordem de montagem.** Cada item é colado no Docs depois de aprovado (status
   `Aprovado`). A partir daí, alterações no Docs usam o modo **Sugestão**.

## Configuração do Google Docs

Ajuste uma vez, antes de colar conteúdo. Detalhes no
[guia de estilo](guia-de-estilo.md).

- **Arquivo → Configuração da página:**
  - papel A4;
  - margens: superior e esquerda 3 cm, inferior e direita 2 cm (ABNT);
  - modo **Páginas**, porque o modo Sem páginas não gera PDF paginado.
- **Formatar → Estilos de parágrafo:** defina Texto normal, Título 1, Título 2 e
  Título 3 conforme o guia. Depois use **"Salvar como meus estilos padrão"**.
- **Inserir → Sumário:** escolha o sumário com números de página.
- **Inserir → Números de página:** a partir da segunda página.
- **Links internos:** use **Inserir → Marcador** em cada requisito ou figura
  importante e **Inserir → Link → Marcadores** para navegar. Isso atende ao
  critério 5.2. Os links continuam funcionando no PDF exportado.
- **Exportar:** Arquivo → Fazer download → Documento PDF. Renomeie para
  `INF0339-APS-Sul.pdf`.
