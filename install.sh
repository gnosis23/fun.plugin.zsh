#!/bin/bash

set -e

INSTALL_DIR="$HOME/.config/fun-plugin-zsh"

build_binary() {
  bash ./build.sh
}

install_binary() {
  echo "Installing binary to $INSTALL_DIR"
  mkdir -p "$INSTALL_DIR"

  cp ./fun-bin "$INSTALL_DIR/fun-bin"
  chmod +x "$INSTALL_DIR/fun-bin"

  echo "Binary installed successfully"
}

main() {
  build_binary
  install_binary
}

main
