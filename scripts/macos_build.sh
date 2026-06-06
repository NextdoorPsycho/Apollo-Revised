#!/usr/bin/env bash
#
# Build Apollo for macOS (Apple Silicon / arm64).
#
# This script is the single source of truth for the macOS build recipe: it is used both for
# local development and by the GitHub Actions workflow, so the two never drift apart.
#
# Environment overrides (all optional):
#   BUILD_DIR     - output directory                       (default: <repo>/build)
#   BUILD_TYPE    - CMake build type                       (default: Release)
#   BUILD_TESTS   - ON/OFF to build the test suite         (default: OFF)
#   JOBS          - parallel build jobs                    (default: number of CPUs)
#   COMMIT        - commit hash embedded as the version    (default: read from git)
#   BUILD_VERSION - explicit numeric MAJOR.MINOR.PATCH     (default: 0.0.<commit-count>)
#   BRANCH        - branch name for package manifests      (default: read from git)
#   SKIP_SUBMODULES - set to 1 to skip submodule init      (default: init if missing)
#   CMAKE_EXTRA_ARGS - extra args appended to the cmake configure (default: none)
#
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILD_DIR="${BUILD_DIR:-${REPO_ROOT}/build}"
BUILD_TYPE="${BUILD_TYPE:-Release}"
BUILD_TESTS="${BUILD_TESTS:-OFF}"
JOBS="${JOBS:-$(sysctl -n hw.ncpu)}"

log() { printf '\033[1;36m==>\033[0m %s\n' "$*"; }
err() { printf '\033[1;31merror:\033[0m %s\n' "$*" >&2; exit 1; }

require() { command -v "$1" >/dev/null 2>&1 || err "'$1' not found. Install Xcode Command Line Tools and Homebrew dependencies (see scripts/macos_deps.sh)."; }
require brew
require cmake
require git
require npm

# Ensure the submodules that provide source + the prebuilt FFmpeg binaries are present.
if [[ "${SKIP_SUBMODULES:-0}" != "1" ]]; then
    arch="$(uname -m)"
    if [[ ! -d "${REPO_ROOT}/third-party/build-deps/dist/Darwin-${arch}/lib" ]]; then
        log "Initializing git submodules (recursive)"
        git -C "${REPO_ROOT}" submodule update --init --recursive
    fi
fi

# Resolve Homebrew prefixes dynamically. On Apple Silicon these live under /opt/homebrew; some
# packages (openssl@3, curl, icu4c) are keg-only and must be put on the search paths explicitly.
HB_PREFIX="$(brew --prefix)"
OPENSSL_PREFIX="$(brew --prefix openssl@3)"
CURL_PREFIX="$(brew --prefix curl)"
ICU_PREFIX="$(brew --prefix icu4c)"

export PKG_CONFIG_PATH="${OPENSSL_PREFIX}/lib/pkgconfig:${CURL_PREFIX}/lib/pkgconfig:${ICU_PREFIX}/lib/pkgconfig:${HB_PREFIX}/lib/pkgconfig:${HB_PREFIX}/share/pkgconfig${PKG_CONFIG_PATH:+:${PKG_CONFIG_PATH}}"

# Export version metadata so cmake/prep/build_version.cmake can pick it up. These are optional;
# when unset, the version is derived entirely from git (commit hash + commit count).
[[ -n "${COMMIT:-}" ]] && export COMMIT
[[ -n "${BUILD_VERSION:-}" ]] && export BUILD_VERSION
[[ -n "${BRANCH:-}" ]] && export BRANCH

log "Configuring ${BUILD_TYPE} build in ${BUILD_DIR}"
cmake -B "${BUILD_DIR}" -S "${REPO_ROOT}" \
    -DCMAKE_BUILD_TYPE="${BUILD_TYPE}" \
    -DCMAKE_PREFIX_PATH="${HB_PREFIX};${OPENSSL_PREFIX};${CURL_PREFIX};${ICU_PREFIX}" \
    -DCMAKE_IGNORE_PREFIX_PATH="/usr/local" \
    -DOPENSSL_ROOT_DIR="${OPENSSL_PREFIX}" \
    -DOPENSSL_INCLUDE_DIR="${OPENSSL_PREFIX}/include" \
    -DOPENSSL_CRYPTO_LIBRARY="${OPENSSL_PREFIX}/lib/libcrypto.dylib" \
    -DOPENSSL_SSL_LIBRARY="${OPENSSL_PREFIX}/lib/libssl.dylib" \
    -DCMAKE_POLICY_VERSION_MINIMUM="3.5" \
    -DCMAKE_POLICY_DEFAULT_CMP0167="NEW" \
    -DBUILD_TESTS="${BUILD_TESTS}" \
    ${CMAKE_EXTRA_ARGS:-}

log "Building with ${JOBS} jobs"
cmake --build "${BUILD_DIR}" --config "${BUILD_TYPE}" -j "${JOBS}"

log "Build complete: ${BUILD_DIR}/sunshine"
"${BUILD_DIR}/sunshine" version >/dev/null 2>&1 && log "Binary launches (exit 0)" || true
