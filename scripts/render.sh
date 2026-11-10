#!/usr/bin/env bash
set -euo pipefail

SIZES=(16 32 48 64 128 256 512 1024)
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

command -v rsvg-convert >/dev/null || { echo "rsvg-convert not found (brew install librsvg)" >&2; exit 1; }

for svg in "${ROOT}"/logos/*/*.svg; do
  dir="$(dirname "${svg}")/png"
  name="$(basename "${svg}" .svg)"
  mkdir -p "${dir}"
  for size in "${SIZES[@]}"; do
    rsvg-convert -w "${size}" -h "${size}" "${svg}" -o "${dir}/${name}-${size}.png"
  done
  echo "rendered ${name}"
done
