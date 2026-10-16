#!/usr/bin/env bash
# Renderiza todos os diagramas PlantUML de modelos/ em PNG e SVG.
# Saída: build/diagramas/png/ e build/diagramas/svg/ (nomes únicos pelo prefixo do item).
# Requisitos: Java 11+ e Graphviz (dot) no PATH.
# Opcional: PLANTUML_JAR=/caminho/plantuml.jar (senão o jar é baixado em build/).
set -euo pipefail

PLANTUML_VERSION="1.2024.7"
RAIZ="$(cd "$(dirname "$0")/.." && pwd)"
SAIDA="$RAIZ/build/diagramas"
JAR="${PLANTUML_JAR:-$RAIZ/build/plantuml-$PLANTUML_VERSION.jar}"

command -v java >/dev/null || { echo "Erro: Java não encontrado no PATH." >&2; exit 1; }
command -v dot >/dev/null || echo "Aviso: Graphviz (dot) não encontrado; diagramas de classes e casos de uso podem falhar." >&2

if [[ ! -f "$JAR" ]]; then
  mkdir -p "$(dirname "$JAR")"
  echo "Baixando PlantUML $PLANTUML_VERSION..."
  curl -fsSL -o "$JAR" \
    "https://github.com/plantuml/plantuml/releases/download/v$PLANTUML_VERSION/plantuml-$PLANTUML_VERSION.jar"
fi

cd "$RAIZ/modelos"
mapfile -t ARQUIVOS < <(find . -name '*.puml' ! -name '_*' | sort)
if [[ ${#ARQUIVOS[@]} -eq 0 ]]; then
  echo "Nenhum diagrama encontrado em modelos/."
  exit 0
fi

mkdir -p "$SAIDA"
# -failfast2: interrompe no primeiro erro de sintaxe, para o CI acusar o problema.
java -jar "$JAR" -charset UTF-8 -failfast2 -tpng -o "$SAIDA/png" "${ARQUIVOS[@]}"
java -jar "$JAR" -charset UTF-8 -failfast2 -tsvg -o "$SAIDA/svg" "${ARQUIVOS[@]}"

echo "Renderizados ${#ARQUIVOS[@]} diagrama(s) em $SAIDA"
