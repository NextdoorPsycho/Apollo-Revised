# Apollo Upstream Import Progress - 2026-06-06

- Branch: `temp/apollo-upstream-import`
- Base Apollo commit: `99595263`
- Sunshine upstream reference used: `sunshine-upstream/master` at `fa4fbbdd`
- Validation: `SKIP_SUBMODULES=1 JOBS=8 BUILD_TESTS=OFF scripts/macos_build.sh` passed after imports and Apollo compatibility adaptations.

## Imported Commits

- `5bacfd59` - NVENC H.264/HEVC SPS bitstream restrictions.
- `0db9f73e` - NVENC intra-refresh recovery point SEI.
- `8836db5d` - missing `framerateX100` initializer coverage.
- `7228c255` - RTSP client refresh-rate sanity check.
- `31b85802` - sensitive config logging redaction.
- `72faa710` - restore stdin-based pairing.
- `dca3e8ba` - restore `ExternalIP` in server info response.
- `f1a66753` - ensure `apps.json` is writable.
- `d3af56d6` - Windows DXGI adapter enumeration leak fix.
- `adb443f0` - Windows Graphics Capture high-FPS update interval fix, adapted to Apollo's dynamic requested-FPS logic.
- `852dee0a` - launch failure handling improvements.
- `8294ab23` - create default `apps.json` after `file_apps` is parsed.
- `e22c5c9e` - logging backend exception resilience.
- `3d849168` - configuration UI bind-address logging, adapted to Apollo's address-family config.
- `676d331b` - build without system tray enabled.
- `b91ace72` - explicit thread-safe construct error check.
- `2cd7ba35` - Steam Streaming Speakers driver install fix.
- `6ed0c7a8` - `clientRefreshRateX100` fractional refresh-rate support, adapted by appending the field to Apollo's append-only `video::config_t`.
- `3a69acef` - RTSP packet-size limit config and web setting.

## Apollo Compatibility Commit

- `81a98615` - adapts imported upstream code to Apollo's current config/platform surface:
  - Removes imported CSRF-origin storage because this Apollo base does not have the matching CSRF enforcement path.
  - Uses Apollo's existing configured bind address string for Configuration UI logging.
  - Avoids the upstream `platf::set_thread_name()` helper because that helper was not imported in this batch.

## Remaining Guarded Candidates

- `3a196379` - disconnect only disabled client instead of all sessions. Useful, but touches active session/stream routing.
- `a5af7907` - NVENC split-frame encoding. Highly relevant to RTX hosts, but requires dependency/config review before import.
- `44bf39be` - minimum FPS target fixes. Relevant but touches timing-sensitive video code.
- macOS input fixes: `b0bf5105`, `44cca9a5`, `33bdb011`, `be18f2f3`.
