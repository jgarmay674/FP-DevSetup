#!/usr/bin/env bash
# Actualiza SOLO la cabecera Marp (CSS) de los *.slides.md.
# Conserva el cuerpo intacto, incluidos los --- que separan diapositivas.
#
# Uso: bash build-marp-slides-readme.sh
#
# Exportar en VS Code:
#   Abrir el .slides.md → Cmd+Shift+P → Marp: Export Slide Deck… → PDF/PPTX
# Vista previa Marp (no la de Markdown genérica):
#   Cmd+Shift+P → Marp: Open Preview to the Side
#   o icono de vista previa Marp / Toggle Marp Feature

set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
CSS="$ROOT/marp-slides.css"

refresh() {
  local slides="$1"
  local tmp body_start

  if [[ ! -f "$slides" ]]; then
    echo "No existe: $slides" >&2
    return 1
  fi

  # Cuerpo = desde la línea DESPUÉS del segundo --- (cierre del frontmatter)
  body_start="$(awk '/^---$/ { c++; if (c == 2) { print NR + 1; exit } }' "$slides")"
  if [[ -z "$body_start" ]]; then
    echo "Frontmatter incompleto en: $slides" >&2
    return 1
  fi

  tmp="$(mktemp)"
  {
    echo "---"
    echo "marp: true"
    echo "theme: default"
    echo "paginate: true"
    echo "style: |"
    sed 's/^/  /' "$CSS"
    echo "---"
    echo ""
    tail -n "+${body_start}" "$slides"
  } > "$tmp"

  mv "$tmp" "$slides"
  echo "OK: $slides"
}

cd "$ROOT"

# entorno/README.slides.md se regenera SIEMPRE desde entorno/README.md
# (mismo criterio que APUNTES.slides.md en vanilla-app).
{
  echo "---"
  echo "marp: true"
  echo "theme: default"
  echo "paginate: true"
  echo "style: |"
  sed 's/^/  /' "$CSS"
  echo "---"
  echo ""
  cat "$ROOT/entorno/README.md"
} > "$ROOT/entorno/README.slides.md"
echo "OK: entorno/README.slides.md (desde entorno/README.md)"

for f in \
  README.slides.md \
  README-01-instalacion.slides.md \
  README-02-flujo.slides.md \
  README-03-comandos.slides.md \
  README-04-extensiones.slides.md \
  README-05-aliases.slides.md \
  README-06-problemas.slides.md \
  DOCENTE-clase-entorno.slides.md
do
  refresh "$f"
done
