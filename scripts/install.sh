#!/bin/sh

set -e

wally install

rojo sourcemap default.project.json -o sourcemap.json --include-non-scripts
wally-package-types --sourcemap sourcemap.json Packages/
