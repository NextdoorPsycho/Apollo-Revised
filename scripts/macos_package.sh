#!/usr/bin/env bash
#
# Package Apollo into a portable, self-contained macOS tarball.
#
# The binary is built with a working-directory-relative assets path and all non-system Homebrew
# dylibs are copied into the bundle and rewritten to @executable_path/lib, so the result runs on a
# clean Mac (no Homebrew required). Used by the GitHub Actions release workflow.
#
# Environment overrides (all optional):
#   PKG_BUILD_DIR - build directory for the packaged binary  (default: <repo>/build-package)
#   DIST_DIR      - output directory for the tarball          (default: <repo>/dist)
#   COMMIT        - commit hash (used for naming + version)   (default: read from git)
#
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PKG_BUILD_DIR="${PKG_BUILD_DIR:-${REPO_ROOT}/build-package}"
DIST_DIR="${DIST_DIR:-${REPO_ROOT}/dist}"
ARCH="$(uname -m)"

log() { printf '\033[1;36m==>\033[0m %s\n' "$*"; }
command -v dylibbundler >/dev/null 2>&1 || { echo "error: dylibbundler not found (brew install dylibbundler)" >&2; exit 1; }

COMMIT="${COMMIT:-$(git -C "${REPO_ROOT}" rev-parse HEAD)}"
SHORT_SHA="${COMMIT:0:7}"

# Build the binary with assets resolved relative to the working directory (portable), into a
# dedicated build dir so it does not clobber a developer's main build/.
#
# SUNSHINE_ASSETS_DIR_DEF is the path baked into the binary for locating assets at runtime. By
# default the unix compile definitions prepend CMAKE_INSTALL_PREFIX (e.g. /usr/local/assets); we
# override it to the relative "assets" so the bundle finds ./assets next to itself (see run.sh).
log "Building packaged binary (assets relative to executable)"
BUILD_DIR="${PKG_BUILD_DIR}" \
COMMIT="${COMMIT}" \
CMAKE_EXTRA_ARGS="-DSUNSHINE_ASSETS_DIR_DEF=assets ${CMAKE_EXTRA_ARGS:-}" \
    "${REPO_ROOT}/scripts/macos_build.sh"

STAGE="${DIST_DIR}/Apollo-macos-${ARCH}"
log "Staging bundle at ${STAGE}"
rm -rf "${STAGE}"
mkdir -p "${STAGE}/lib"

# Copy the real binary (resolve the versioned symlink) and the assets next to it.
cp -L "${PKG_BUILD_DIR}/sunshine" "${STAGE}/sunshine"
chmod +x "${STAGE}/sunshine"
cp -R "${PKG_BUILD_DIR}/assets" "${STAGE}/assets"

# Bundle all non-system dylibs into lib/ and rewrite the load paths to be relative to the binary.
log "Bundling dependent dylibs"
dylibbundler --overwrite-dir --bundle-deps --create-dir \
    --fix-file "${STAGE}/sunshine" \
    --dest-dir "${STAGE}/lib" \
    --install-path "@executable_path/lib/" >/dev/null

# dylibbundler can leave behind duplicate LC_RPATH entries (it rewrites every existing rpath to the
# install path). Modern dyld treats duplicate rpaths as a fatal load error, so collapse the rpath
# set on every Mach-O to a unique list. The bundled libraries already reference each other by full
# @executable_path/lib path, so the rpaths are belt-and-suspenders only.
dedupe_rpaths() {
    local f="$1" rp
    local uniq
    uniq="$(otool -l "$f" | awk '/cmd LC_RPATH/{f=1} f&&/path /{print $2; f=0}' | sort -u)"
    while IFS= read -r rp; do
        [[ -z "$rp" ]] && continue
        while install_name_tool -delete_rpath "$rp" "$f" 2>/dev/null; do :; done
        install_name_tool -add_rpath "$rp" "$f" 2>/dev/null || true
    done <<< "$uniq"
}
log "De-duplicating rpaths and ad-hoc signing"
while IFS= read -r -d '' f; do dedupe_rpaths "$f"; done < <(find "${STAGE}/lib" -name '*.dylib' -print0)
dedupe_rpaths "${STAGE}/sunshine"

# install_name_tool edits invalidate the code signature; arm64 requires a valid signature to run.
# Re-sign everything ad-hoc (libs first, then the executable).
find "${STAGE}/lib" -name '*.dylib' -exec codesign --force --sign - {} \; >/dev/null 2>&1
codesign --force --sign - "${STAGE}/sunshine" >/dev/null 2>&1

# Launcher that always runs from the bundle directory so ./assets resolves correctly.
cat > "${STAGE}/run.sh" <<'EOF'
#!/usr/bin/env bash
cd "$(dirname "$0")"
exec ./sunshine "$@"
EOF
chmod +x "${STAGE}/run.sh"

cat > "${STAGE}/README.txt" <<EOF
Apollo for macOS (${ARCH})
commit ${COMMIT}

This is an unsigned pre-release build. To run it:

  ./run.sh

macOS Gatekeeper will block unsigned binaries on first launch. If needed, clear the
quarantine attribute after extracting:

  xattr -dr com.apple.quarantine "$(pwd)/Apollo-macos-${ARCH}"

The bundle is self-contained: dependent libraries live in lib/ and are loaded relative
to the executable, so Homebrew is not required to run it.
EOF

mkdir -p "${DIST_DIR}"
TARBALL="${DIST_DIR}/Apollo-macos-${ARCH}-${SHORT_SHA}.tar.gz"
log "Creating ${TARBALL}"
# Strip Finder/AppleDouble cruft so it never ends up in the artifact.
find "${STAGE}" -name '.DS_Store' -delete
COPYFILE_DISABLE=1 tar --no-xattrs --exclude='.DS_Store' -C "${DIST_DIR}" -czf "${TARBALL}" "Apollo-macos-${ARCH}"

log "Done: ${TARBALL}"
# Emit the artifact path on stdout's last line for CI consumption.
echo "${TARBALL}"
