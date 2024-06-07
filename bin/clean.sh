#!/bin/bash
npm run clean
pushd wasm-test || exit
cargo clean
rm -rf pkg
popd || exit