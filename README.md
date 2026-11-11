# assets

[![Format](https://img.shields.io/badge/format-svg%20%2B%20png-black?style=flat-square&logo=svg&logoColor=white)](#layout)
[![librsvg](https://img.shields.io/badge/render-librsvg-black?style=flat-square&logo=gnome&logoColor=white)](https://gitlab.gnome.org/GNOME/librsvg)
[![License](https://img.shields.io/github/license/kattler/assets?style=flat-square&color=black)](https://github.com/kattler/assets/blob/main/LICENSE)

Shared brand assets for kattler projects, such as logos and icons.

## Layout

```
logos/<name>/<variant>.svg
logos/<name>/png/<variant>-<size>.png
```

- SVG is the source of truth. PNGs are generated from it and should not be edited by hand
- PNGs are square with a transparent background, rendered at 16, 32, 48, 64, 128, 256, 512 and 1024 px

## Usage

Reference files through their raw URL:

```
https://raw.githubusercontent.com/kattler/assets/main/logos/<name>/<variant>.svg
https://raw.githubusercontent.com/kattler/assets/main/logos/<name>/png/<variant>-<size>.png
```

## Rendering

After adding or editing an SVG, regenerate the PNGs with [librsvg](https://gitlab.gnome.org/GNOME/librsvg):

```bash
./scripts/render.sh
```
