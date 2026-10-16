# Modelos (PlantUML)

Os diagramas são escritos como **texto** em PlantUML. Assim é possível
versionar, comparar as alterações em PRs e manter o mesmo estilo em todos os
diagramas.

```
modelos/
├── _estilo.puml        estilo comum, incluído em todos os diagramas
├── analise/            AN-02 objetivos · AN-03 modelo conceitual · AN-04 casos de uso
└── especificacao/      ES-06 sequência, atividade e estados
```

## Convenções

- **Nome do arquivo:** `<ID-do-item>_<assunto>.puml`, em minúsculas e sem
  acentos.
  - Exemplo: `an-03_modelo-conceitual-avaliacao.puml`.
  - Exemplo: `es-06_sequencia-registrar-avaliacao.puml`.
- **Cabeçalho obrigatório** em todo arquivo:

  ```plantuml
  @startuml
  !include ../_estilo.puml
  ' Item: AN-03 — Modelo conceitual do domínio
  ' Autoria: JVBT · Revisão: NCLD
  ' Relacionados: AN-01 (glossário), ES-02, ES-04
  title Modelo conceitual — Avaliação de qualidade de UA
  ...
  @enduml
  ```

- **Nomes de elementos:** os nomes de classes, atores, casos de uso e estados são
  **idênticos** aos do glossário (AN-01).
  - Classes e atores usam PascalCase com acentos permitidos no rótulo. Exemplo:
    `class "Unidade Acadêmica" as UnidadeAcademica`.
  - Casos de uso levam o ID no rótulo. Exemplo: `usecase "UC-09 Avaliar UA" as UC09`.
- **Um diagrama por arquivo.** Diagramas grandes devem ser divididos por pacote
  ou funcionalidade, e não espremidos em um só.
- **Notação:** UML 2.5.1 para casos de uso, classes, sequência, atividade e
  estados. Se o modelo de objetivos (AN-02) usar iStar 2.0, siga o
  *iStar 2.0 Language Guide*. O PlantUML não tem iStar nativo, então nesse caso
  use outra ferramenta e guarde a fonte e o PNG aqui.

## Como visualizar e renderizar

| Forma | Como |
|-------|------|
| VS Code | Extensão *PlantUML* (jebbs.plantuml). Pré-visualização com `Alt+D`. Requer Java e Graphviz, ou a opção de servidor remoto. |
| Online | <https://www.plantuml.com/plantuml>: cole o conteúdo e troque o `!include` pelo conteúdo de `_estilo.puml`. |
| Local, todos | `./scripts/render-diagramas.sh` gera `build/diagramas/png/` e `build/diagramas/svg/`. |
| GitHub Actions | Todo push ou PR que altera `modelos/` renderiza tudo e publica o artefato **diagramas** na execução do workflow (aba *Actions*). |

As imagens geradas **não são versionadas**: a pasta `build/` está no
`.gitignore`. A fonte da verdade é sempre o `.puml`.
