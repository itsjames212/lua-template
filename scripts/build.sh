#!/bin/sh

set -e

# If Packages aren't installed, install them.
if [ ! -d "Packages" ]; then
    sh scripts/install.sh
fi

rojo sourcemap default.project.json -o sourcemap.json --include-non-scripts

ROBLOX_DEV=false darklua process --config .darklua.json src/ bin/
rojo build build.project.json -o placefile.rbxl