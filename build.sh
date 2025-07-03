#!/bin/bash

# Build script for fun Go binary

set -e

echo "Building fun binary..."

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Build the binary
go build -o fun-bin ./cmd/main.go

echo "Build completed successfully!"
echo "Binary created: $SCRIPT_DIR/fun-bin"

# Make it executable
chmod +x fun-bin

echo "Binary is ready to use."
