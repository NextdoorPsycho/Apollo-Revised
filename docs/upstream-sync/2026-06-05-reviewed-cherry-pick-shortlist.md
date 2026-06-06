# Reviewed Sunshine Cherry-Pick Shortlist - 2026-06-05

- Local Apollo ref: `master` at `99595263`
- Sunshine upstream ref: `sunshine-upstream/master` at `fa4fbbdd`
- Merge base: `1a96d135140ddfe5255516971c88f112b9da5beb`
- Full generated audit: `docs/upstream-sync/2026-06-05-upstream-commit-audit.md`
- Generated broad candidate list: `docs/upstream-sync/2026-06-05-cherry-pick-candidates.md`

This is the manual, actionable queue after spot-checking the generated commit-by-commit audit. It favors commits that improve latency, high-FPS behavior, network behavior, security/session correctness, or macOS server usability without replacing Apollo-specific virtual display, OTP/API, branding, or packaging behavior.

## High-Confidence Direct Picks

These are small enough to try as direct cherry-picks first. Build and stream-test after each small batch.

- `5bacfd59` - `fix(nvenc): Include bitstream restrictions in H.264/HEVC SPS (#4556)`
  - Scope: `src/nvenc/nvenc_base.cpp`, 3 insertions.
  - Why: low-risk encoder bitstream correctness for H.264/HEVC clients.

- `0db9f73e` - `feat(nvenc): support intraRefresh for h264, add outputRecoveryPointSEI=1 to intra-refresh config for h264 and hevc (#5091)`
  - Scope: `src/nvenc/nvenc_base.cpp`, 16 insertions.
  - Why: encoder resilience around refresh/recovery points; relevant to high-motion stream stability.

- `8836db5d` - `fix(config): Add missing framerateX100 fields at the initializers for the video::config_t literals (#4391)`
  - Scope: `src/video.cpp`, 4 line updates.
  - Why: config correctness for fractional/high-refresh paths.

- `7228c255` - `fix(rtsp): ignore clientRefreshRateX100 if more than 1% variance from framerate (#5027)`
  - Scope: `src/rtsp.cpp`, 10 insertions.
  - Why: avoids accepting inconsistent client refresh-rate metadata.

- `adb443f0` - `fix(win): Windows.Graphics.Capture API frame rate capped at 60fps (#4424)`
  - Scope: `src/platform/windows/display_wgc.cpp`, 9 insertions.
  - Why: directly relevant if the RTX host uses Windows Graphics Capture and targets 120/240 FPS.

- `31b85802` - `fix: redact logging of sensitive config & CSRF validation (#4955)`
  - Scope: `src/config.cpp`, `src/config.h`, `src/main.cpp`.
  - Why: security/session hygiene; check Apollo config names and OTP paths before accepting.

- `72faa710` - `fix: restore stdin-based pairing (#4912)`
  - Scope: `src/nvhttp.cpp`, 1 insertion.
  - Why: tiny compatibility fix, but verify it does not conflict with Apollo OTP pairing.

- `dca3e8ba` - `fix(network): restore ExternalIP in server info response (#5043)`
  - Scope: `src/nvhttp.cpp`, 4 insertions.
  - Why: low-risk server info correctness.

## Mac Host / Mac Packaging Picks

These are good if Apollo server-on-mac remains supported. They are less relevant to the NVIDIA RTX host path unless that path is being tested from macOS.

- `b0bf5105` - `fix(macos/input): Fix handling of mouse wheel scroll events (#4592)`
  - Scope: `src/platform/macos/input.cpp`.

- `44cca9a5` - `fix(macos): preserve modifier state in input events (#5102)`
  - Scope: `src/platform/macos/input.cpp`.

- `33bdb011` - `fix(macos): provide left/right identity for modifiers (#5115)`
  - Scope: `src/platform/macos/input.cpp`.

- `be18f2f3` - `fix(macos): scale remote scroll input using macOS scroll speed (#5133)`
  - Scope: `src/platform/macos/input.cpp`.

- `81a84148` - `fix(macos/packaging): add NSLocalNetworkUsageDescription so Bonjour can register (#5186)`
  - Scope: `src_assets/macos/build/Info.plist.in`, 2 insertions.

- `d7e88da0` - `build(macos): quote SHOULD_SIGN env expansion in install script (#5185)`
  - Scope: `cmake/packaging/macos.cmake`, 1 line update.

- `53f05d48` - `fix(macos): hide the Dock icon (#4823)`
  - Scope: `src_assets/macos/build/Info.plist.in`, 2 insertions.

## Valuable, But Manual-Port / Guarded

These are probably worth importing, but not as blind single-commit cherry-picks. They touch Apollo-sensitive config, web UI, session, or dependency surfaces.

- `6ed0c7a8` - `feat(fps): support x-nv-video[0].clientRefreshRateX100 for requesting fractional NTSC framerates (#4019)`
  - Scope: `src/nvenc/nvenc_base.cpp`, Windows display, `src/rtsp.cpp`, `src/video.cpp`, `src/video.h`, tests.
  - Why: important high-refresh/fractional-refresh behavior.
  - Guardrail: Apollo virtual-display refresh-rate handling must be verified.

- `3a69acef` - `feat(rtsp): add option to limit packetsize for clients that cannot configure it (#5153)`
  - Scope: config docs, `src/config.*`, `src/rtsp.cpp`, web config.
  - Why: directly aligns with the LAN packet-size profile work.
  - Guardrail: port the config/RTSP behavior carefully; skip or adapt Sunshine web UI pieces if Apollo UI diverged.

- `3c54d5ff` - `fix(web): the packetsize upper limit is 65535 (#5167)`
  - Scope: web locale only.
  - Why: only matters if importing the packet-size web/config UI.

- `3a196379` - `fix(web): disconnect only the disabled client instead of all sessions (#5138)`
  - Scope: `src/confighttp.cpp`, `src/nvhttp.*`, `src/rtsp.*`, `src/stream.*`.
  - Why: session correctness.
  - Guardrail: touches active stream/session control, so verify Apollo OTP/client behavior and active streams.

- `0aa7e3fd` - `feat(network): allow binding to specific interface (#4481)`
  - Scope: config, HTTP/RTSP/stream networking, web UI, tests.
  - Why: useful on multi-NIC hosts; not a direct latency win on a simple wired LAN.
  - Guardrail: config-name conflicts and Apollo web UI divergence.

- `3a12f96a` - `perf(threads): implement adjust_thread_priority for macOS and add set_thread_name (#4605)`
  - Scope: audio, HTTP, RTSP, stream, video, platform common, macOS/windows/linux misc.
  - Why: useful observability and potential scheduling improvements.
  - Guardrail: broad cross-platform runtime touch; test stream startup/shutdown.

- `44bf39be` - `fix: Resolve minimum_fps_target related issues on all platforms (#4967)`
  - Scope: `src/video.cpp`, `src/thread_safe.h`, platform headers/linux pipewire.
  - Why: likely relevant to high-FPS profile correctness.
  - Guardrail: inspect Apollo local video timing changes before accepting.

- `a5af7907` - `feat(nvenc): support for split frame encoding on GPUs with 2+ nvenc blocks (#4892)`
  - Scope: NVENC core/config, docs, web UI, FFmpeg/codec header dependencies.
  - Why: highly relevant to RTX hosts with multiple NVENC blocks.
  - Guardrail: do not import blindly. First determine whether Apollo's pinned FFmpeg/nv-codec headers can support it, then port the NVENC core and config key while preserving Apollo defaults.

- `3ee4144a` - `fix(macos): drop max_ref_frames=1 for h264_videotoolbox and enable PARALLEL_ENCODING (#5200)`
  - Scope: `src/video.cpp`.
  - Why: macOS VideoToolbox quality/perf fix.
  - Guardrail: not relevant to NVIDIA NVENC host path; keep out of first RTX batch.

- `24b66fed` - `fix(csrf): make errors more apparent (#4889)`
  - Scope: `src/confighttp.cpp` plus larger Vue/web UI changes.
  - Why: useful UX/security error visibility.
  - Guardrail: Apollo web UI is branded/diverged; port backend error behavior separately if needed.

- `d0333469` - `feat(api/ui): add client enable/disable access control (#4771)`
  - Scope: HTTP/API, `nvhttp`, web troubleshooting UI.
  - Why: useful management feature.
  - Guardrail: not a latency/quality win; could conflict with Apollo permission/OTP work.

## Additional Second-Tier Picks

These are not part of the first latency import queue, but they are legitimate upstream fixes to consider after the core stream/NVENC/network items.

- `b91ace72` - `fix: explicitly check construct function error in thread_safe.h (#5184)`
  - Scope: `src/thread_safe.h`, 1 line.
  - Why: tiny defensive correctness fix.

- `852dee0a` - `fix(launch): Fix several launch failure conditions (exceptions thrown in child.wait, and boost::split_unix) (#4390)`
  - Scope: `src/nvhttp.cpp`, `src/process.cpp`.
  - Why: launch reliability; useful because Apollo app/session launching is central.
  - Guardrail: inspect against Apollo virtual-display/session-launch changes before importing.

- `8294ab23` - `fix(config): create apps.json from default after loading file_apps cfg (#4568)`
  - Scope: `src/config.cpp`, 24 line edits.
  - Why: config-file correctness around app definitions.

- `f1a66753` - `fix(config): ensure apps.json is writeable (#4249)`
  - Scope: `src/config.cpp`, 5 insertions.
  - Why: small config robustness fix.

- `676d331b` - `fix: building without the system tray enabled (#5092)`
  - Scope: `src/main.cpp`.
  - Why: build-variant correctness if Apollo keeps tray optional.

- `3d849168` - `fix: show actual bind address in Web UI log message (#4897)`
  - Scope: `src/confighttp.cpp`, 8 line edits.
  - Why: low-risk observability improvement.

- `e22c5c9e` - `fix(log): prevent sink destruction caused by backend exceptions (#4694)`
  - Scope: `src/logging.cpp`, 6 insertions.
  - Why: logging resilience; useful for debugging stream failures.

- `fbcf2116` - `feat(audio): allow sending continuous audio (#4261)`
  - Scope: audio, RTSP, platform common, unit tests.
  - Why: stream behavior improvement if Apollo has audio dropout or session-start audio issues.
  - Guardrail: test latency and audio idle behavior; not a video-latency first pick.

- `2cd7ba35` - `fix(audio): fix install of Steam Streaming Speakers driver (#5125)`
  - Scope: `src/platform/windows/audio.cpp`, 1 line.
  - Why: tiny Windows audio install fix.

- `d3af56d6` - `fix(windows): Memory leak when EnumAdapters1 uses dxgi::adapter_t address as parameter (#4340)`
  - Scope: `src/platform/windows/display_base.cpp`.
  - Why: small Windows display enumeration leak fix.

- `fd2bfaac` - `fix(windows): resolve disappearing cursor after KVM switch (#4407)`
  - Scope: platform common/misc and `src/video.cpp`.
  - Why: Windows host usability fix.
  - Guardrail: touches common platform hooks; verify stream cursor behavior.

- `293c1ed3` - `fix: touch scaling bug and initialize display variables as 0 (#4758)`
  - Scope: platform common, Windows input, `src/video.cpp`.
  - Why: input/display initialization correctness.
  - Guardrail: verify Apollo virtual display dimensions and touch/mouse scaling.

- `5f8dab09` - `fix: struct ordering broken in 188f1e2959e44b4a463bf4dee616a5cbee6f3557 (#4802)`
  - Scope: input/platform/video color structs.
  - Why: correctness repair for a prior upstream refactor.
  - Guardrail: only import if the related struct layout/refactor exists or is being imported.

- `49197c71` - `fix(video): fix leaky abstraction in ogl luma shader (#4404)`
  - Scope: one Linux OpenGL shader line.
  - Why: harmless if Linux OpenGL capture remains supported.

- `cdb7e2b8` - `feat(video): use unified color conversion matrix generator (#4387)`
  - Scope: Windows/Linux color conversion files.
  - Why: cleanup and consistency in color conversion.
  - Guardrail: broader video color change; visual regression test required.

## Defer Unless Needed

- Pure CI/dependency/localization churn: numerous `build(deps)`, `chore(deps)`, `ci`, and `chore(l10n)` commits.
- Broad web UI replacement/modernization commits: useful only if Apollo wants to converge on Sunshine web UI, which is not the current goal.
- Linux capture rewrites such as XDG portal, KWin direct capture, Vulkan encoder, PipeWire multi-monitor fixes: defer unless Apollo is targeting Linux server capture parity now.
- FreeBSD packaging and broad Windows installer refactors: defer unless packaging failures require them.
- Full macOS signed app/dmg packaging (`423a864e`) and macOS Tap audio (`0d3be0bb`): useful but too broad for the first upstream import batch.

## Suggested Import Batches

1. Tiny correctness/security: `5bacfd59`, `0db9f73e`, `8836db5d`, `7228c255`, `31b85802`, `72faa710`, `dca3e8ba`.
2. Windows/high-FPS host support: `adb443f0`, then manually review `6ed0c7a8` and `44bf39be`.
3. LAN packet sizing: manually port `3a69acef`; include `3c54d5ff` only if Sunshine web config copy is imported.
4. Session correctness: manually review `3a196379`.
5. NVENC RTX enhancements: dependency-check and manually port `a5af7907`.
6. Mac-only support: input and Info.plist fixes if Apollo server-on-mac is part of the release target.
