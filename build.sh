#!/usr/bin/env bash

pushd src/tree-sitter-toml || exit 1
cp ../Makefile .
npm i -D 2> /dev/null

npx tree-sitter generate || exit 2
../compile_parser.sh "$PWD" "/Applications/Nova.app" || exit 3
mv libtree-sitter-toml.dylib ../../TOML.novaextension/Syntaxes/

popd || exit 4
