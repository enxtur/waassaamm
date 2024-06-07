#!/bin/bash
pushd wasm-test || exit
wasm-pack build --target bundler
popd || exit
npm run build