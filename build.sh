#!/usr/bin/env bash

git submodule update --init

cd src || exit 1
cp Makefile ./tree-sitter-toml/
cd tree-sitter-toml || exit 2

npm i -D 2> /dev/null
npm i -D tree-sitter-cli

npx tree-sitter generate || exit 3
../compile_parser.sh "$PWD" "/Applications/Nova.app" || exit 4

mv libtree-sitter-toml.dylib ../../TOML.novaextension/Syntaxes/

cd "$OLDPWD" || exit 5
exit 0
