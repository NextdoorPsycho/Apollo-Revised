#!/usr/bin/env bash
#
# Install the Homebrew dependencies required to build (and package) Apollo on macOS.
# Used both locally and by the GitHub Actions workflow.
#
set -euo pipefail

command -v brew >/dev/null 2>&1 || {
    echo "error: Homebrew is required. Install it from https://brew.sh" >&2
    exit 1
}

# Build dependencies. node provides npm for the web UI build. dylibbundler is used by
# scripts/macos_package.sh to produce a relocatable, self-contained app bundle.
PACKAGES=(
    cmake
    pkg-config
    boost
    openssl@3
    miniupnpc
    opus
    curl
    icu4c
    node
    dylibbundler
)

echo "==> Installing Homebrew packages: ${PACKAGES[*]}"
brew install "${PACKAGES[@]}"
echo "==> Done."
