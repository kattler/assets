# assets

Shared brand assets for rocattle projects, such as logos and icons.

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
https://raw.githubusercontent.com/rocattle/assets/main/logos/<name>/<variant>.svg
https://raw.githubusercontent.com/rocattle/assets/main/logos/<name>/png/<variant>-<size>.png
```

## Rendering

After adding or editing an SVG, regenerate the PNGs with [librsvg](https://gitlab.gnome.org/GNOME/librsvg):

```bash
./scripts/render.sh
```
