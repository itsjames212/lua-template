#!/bin/sh

set -e

# If Packages aren't installed, install them.
if [ ! -d "Packages" ]; then
    sh scripts/install.sh
fi

rojo sourcemap default.project.json -o sourcemap.json --include-non-scripts
curl -O https://raw.githubusercontent.com/JohnnyMorganz/luau-lsp/main/scripts/globalTypes.d.lua

luau-lsp analyze --definitions=globalTypes.d.lua --base-luaurc=.luaurc \
    --sourcemap=sourcemap.json --settings=.vscode/settings.json \
    --no-strict-dm-types --ignore Packages/**/*.lua --ignore Packages/**/*.luau \
    src/
