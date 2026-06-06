# Sunshine Upstream Cherry-Pick Candidates - 2026-06-05

- Local ref: `master` at `99595263`
- Upstream ref: `sunshine-upstream/master` at `fa4fbbdd`
- Merge base: `1a96d135140ddfe5255516971c88f112b9da5beb`
- Upstream-only commits audited: 434

This list is generated from the commit-by-commit audit. Treat it as a queue, not approval to import blindly.

## First-pass Cherry-Pick Queue

- `3a12f96a` - perf(threads): implement adjust_thread_priority for macOS and add set_thread_name (#4605)
  - Tags: rtsp/network, encoder/video, macos, linux/capture
  - Risk: Low/Medium
  - Files: src/audio.cpp, src/confighttp.cpp, src/main.cpp, src/nvhttp.cpp, src/platform/common.h, ... 12 more
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `aea95126` - chore: clean up implicit conversions (#4611)
  - Tags: rtsp/network, encoder/video, macos, ci
  - Risk: Low/Medium
  - Files: src/audio.cpp, src/config.cpp, src/confighttp.cpp, src/crypto.cpp, src/display_device.cpp, ... 8 more
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `fd2bfaac` - fix(windows): resolve disappearing cursor after KVM switch (#4407)
  - Tags: encoder/video, macos, linux/capture
  - Risk: Low/Medium
  - Files: src/platform/common.h, src/platform/linux/misc.cpp, src/platform/macos/misc.mm, src/platform/windows/misc.cpp, src/video.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `32100783` - fix(linux): auto-detect GPU with connected display for VAAPI and Vulkan (#4961)
  - Tags: encoder/video, macos, linux/capture
  - Risk: Low/Medium
  - Files: src/platform/common.h, src/platform/linux/misc.cpp, src/platform/linux/vaapi.cpp, src/platform/linux/vulkan_encode.cpp, src/platform/macos/misc.mm, ... 2 more
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `6ed0c7a8` - feat(fps): support x-nv-video[0].clientRefreshRateX100 for requesting fractional NTSC framerates (#4019)
  - Tags: rtsp/network, encoder/video
  - Risk: Low/Medium
  - Files: src/nvenc/nvenc_base.cpp, src/platform/windows/display.h, src/platform/windows/display_base.cpp, src/rtsp.cpp, src/video.cpp, ... 2 more
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `fbcf2116` - feat(audio): allow sending continuous audio (#4261)
  - Tags: rtsp/network, macos, linux/capture
  - Risk: Low/Medium
  - Files: src/audio.cpp, src/audio.h, src/nvhttp.cpp, src/platform/common.h, src/platform/linux/audio.cpp, ... 5 more
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `3ee4144a` - fix(macos): drop max_ref_frames=1 for h264_videotoolbox and enable PARALLEL_ENCODING (#5200)
  - Tags: encoder/video, macos
  - Risk: Low/Medium
  - Files: src/video.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `81a84148` - fix(macos/packaging): add NSLocalNetworkUsageDescription so Bonjour can register (#5186)
  - Tags: rtsp/network, macos, web-ui
  - Risk: Medium/High
  - Files: src_assets/macos/build/Info.plist.in
  - Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.

- `ecba5c3c` - fix(linux): security: drop CAP_SYS_ADMIN when possible, retain CAP_SYS_NICE (#5075)
  - Tags: security/session, linux/capture
  - Risk: Low/Medium
  - Files: src/platform/common.h, src/platform/linux/kwingrab.cpp, src/platform/linux/misc.cpp, src/platform/linux/portalgrab.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `aca5d23f` - fix(linux): fix issues with rendering and touchscreens when displays are scaled (#4607)
  - Tags: encoder/video, linux/capture
  - Risk: Low/Medium
  - Files: src/input.cpp, src/input.h, src/platform/common.h, src/platform/linux/kmsgrab.cpp, src/platform/linux/wayland.cpp, ... 1 more
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `99d4e053` - fix(linux/xdgportal): avoid duplicate frame insertion (#4839)
  - Tags: encoder/video, linux/capture
  - Risk: Low/Medium
  - Files: src/platform/common.h, src/platform/linux/portalgrab.cpp, src/video.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `31b85802` - fix: redact logging of sensitive config & CSRF validation (#4955)
  - Tags: security/session
  - Risk: Low/Medium
  - Files: src/config.cpp, src/config.h, src/main.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `225c3e9e` - fix(linux/vulkan): encoder not working on NVIDIA GPUs (#4994)
  - Tags: encoder/video, linux/capture
  - Risk: Low/Medium
  - Files: src/platform/linux/vulkan_encode.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `44bf39be` - fix: Resolve minimum_fps_target related issues on all platforms (#4967)
  - Tags: encoder/video, linux/capture
  - Risk: Low/Medium
  - Files: src/platform/common.h, src/platform/linux/pipewire.cpp, src/thread_safe.h, src/video.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `f8792944` - feat(macos/build): add basic macOS build script based on linux_build.sh (#4598)
  - Tags: macos, linux/capture, build/deps
  - Risk: Medium
  - Files: scripts/linux_build.sh, scripts/macos_build.sh
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `7228c255` - fix(rtsp): ignore clientRefreshRateX100 if more than 1% variance from framerate (#5027)
  - Tags: rtsp/network
  - Risk: Low/Medium
  - Files: src/rtsp.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `dca3e8ba` - fix(network): restore ExternalIP in server info response (#5043)
  - Tags: rtsp/network
  - Risk: Low/Medium
  - Files: src/nvhttp.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `8836db5d` - fix(config): Add missing framerateX100 fields at the initializers for the video::config_t literals (#4391)
  - Tags: encoder/video
  - Risk: Low/Medium
  - Files: src/video.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `5bacfd59` - fix(nvenc): Include bitstream restrictions in H.264/HEVC SPS (#4556)
  - Tags: encoder/video
  - Risk: Low/Medium
  - Files: src/nvenc/nvenc_base.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `293c1ed3` - fix: touch scaling bug and initialize display variables as 0 (#4758)
  - Tags: encoder/video
  - Risk: Low/Medium
  - Files: src/platform/common.h, src/platform/windows/input.cpp, src/video.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `0db9f73e` - feat(nvenc): support intraRefresh for h264, add outputRecoveryPointSEI=1 to intra-refresh config for h264 and hevc (#5091)
  - Tags: encoder/video
  - Risk: Low/Medium
  - Files: src/nvenc/nvenc_base.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `d7e88da0` - build(macos): quote SHOULD_SIGN env expansion in install script (#5185)
  - Tags: macos, build/deps
  - Risk: Medium
  - Files: cmake/packaging/macos.cmake
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `3c7952b2` - fix(linux/vulkan): preserve host aspect ratio in encoder output (#5130)
  - Tags: encoder/video, linux/capture, web-ui
  - Risk: Medium/High
  - Files: src/platform/linux/vulkan_encode.cpp, src_assets/linux/assets/shaders/vulkan/rgb2yuv.comp
  - Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.

## Useful After First Queue

- `b0bf5105` - fix(macos/input): Fix handling of mouse wheel scroll events (#4592)
  - Tags: macos
  - Risk: Low/Medium
  - Files: src/platform/macos/input.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `2b7af211` - refactor: replace macros with constexpr/consts (#4791)
  - Tags: macos, linux/capture
  - Risk: Low/Medium
  - Files: src/config.cpp, src/entry_handler.cpp, src/input.cpp, src/platform/common.h, src/platform/linux/publish.cpp, ... 7 more
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `44cca9a5` - fix(macos): preserve modifier state in input events (#5102)
  - Tags: macos
  - Risk: Low/Medium
  - Files: src/platform/macos/input.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `33bdb011` - fix(macos): provide left/right identity for modifiers (#5115)
  - Tags: macos
  - Risk: Low/Medium
  - Files: src/platform/macos/input.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `be18f2f3` - fix(macos): scale remote scroll input using macOS scroll speed (#5133)
  - Tags: macos
  - Risk: Low/Medium
  - Files: src/platform/macos/input.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `3a196379` - fix(web): disconnect only the disabled client instead of all sessions (#5138)
  - Tags: rtsp/network, web-ui
  - Risk: Low/Medium
  - Files: src/confighttp.cpp, src/nvhttp.cpp, src/nvhttp.h, src/rtsp.cpp, src/rtsp.h, ... 2 more
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `941f6453` - feat(macos/tray): allow tray icon paths to be set at runtime from .app bundle (#4711)
  - Tags: macos
  - Risk: Low/Medium
  - Files: src/system_tray.cpp
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `24b66fed` - fix(csrf): make errors more apparent (#4889)
  - Tags: security/session, web-ui, l10n
  - Risk: Medium/High
  - Files: src/confighttp.cpp, src_assets/common/assets/web/Navbar.vue, src_assets/common/assets/web/Notification.vue, src_assets/common/assets/web/apps.html, src_assets/common/assets/web/config.html, ... 6 more
  - Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.

- `d5916437` - build(windows): add arm64 support (#3905)
  - Tags: encoder/video, build/deps, ci, docs
  - Risk: Medium
  - Files: .github/workflows/ci-bundle.yml, .github/workflows/ci-windows.yml, cmake/compile_definitions/windows.cmake, cmake/dependencies/windows.cmake, cmake/packaging/windows.cmake, ... 15 more
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `53f05d48` - fix(macos): hide the Dock icon (#4823)
  - Tags: macos, web-ui
  - Risk: Medium/High
  - Files: src_assets/macos/build/Info.plist.in
  - Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.

- `a5af7907` - feat(nvenc): support for split frame encoding on GPUs with 2+ nvenc blocks (#4892)
  - Tags: encoder/video, linux/capture, web-ui, build/deps, docs, l10n
  - Risk: Medium/High
  - Files: .gitmodules, docs/configuration.md, packaging/linux/flatpak/modules/ffmpeg.json, src/config.cpp, src/nvenc/nvenc_base.cpp, ... 10 more
  - Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.

## Guarded / Only If Needed

- `f9d1aca7` - build(macos): configure C++ standard and ICU root (#5101)
  - Tags: macos, build/deps, ci
  - Risk: Medium/High
  - Files: .github/workflows/ci-macos.yml, CMakeLists.txt, cmake/targets/common.cmake, packaging/sunshine.rb, scripts/macos_build.sh, ... 2 more
  - Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.

- `0d3be0bb` - feat(macOS): Capture audio on macOS using Tap API (#4209)
  - Tags: macos, linux/capture, web-ui, build/deps, ci, docs, l10n
  - Risk: Medium/High
  - Files: .github/workflows/ci-homebrew.yml, .github/workflows/ci-macos.yml, README.md, cmake/compile_definitions/macos.cmake, cmake/dependencies/macos.cmake, ... 16 more
  - Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.

- `0752f641` - feat(linux): Add Vulkan video encoder (#4603)
  - Tags: encoder/video, linux/capture, web-ui, build/deps, ci, docs, l10n
  - Risk: Medium/High
  - Files: .github/workflows/ci-freebsd.yml, cmake/compile_definitions/linux.cmake, cmake/prep/options.cmake, cmake/scripts/binary_to_c.cmake, docs/configuration.md, ... 24 more
  - Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.

- `3c54d5ff` - fix(web): the packetsize upper limit is 65535 (#5167)
  - Tags: rtsp/network, web-ui, l10n
  - Risk: Medium/High
  - Files: src_assets/common/assets/web/public/assets/locale/en.json
  - Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.

- `1d6d916b` - build: add freebsd support (#4049)
  - Tags: encoder/video, linux/capture, web-ui, build/deps, ci, docs
  - Risk: Medium/High
  - Files: .github/workflows/ci-freebsd.yml, .github/workflows/ci.yml, CMakeLists.txt, README.md, cmake/compile_definitions/linux.cmake, ... 26 more
  - Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.

- `0aa7e3fd` - feat(network): allow binding to specific interface (#4481)
  - Tags: rtsp/network, web-ui, ci, docs, l10n
  - Risk: Medium/High
  - Files: docs/configuration.md, src/config.cpp, src/config.h, src/confighttp.cpp, src/network.cpp, ... 8 more
  - Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.

- `423a864e` - feat(macos): build a signed .app bundle in a .dmg (#4759)
  - Tags: macos, web-ui, build/deps, ci
  - Risk: Medium/High
  - Files: .github/workflows/ci-macos.yml, .github/workflows/ci.yml, cmake/compile_definitions/common.cmake, cmake/compile_definitions/macos.cmake, cmake/compile_definitions/unix.cmake, ... 17 more
  - Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.

- `438b2391` - ci(macOS): check notary status in separate job (#4820)
  - Tags: macos, ci, docs
  - Risk: Low/Medium
  - Files: .github/ISSUE_TEMPLATE/bug-report.yml, .github/workflows/ci-macos.yml, .github/workflows/ci.yml, docs/getting_started.md
  - Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.

- `3a69acef` - feat(rtsp): add option to limit packetsize for clients that cannot configure it (#5153)
  - Tags: rtsp/network, web-ui, docs, l10n
  - Risk: Medium/High
  - Files: docs/configuration.md, src/config.cpp, src/config.h, src/rtsp.cpp, src_assets/common/assets/web/config.html, ... 2 more
  - Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.

## Suggested Batch Order

1. Security/session and config fixes.
2. RTSP/network packet-size and refresh-rate fixes.
3. NVENC/video fixes that do not force large dependency movement.
4. macOS input/build fixes relevant to Apollo packaging.
5. Dependency/build bumps only when required by one of the above.
