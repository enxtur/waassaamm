#!/bin/bash
pushd wasm-test || exit
cargo clean
rm -rf pkg
popd || exit