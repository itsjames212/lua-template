#!/bin/sh

set -e

# If Packages aren't installed, install them.
if [ ! -d "Packages" ]; then
    sh scripts/install.sh
fi

rojo serve build.project.json \
    & rojo sourcemap default.project.json -o sourcemap.json --watch --include-non-scripts \
    & ROBLOX_DEV=true darklua process --config .darklua.json --watch src/ bin/