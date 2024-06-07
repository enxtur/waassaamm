#!/bin/bash

# Check if rustup is installed
if ! command -v rustup &> /dev/null
then
    # Check if this code is running in a codespace, then mkdir
    if [ -d "/home/codespace" ]
    then
        mkdir -p /home/codespace/.config/fish/conf.d/
    fi
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    # shellcheck source=/dev/null
    source "$HOME"/.cargo/env
else
    echo "rustup is already installed"
fi

# Check if wasm-pack is installed
if ! command -v wasm-pack &> /dev/null
then
    cargo install wasm-pack
else
    echo "wasm-pack is already installed"
fi
