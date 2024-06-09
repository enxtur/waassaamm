#!/bin/bash
pushd wasm-test || exit
wasm-pack build --target web
popd || exit
npm run build