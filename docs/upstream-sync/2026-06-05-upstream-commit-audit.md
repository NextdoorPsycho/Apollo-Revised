# Sunshine Upstream Commit-by-Commit Audit - 2026-06-05

- Local ref: `master` at `99595263`
- Upstream ref: `sunshine-upstream/master` at `fa4fbbdd`
- Merge base: `1a96d135140ddfe5255516971c88f112b9da5beb`
- Divergence count, local/upstream: `456	434`
- Cherry-pick-equivalent count, local/upstream: `456	434`
- Upstream-only commits audited: 434

Each entry below is generated from Git metadata and changed paths. Use it to decide what deserves manual diff review before cherry-picking into Apollo.
## 1. 74e4e6cd - build(deps): bump third-party/build-deps from `c38829d` to `2840c8a` (#4307)

- Date: 2025-09-27
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/build-deps from `c38829d` to `2840c8a` (#4307).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/build-deps

## 2. c4e5a69c - build(packaging/homebrew): Rename class from @PROJECT_NAME@ to Sunshine (#4308)

- Date: 2025-09-27
- Author: ReenigneArcher
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: packaging. Subject indicates: build(packaging/homebrew): Rename class from @PROJECT_NAME@ to Sunshine (#4308).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- packaging/sunshine.rb

## 3. c16f0add - build(deps): bump LizardByte/actions from 2025.917.25039 to 2025.927.193939 in the lizardbyte-actions group (#4309)

- Date: 2025-09-28
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 7 insertions(+), 7 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump LizardByte/actions from 2025.917.25039 to 2025.927.193939 in the lizardbyte-actions group (#4309).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 4. b97b742e - build(deps): bump LizardByte/actions from 2025.927.193939 to 2025.929.125237 in the lizardbyte-actions group (#4313)

- Date: 2025-09-30
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 7 insertions(+), 7 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump LizardByte/actions from 2025.927.193939 to 2025.929.125237 in the lizardbyte-actions group (#4313).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 5. 8372c370 - fix(linux): service file for Trixie (#4319)

- Date: 2025-10-05
- Author: ReenigneArcher
- Tags: linux/capture
- Change size: 1 file changed, 4 insertions(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: scripts. Subject indicates: fix(linux): service file for Trixie (#4319).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- scripts/linux_build.sh

## 6. f52891d6 - build(linux): static link std libraries (#4321)

- Date: 2025-10-07
- Author: PVermeer
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 3 insertions(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps; primary path buckets: cmake. Subject indicates: build(linux): static link std libraries (#4321).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- cmake/targets/linux.cmake

## 7. ed7b78f1 - build(linux): enable cpack auto dependencies (#4323)

- Date: 2025-10-09
- Author: PVermeer
- Tags: linux/capture, build/deps, ci
- Change size: 2 files changed, 4 insertions(+), 2 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps, ci; primary path buckets: cmake, scripts. Subject indicates: build(linux): enable cpack auto dependencies (#4323).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- cmake/packaging/linux.cmake
- scripts/linux_build.sh

## 8. 246d8f17 - build(linux): explicitely set CC and CXX compilers (#4325)

- Date: 2025-10-11
- Author: PVermeer
- Tags: linux/capture, build/deps, ci
- Change size: 2 files changed, 24 insertions(+), 41 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps, ci; primary path buckets: .github, scripts. Subject indicates: build(linux): explicitely set CC and CXX compilers (#4325).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- .github/workflows/ci-linux.yml
- scripts/linux_build.sh

## 9. fbcf2116 - feat(audio): allow sending continuous audio (#4261)

- Date: 2025-10-12
- Author: Mariotaku
- Tags: rtsp/network, macos, linux/capture
- Change size: 10 files changed, 24 insertions(+), 10 deletions(-)
- Changed files: 10
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches rtsp/network, macos, linux/capture; primary path buckets: src, tests. Subject indicates: feat(audio): allow sending continuous audio (#4261).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/audio.cpp
- src/audio.h
- src/nvhttp.cpp
- src/platform/common.h
- src/platform/linux/audio.cpp
- src/platform/macos/microphone.mm
- src/platform/windows/audio.cpp
- src/rtsp.cpp
- src/rtsp.h
- tests/unit/test_audio.cpp

## 10. 8dd75c48 - build(deps): bump LizardByte/actions from 2025.929.125237 to 2025.1011.184228 in the lizardbyte-actions group (#4327)

- Date: 2025-10-11
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 7 insertions(+), 7 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump LizardByte/actions from 2025.929.125237 to 2025.1011.184228 in the lizardbyte-actions group (#4327).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 11. 6ed0c7a8 - feat(fps): support x-nv-video[0].clientRefreshRateX100 for requesting fractional NTSC framerates (#4019)

- Date: 2025-10-11
- Author: Andy Grundman
- Tags: rtsp/network, encoder/video
- Change size: 7 files changed, 80 insertions(+), 1 deletion(-)
- Changed files: 7
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches rtsp/network, encoder/video; primary path buckets: src, tests. Subject indicates: feat(fps): support x-nv-video[0].clientRefreshRateX100 for requesting fractional NTSC framerates (#4019).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/nvenc/nvenc_base.cpp
- src/platform/windows/display.h
- src/platform/windows/display_base.cpp
- src/rtsp.cpp
- src/video.cpp
- src/video.h
- tests/unit/test_video.cpp

## 12. 08454f73 - build(deps): bump third-party/build-deps from `2840c8a` to `1dd1b68` (#4326)

- Date: 2025-10-11
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/build-deps from `2840c8a` to `1dd1b68` (#4326).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/build-deps

## 13. a8e03a29 - fix(web-ui): translation function in DisplayOutputSelector label (#4328)

- Date: 2025-10-12
- Author: ReenigneArcher
- Tags: web-ui, l10n
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: fix(web-ui): translation function in DisplayOutputSelector label (#4328).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/configs/tabs/audiovideo/DisplayOutputSelector.vue

## 14. 179c01a2 - build(deps): bump actions/setup-node from 5 to 6 in the github-actions group (#4334)

- Date: 2025-10-14
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump actions/setup-node from 5 to 6 in the github-actions group (#4334).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-flatpak.yml

## 15. 56246378 - build(deps): bump LizardByte/actions from 2025.1011.184228 to 2025.1020.14905 in the lizardbyte-actions group (#4347)

- Date: 2025-10-20
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 7 insertions(+), 7 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump LizardByte/actions from 2025.1011.184228 to 2025.1020.14905 in the lizardbyte-actions group (#4347).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 16. 0b6b9e41 - build(deps): bump packaging/linux/flatpak/deps/shared-modules from `231e052` to `6537464` (#4346)

- Date: 2025-10-20
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/shared-modules from `231e052` to `6537464` (#4346).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/shared-modules

## 17. 8df1003b - build(deps): bump third-party/build-deps from `1dd1b68` to `6c9ec34` (#4345)

- Date: 2025-10-21
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/build-deps from `1dd1b68` to `6c9ec34` (#4345).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/build-deps

## 18. 7ecb7817 - build(rpm): Update Fedora spec and CUDA math_functions.h patch for Fedora 43+ (#4353)

- Date: 2025-10-24
- Author: ReenigneArcher
- Tags: linux/capture, build/deps
- Change size: 3 files changed, 102 insertions(+), 2 deletions(-)
- Changed files: 3
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(rpm): Update Fedora spec and CUDA math_functions.h patch for Fedora 43+ (#4353).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/fedora/Sunshine.spec
- packaging/linux/patches/aarch64/01-math_functions.patch
- packaging/linux/patches/x86_64/01-math_functions.patch

## 19. d3af56d6 - fix(windows): Memory leak when EnumAdapters1 uses dxgi::adapter_t address as parameter (#4340)

- Date: 2025-10-25
- Author: xd-byte
- Tags: misc
- Change size: 1 file changed, 3 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches misc; primary path buckets: src. Subject indicates: fix(windows): Memory leak when EnumAdapters1 uses dxgi::adapter_t address as parameter (#4340).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/windows/display_base.cpp

## 20. 502f3e14 - build(deps): bump the github-actions group with 2 updates (#4356)

- Date: 2025-10-25
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 7 files changed, 13 insertions(+), 13 deletions(-)
- Changed files: 7
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump the github-actions group with 2 updates (#4356).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci-windows.yml
- .github/workflows/ci.yml
- .github/workflows/update-pages.yml

## 21. 0b3978eb - build(rpm): add OpenSUSE support (#4359)

- Date: 2025-10-25
- Author: ReenigneArcher
- Tags: linux/capture, build/deps, docs
- Change size: 2 files changed, 108 insertions(+), 20 deletions(-)
- Changed files: 3
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps, docs; primary path buckets: docs, packaging. Subject indicates: build(rpm): add OpenSUSE support (#4359).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- docs/getting_started.md
- packaging/linux/copr/Sunshine.spec
- packaging/linux/fedora/Sunshine.spec

## 22. c2fb5438 - ci(copr): fix release event conditions (#4360)

- Date: 2025-10-25
- Author: ReenigneArcher
- Tags: ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github. Subject indicates: ci(copr): fix release event conditions (#4360).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml

## 23. a7f03c25 - ci: move bundle analysis to separate job (#4361)

- Date: 2025-10-25
- Author: ReenigneArcher
- Tags: ci
- Change size: 4 files changed, 36 insertions(+), 5 deletions(-)
- Changed files: 4
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github, vite.config.js. Subject indicates: ci: move bundle analysis to separate job (#4361).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-bundle.yml
- .github/workflows/ci-windows.yml
- .github/workflows/ci.yml
- vite.config.js

## 24. f1a66753 - fix(config): ensure apps.json is writeable (#4249)

- Date: 2025-10-26
- Author: Sandro
- Tags: misc
- Change size: 1 file changed, 5 insertions(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches misc; primary path buckets: src. Subject indicates: fix(config): ensure apps.json is writeable (#4249).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/config.cpp

## 25. e657df0c - chore(l10n): update translations (#4302)

- Date: 2025-10-27
- Author: LizardByte-bot
- Tags: web-ui, l10n
- Change size: 4 files changed, 30 insertions(+), 30 deletions(-)
- Changed files: 4
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: chore(l10n): update translations (#4302).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/public/assets/locale/de.json
- src_assets/common/assets/web/public/assets/locale/fr.json
- src_assets/common/assets/web/public/assets/locale/tr.json
- src_assets/common/assets/web/public/assets/locale/uk.json

## 26. 01a6dfd1 - build(deps): bump LizardByte/actions from 2025.1020.14905 to 2025.1028.23217 in the lizardbyte-actions group (#4365)

- Date: 2025-10-28
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 7 insertions(+), 7 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump LizardByte/actions from 2025.1020.14905 to 2025.1028.23217 in the lizardbyte-actions group (#4365).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 27. dbe38ba2 - build(flatpak): update org.freedesktop.Platform version (#4382)

- Date: 2025-11-01
- Author: David Lane
- Tags: linux/capture, build/deps, ci
- Change size: 2 files changed, 2 insertions(+), 2 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps, ci; primary path buckets: .github, packaging. Subject indicates: build(flatpak): update org.freedesktop.Platform version (#4382).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- .github/workflows/ci-flatpak.yml
- packaging/linux/flatpak/dev.lizardbyte.app.Sunshine.yml

## 28. 39775725 - docs(readme): Update for clarity and image sources (#4384)

- Date: 2025-11-01
- Author: David Lane
- Tags: docs
- Change size: 1 file changed, 7 insertions(+), 13 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches docs; primary path buckets: README.md. Subject indicates: docs(readme): Update for clarity and image sources (#4384).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- README.md

## 29. 3d2fca7c - build(deps): bump third-party/Simple-Web-Server from `187f798` to `546895a` (#4370)

- Date: 2025-11-01
- Author: dependabot[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/Simple-Web-Server from `187f798` to `546895a` (#4370).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/Simple-Web-Server

## 30. 875ad1d1 - build(deps): bump boost to 1.89 (#4253)

- Date: 2025-11-01
- Author: David Lane
- Tags: linux/capture, build/deps, ci
- Change size: 7 files changed, 9 insertions(+), 14 deletions(-)
- Changed files: 7
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps, ci; primary path buckets: .github, cmake, packaging, src. Subject indicates: build(deps): bump boost to 1.89 (#4253).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- .github/workflows/ci-windows.yml
- cmake/dependencies/Boost_Sunshine.cmake
- packaging/linux/flatpak/modules/boost.json
- packaging/sunshine.rb
- src/platform/common.h
- src/platform/linux/misc.cpp
- src/platform/windows/input.cpp

## 31. 355078a6 - build(deps): bump third-party/build-deps from `6c9ec34` to `bcaf64b` (#4375)

- Date: 2025-11-02
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/build-deps from `6c9ec34` to `bcaf64b` (#4375).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/build-deps

## 32. eb72930a - build(deps): bump packaging/linux/flatpak/deps/shared-modules from `6537464` to `8d705c8` (#4385)

- Date: 2025-11-02
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/shared-modules from `6537464` to `8d705c8` (#4385).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/shared-modules

## 33. cdb7e2b8 - feat(video): use unified color conversion matrix generator (#4387)

- Date: 2025-11-05
- Author: ns6089
- Tags: linux/capture
- Change size: 5 files changed, 54 insertions(+), 92 deletions(-)
- Changed files: 5
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: feat(video): use unified color conversion matrix generator (#4387).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/cuda.cu
- src/platform/linux/graphics.cpp
- src/platform/windows/display_vram.cpp
- src/video_colorspace.cpp
- src/video_colorspace.h

## 34. f8bda880 - build(deps): bump third-party/build-deps from `bcaf64b` to `ca3f2da` (#4392)

- Date: 2025-11-06
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/build-deps from `bcaf64b` to `ca3f2da` (#4392).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/build-deps

## 35. 8836db5d - fix(config): Add missing framerateX100 fields at the initializers for the video::config_t literals (#4391)

- Date: 2025-11-07
- Author: Martijn Courteaux
- Tags: encoder/video
- Change size: 1 file changed, 4 insertions(+), 4 deletions(-)
- Changed files: 1
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches encoder/video; primary path buckets: src. Subject indicates: fix(config): Add missing framerateX100 fields at the initializers for the video::config_t literals (#4391).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/video.cpp

## 36. 49197c71 - fix(video): fix leaky abstraction in ogl luma shader (#4404)

- Date: 2025-11-08
- Author: ns6089
- Tags: web-ui
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui; primary path buckets: src_assets. Subject indicates: fix(video): fix leaky abstraction in ogl luma shader (#4404).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/linux/assets/shaders/opengl/ConvertY.frag

## 37. 2dbe837e - build(deps): bump third-party/moonlight-common-c from `5f22801` to `2d984f4` (#4409)

- Date: 2025-11-10
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/moonlight-common-c from `5f22801` to `2d984f4` (#4409).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/moonlight-common-c

## 38. 1d6d916b - build: add freebsd support (#4049)

- Date: 2025-11-11
- Author: David Lane
- Tags: encoder/video, linux/capture, web-ui, build/deps, ci, docs
- Change size: 31 files changed, 1055 insertions(+), 39 deletions(-)
- Changed files: 31
- Import bucket: Subsystem review
- Risk: Medium/High
- Change note: Touches encoder/video, linux/capture, web-ui; primary path buckets: .github, CMakeLists.txt, README.md, cmake, docs. Subject indicates: build: add freebsd support (#4049).
- Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.
- Top files:
- .github/workflows/ci-freebsd.yml
- .github/workflows/ci.yml
- CMakeLists.txt
- README.md
- cmake/compile_definitions/linux.cmake
- cmake/dependencies/common.cmake
- cmake/packaging/freebsd_custom_cpack.cmake
- cmake/packaging/linux.cmake
- docs/app_examples.md
- docs/building.md
- docs/configuration.md
- docs/getting_started.md
- ... 19 more file(s)

## 39. 852dee0a - fix(launch): Fix several launch failure conditions (exceptions thrown in child.wait, and boost::split_unix) (#4390)

- Date: 2025-11-12
- Author: Martijn Courteaux
- Tags: misc
- Change size: 2 files changed, 26 insertions(+), 5 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium
- Change note: Touches misc; primary path buckets: src. Subject indicates: fix(launch): Fix several launch failure conditions (exceptions thrown in child.wait, and boost::split_unix) (#4390).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/nvhttp.cpp
- src/process.cpp

## 40. a2e6fc9f - ci: harden workflows (#4412)

- Date: 2025-11-12
- Author: David Lane
- Tags: ci
- Change size: 7 files changed, 66 insertions(+), 61 deletions(-)
- Changed files: 7
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github. Subject indicates: ci: harden workflows (#4412).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-freebsd.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci-windows.yml
- .github/workflows/ci.yml
- .github/workflows/localize.yml

## 41. adb443f0 - fix(win): Windows.Graphics.Capture API frame rate capped at 60fps (#4424)

- Date: 2025-11-17
- Author: StringWeaver
- Tags: misc
- Change size: 1 file changed, 9 insertions(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches misc; primary path buckets: src. Subject indicates: fix(win): Windows.Graphics.Capture API frame rate capped at 60fps (#4424).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/windows/display_wgc.cpp

## 42. b169d304 - build(deps): bump vmactions/freebsd-vm from 1.2.6 to 1.2.7 (#4425)

- Date: 2025-11-18
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump vmactions/freebsd-vm from 1.2.6 to 1.2.7 (#4425).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-freebsd.yml

## 43. d0aefe05 - chore(l10n): update translations (#4386)

- Date: 2025-11-22
- Author: LizardByte-bot
- Tags: web-ui, l10n
- Change size: 2 files changed, 104 insertions(+), 104 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: chore(l10n): update translations (#4386).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/public/assets/locale/de.json
- src_assets/common/assets/web/public/assets/locale/hu.json

## 44. fe075018 - build(packaging/Arch): fix cuda gcc version detection (#4442)

- Date: 2025-11-24
- Author: Garmelon
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 6 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(packaging/Arch): fix cuda gcc version detection (#4442).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/Arch/PKGBUILD

## 45. 036e14d0 - build(deps): bump third-party/tray from `0309a7c` to `d43f4c2` (#4445)

- Date: 2025-11-25
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/tray from `0309a7c` to `d43f4c2` (#4445).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/tray

## 46. 5f424844 - build(deps): bump third-party/wayland-protocols from `0091197` to `6141e11` (#4446)

- Date: 2025-11-25
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/wayland-protocols from `0091197` to `6141e11` (#4446).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- third-party/wayland-protocols

## 47. 915ba74f - build(deps): bump third-party/build-deps from `ca3f2da` to `afe70fa` (#4447)

- Date: 2025-11-25
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/build-deps from `ca3f2da` to `afe70fa` (#4447).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/build-deps

## 48. 7d887bc7 - build(arch): temporarily disable broken Arch build (#4451)

- Date: 2025-11-25
- Author: Cameron Gutman
- Tags: build/deps
- Change size: 1 file changed, 0 insertions(+), 0 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: docker. Subject indicates: build(arch): temporarily disable broken Arch build (#4451).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- docker/archlinux.bak
- docker/archlinux.dockerfile

## 49. 3191e48a - build(deps): bump third-party/moonlight-common-c from `2d984f4` to `b126e48` (#4452)

- Date: 2025-11-26
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/moonlight-common-c from `2d984f4` to `b126e48` (#4452).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/moonlight-common-c

## 50. 2c346300 - build(deps): bump vue-i18n from 11.1.12 to 11.2.2 (#4454)

- Date: 2025-11-26
- Author: dependabot[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump vue-i18n from 11.1.12 to 11.2.2 (#4454).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 51. a1ff239b - build(deps): bump vue from 3.5.22 to 3.5.25 (#4444)

- Date: 2025-11-26
- Author: dependabot[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump vue from 3.5.22 to 3.5.25 (#4444).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 52. 83afe791 - build(deps): bump actions/checkout from 5 to 6 in the github-actions group (#4435)

- Date: 2025-11-27
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 9 files changed, 10 insertions(+), 10 deletions(-)
- Changed files: 9
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump actions/checkout from 5 to 6 in the github-actions group (#4435).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-bundle.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-freebsd.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci-windows.yml
- .github/workflows/ci.yml
- .github/workflows/localize.yml
- .github/workflows/update-pages.yml

## 53. 56b7573a - build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `ea92dc2` to `fdbe66a` (#4443)

- Date: 2025-11-27
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `ea92dc2` to `fdbe66a` (#4443).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/flatpak-builder-tools

## 54. 62d58ed6 - build(deps): bump packaging/linux/flatpak/deps/shared-modules from `8d705c8` to `3456e75` (#4431)

- Date: 2025-11-27
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/shared-modules from `8d705c8` to `3456e75` (#4431).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/shared-modules

## 55. f1f9e755 - fix(tray): use the blocking event loop to avoid wasting power (#4457)

- Date: 2025-11-29
- Author: Cameron Gutman
- Tags: build/deps
- Change size: 4 files changed, 20 insertions(+), 106 deletions(-)
- Changed files: 4
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: src, third-party. Subject indicates: fix(tray): use the blocking event loop to avoid wasting power (#4457).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src/main.cpp
- src/system_tray.cpp
- src/system_tray.h
- third-party/tray

## 56. a0a97138 - build(deps): bump vmactions/freebsd-vm from 1.2.7 to 1.2.8 (#4463)

- Date: 2025-11-30
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump vmactions/freebsd-vm from 1.2.7 to 1.2.8 (#4463).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-freebsd.yml

## 57. 4d2391c9 - ci(homebrew): enable test coverage on Linux (#3842)

- Date: 2025-12-01
- Author: David Lane
- Tags: linux/capture, build/deps, ci
- Change size: 3 files changed, 48 insertions(+), 58 deletions(-)
- Changed files: 3
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps, ci; primary path buckets: .github, packaging. Subject indicates: ci(homebrew): enable test coverage on Linux (#3842).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci.yml
- packaging/sunshine.rb

## 58. 7c6e43fb - ci(windows): Remove unused test preparation (#4467)

- Date: 2025-12-01
- Author: David Lane
- Tags: ci
- Change size: 1 file changed, 105 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github. Subject indicates: ci(windows): Remove unused test preparation (#4467).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-windows.yml

## 59. f2441925 - ci(homebrew): free runner space on Linux (#4477)

- Date: 2025-12-06
- Author: David Lane
- Tags: linux/capture, ci
- Change size: 1 file changed, 8 insertions(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, ci; primary path buckets: .github. Subject indicates: ci(homebrew): free runner space on Linux (#4477).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- .github/workflows/ci-homebrew.yml

## 60. d46ead6b - build(deps): bump third-party/build-deps from `afe70fa` to `d65e305` (#4472)

- Date: 2025-12-06
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/build-deps from `afe70fa` to `d65e305` (#4472).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/build-deps

## 61. 35f4b9ee - build(linux): add support for self-compiling on ubuntu 25.10 (#4471)

- Date: 2025-12-06
- Author: a-turtle9302
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 9 insertions(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps; primary path buckets: scripts. Subject indicates: build(linux): add support for self-compiling on ubuntu 25.10 (#4471).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- scripts/linux_build.sh

## 62. 75809f13 - ci(linux): migrate Archlinux build to GitHub workflow (#4478)

- Date: 2025-12-07
- Author: David Lane
- Tags: linux/capture, build/deps, ci
- Change size: 8 files changed, 292 insertions(+), 188 deletions(-)
- Changed files: 8
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps, ci; primary path buckets: .github, DOCKER_README.md, docker, packaging, tests. Subject indicates: ci(linux): migrate Archlinux build to GitHub workflow (#4478).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- .github/workflows/ci-archlinux.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-windows.yml
- .github/workflows/ci.yml
- DOCKER_README.md
- docker/archlinux.bak
- packaging/linux/Arch/PKGBUILD
- tests/CMakeLists.txt

## 63. 446e0a52 - build(tests): static link libgcc and libstdc++ on Linux (#4485)

- Date: 2025-12-08
- Author: David Lane
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 4 insertions(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps; primary path buckets: cmake. Subject indicates: build(tests): static link libgcc and libstdc++ on Linux (#4485).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- cmake/targets/linux.cmake

## 64. eb3afd43 - build(homebrew): Run test_sunshine and coverage only for main repo (#4491)

- Date: 2025-12-09
- Author: David Lane
- Tags: build/deps
- Change size: 1 file changed, 37 insertions(+), 25 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: packaging. Subject indicates: build(homebrew): Run test_sunshine and coverage only for main repo (#4491).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- packaging/sunshine.rb

## 65. 79b4b9f6 - style(Homebrew): Update Homebrew formula dependencies and conflicts (#4484)

- Date: 2025-12-19
- Author: David Lane
- Tags: build/deps, ci
- Change size: 6 files changed, 54 insertions(+), 26 deletions(-)
- Changed files: 6
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github, packaging. Subject indicates: style(Homebrew): Update Homebrew formula dependencies and conflicts (#4484).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml
- packaging/sunshine.rb

## 66. 36722546 - fix: namespace declaration for boost::process::v1 (#4518)

- Date: 2025-12-20
- Author: David Lane
- Tags: misc
- Change size: 3 files changed, 4 insertions(+), 4 deletions(-)
- Changed files: 3
- Import bucket: Review later
- Risk: Medium
- Change note: Touches misc; primary path buckets: src. Subject indicates: fix: namespace declaration for boost::process::v1 (#4518).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/common.h
- src/platform/windows/display_base.cpp
- src/platform/windows/misc.cpp

## 67. d3d26f34 - chore: change libevdev source to LizardByte mirror (#4524)

- Date: 2025-12-20
- Author: David Lane
- Tags: build/deps
- Change size: 1 file changed, 7 insertions(+), 6 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: cmake. Subject indicates: chore: change libevdev source to LizardByte mirror (#4524).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- cmake/dependencies/libevdev_Sunshine.cmake

## 68. 1fa7457e - chore(homebrew): add bottle do section placeholder (#4525)

- Date: 2025-12-23
- Author: David Lane
- Tags: build/deps, ci
- Change size: 6 files changed, 17 insertions(+), 8 deletions(-)
- Changed files: 6
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github, packaging. Subject indicates: chore(homebrew): add bottle do section placeholder (#4525).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml
- packaging/sunshine.rb

## 69. 0aa7e3fd - feat(network): allow binding to specific interface (#4481)

- Date: 2025-12-23
- Author: David Lane
- Tags: rtsp/network, web-ui, ci, docs, l10n
- Change size: 13 files changed, 205 insertions(+), 9 deletions(-)
- Changed files: 13
- Import bucket: Subsystem review
- Risk: Medium/High
- Change note: Touches rtsp/network, web-ui, ci; primary path buckets: docs, src, src_assets, tests. Subject indicates: feat(network): allow binding to specific interface (#4481).
- Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.
- Top files:
- docs/configuration.md
- src/config.cpp
- src/config.h
- src/confighttp.cpp
- src/network.cpp
- src/network.h
- src/nvhttp.cpp
- src/rtsp.cpp
- src/stream.cpp
- src_assets/common/assets/web/config.html
- src_assets/common/assets/web/configs/tabs/Network.vue
- src_assets/common/assets/web/public/assets/locale/en.json
- ... 1 more file(s)

## 70. e0edccb5 - build(deps): bump the github-actions group across 1 directory with 3 updates (#4503)

- Date: 2025-12-23
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 9 files changed, 18 insertions(+), 18 deletions(-)
- Changed files: 9
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump the github-actions group across 1 directory with 3 updates (#4503).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-archlinux.yml
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-freebsd.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci-windows.yml
- .github/workflows/ci.yml
- .github/workflows/update-pages.yml

## 71. bc7b534f - chore: update global workflows (#4486)

- Date: 2025-12-23
- Author: LizardByte-bot
- Tags: ci
- Change size: 4 files changed, 5 insertions(+), 10 deletions(-)
- Changed files: 4
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github. Subject indicates: chore: update global workflows (#4486).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/dependabot.yml
- .github/workflows/_codeql.yml
- .github/workflows/_common-lint.yml
- .github/workflows/_update-pacman-repo.yml

## 72. 551799cb - build(deps): bump vmactions/freebsd-vm from 1.2.8 to 1.3.0 (#4489)

- Date: 2025-12-23
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump vmactions/freebsd-vm from 1.2.8 to 1.3.0 (#4489).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-freebsd.yml

## 73. 1d21bac0 - build(deps): bump peter-evans/create-pull-request from 7 to 8 (#4496)

- Date: 2025-12-23
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump peter-evans/create-pull-request from 7 to 8 (#4496).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/localize.yml

## 74. 2711d764 - build(deps): bump packaging/linux/flatpak/deps/shared-modules from `3456e75` to `72028a8` (#4517)

- Date: 2025-12-24
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/shared-modules from `3456e75` to `72028a8` (#4517).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/shared-modules

## 75. 39cb19df - build(deps): bump LizardByte/actions from 2025.1221.31807 to 2025.1224.155016 in the lizardbyte-actions group across 1 directory (#4533)

- Date: 2025-12-24
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 8 insertions(+), 8 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump LizardByte/actions from 2025.1221.31807 to 2025.1224.155016 in the lizardbyte-actions group across 1 directory (#4533).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 76. f5fa599c - build(deps): bump vue from 3.5.25 to 3.5.26 (#4522)

- Date: 2025-12-24
- Author: dependabot[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump vue from 3.5.25 to 3.5.26 (#4522).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 77. e989f2a7 - build(deps): bump vue-i18n from 11.2.2 to 11.2.7 (#4529)

- Date: 2025-12-24
- Author: dependabot[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump vue-i18n from 11.2.2 to 11.2.7 (#4529).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 78. d4e36e9c - build(deps): bump third-party/wayland-protocols from `6141e11` to `8822301` (#4513)

- Date: 2025-12-24
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/wayland-protocols from `6141e11` to `8822301` (#4513).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- third-party/wayland-protocols

## 79. ca7b52fe - build(deps): bump third-party/build-deps from `d65e305` to `814fa85` (#4526)

- Date: 2025-12-24
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/build-deps from `d65e305` to `814fa85` (#4526).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/build-deps

## 80. a44c1521 - chore(l10n): update translations (#4497)

- Date: 2025-12-24
- Author: LizardByte-bot
- Tags: web-ui, l10n
- Change size: 21 files changed, 108 insertions(+), 66 deletions(-)
- Changed files: 21
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: chore(l10n): update translations (#4497).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/public/assets/locale/bg.json
- src_assets/common/assets/web/public/assets/locale/cs.json
- src_assets/common/assets/web/public/assets/locale/de.json
- src_assets/common/assets/web/public/assets/locale/en_GB.json
- src_assets/common/assets/web/public/assets/locale/en_US.json
- src_assets/common/assets/web/public/assets/locale/es.json
- src_assets/common/assets/web/public/assets/locale/fr.json
- src_assets/common/assets/web/public/assets/locale/hu.json
- src_assets/common/assets/web/public/assets/locale/it.json
- src_assets/common/assets/web/public/assets/locale/ja.json
- src_assets/common/assets/web/public/assets/locale/ko.json
- src_assets/common/assets/web/public/assets/locale/pl.json
- ... 9 more file(s)

## 81. b3a77826 - ci(homebrew): fix formula version patch (#4535)

- Date: 2025-12-26
- Author: David Lane
- Tags: ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github. Subject indicates: ci(homebrew): fix formula version patch (#4535).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-homebrew.yml

## 82. 3e23087b - ci(homebrew): fix livecheck patch (#4538)

- Date: 2025-12-27
- Author: David Lane
- Tags: build/deps, ci
- Change size: 2 files changed, 1 insertion(+), 2 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github, packaging. Subject indicates: ci(homebrew): fix livecheck patch (#4538).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-homebrew.yml
- packaging/sunshine.rb

## 83. 72d6b0de - build(deps): bump LizardByte/actions from 2025.1224.155016 to 2025.1227.191137 in the lizardbyte-actions group across 1 directory (#4541)

- Date: 2025-12-27
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 8 insertions(+), 8 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump LizardByte/actions from 2025.1224.155016 to 2025.1227.191137 in the lizardbyte-actions group across 1 directory (#4541).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 84. 2e68762e - build(Archlinux): Update GCC version in PKGBUILD to 15 (#4546)

- Date: 2025-12-29
- Author: David Lane
- Tags: linux/capture, build/deps
- Change size: 2 files changed, 20 insertions(+), 6 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: cmake, packaging. Subject indicates: build(Archlinux): Update GCC version in PKGBUILD to 15 (#4546).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- cmake/compile_definitions/common.cmake
- packaging/linux/Arch/PKGBUILD

## 85. 5bacfd59 - fix(nvenc): Include bitstream restrictions in H.264/HEVC SPS (#4556)

- Date: 2026-01-05
- Author: Cameron Gutman
- Tags: encoder/video
- Change size: 1 file changed, 3 insertions(+)
- Changed files: 1
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches encoder/video; primary path buckets: src. Subject indicates: fix(nvenc): Include bitstream restrictions in H.264/HEVC SPS (#4556).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/nvenc/nvenc_base.cpp

## 86. c9e0bb86 - build(packaging): bash comparison in PKGBUILD (#4565)

- Date: 2026-01-05
- Author: David Lane
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(packaging): bash comparison in PKGBUILD (#4565).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/Arch/PKGBUILD

## 87. 4a9f1741 - build(vaapi): Add vaMapBuffers2() stub (#4581)

- Date: 2026-01-12
- Author: Cameron Gutman
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 12 insertions(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps; primary path buckets: src. Subject indicates: build(vaapi): Add vaMapBuffers2() stub (#4581).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/vaapi.cpp

## 88. f4df598f - ci: run workflows for any branch (#4584)

- Date: 2026-01-14
- Author: David Lane
- Tags: ci
- Change size: 2 files changed, 12 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github. Subject indicates: ci: run workflows for any branch (#4584).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci.yml
- .github/workflows/update-pages.yml

## 89. 7f536ea9 - build(deps): bump third-party/build-deps from `814fa85` to `4463f7a` (#4578)

- Date: 2026-01-14
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/build-deps from `814fa85` to `4463f7a` (#4578).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/build-deps

## 90. 18adbf7b - build(deps): bump third-party/moonlight-common-c from `b126e48` to `435bc6a` (#4576)

- Date: 2026-01-14
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/moonlight-common-c from `b126e48` to `435bc6a` (#4576).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/moonlight-common-c

## 91. b281f4e6 - build(deps): bump vmactions/freebsd-vm from 1.3.0 to 1.3.7 (#4574)

- Date: 2026-01-14
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump vmactions/freebsd-vm from 1.3.0 to 1.3.7 (#4574).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-freebsd.yml

## 92. dabf3415 - build(deps): bump vue-i18n from 11.2.7 to 11.2.8 (#4553)

- Date: 2026-01-14
- Author: dependabot[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump vue-i18n from 11.2.7 to 11.2.8 (#4553).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 93. d4f75c65 - build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `fdbe66a` to `db39dc0` (#4550)

- Date: 2026-01-14
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `fdbe66a` to `db39dc0` (#4550).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/flatpak-builder-tools

## 94. 8765bbf0 - build(deps): bump packaging/linux/flatpak/deps/shared-modules from `72028a8` to `d1a2cf5` (#4575)

- Date: 2026-01-14
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/shared-modules from `72028a8` to `d1a2cf5` (#4575).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/shared-modules

## 95. 80761601 - build(deps): bump LizardByte/actions from 2025.1227.191137 to 2026.116.208 in the lizardbyte-actions group across 1 directory (#4587)

- Date: 2026-01-16
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 8 insertions(+), 8 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump LizardByte/actions from 2025.1227.191137 to 2026.116.208 in the lizardbyte-actions group across 1 directory (#4587).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 96. 64005228 - build(Archlinux): Switch from calling make directly to using cmake (#4579)

- Date: 2026-01-16
- Author: Freakness109
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 2 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(Archlinux): Switch from calling make directly to using cmake (#4579).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/Arch/PKGBUILD

## 97. cf7b0dc7 - fix(linux/wlr): Fix dmabuf buffer params protocol violation/leak (#4588)

- Date: 2026-01-16
- Author: Dregu
- Tags: linux/capture
- Change size: 1 file changed, 2 insertions(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/wlr): Fix dmabuf buffer params protocol violation/leak (#4588).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/wayland.cpp

## 98. 8294ab23 - fix(config): create apps.json from default after loading file_apps cfg (#4568)

- Date: 2026-01-16
- Author: Andrew Marshall
- Tags: misc
- Change size: 1 file changed, 12 insertions(+), 12 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches misc; primary path buckets: src. Subject indicates: fix(config): create apps.json from default after loading file_apps cfg (#4568).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/config.cpp

## 99. 89e79969 - build(linux): Add Fedora 43 support to the build script (#4532)

- Date: 2026-01-16
- Author: Craimasjien
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 10 insertions(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps; primary path buckets: scripts. Subject indicates: build(linux): Add Fedora 43 support to the build script (#4532).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- scripts/linux_build.sh

## 100. 2e2f7b6a - chore(l10n): update translations (#4548)

- Date: 2026-01-16
- Author: LizardByte-bot
- Tags: web-ui, l10n
- Change size: 2 files changed, 64 insertions(+), 64 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: chore(l10n): update translations (#4548).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/public/assets/locale/cs.json
- src_assets/common/assets/web/public/assets/locale/hu.json

## 101. fd2bfaac - fix(windows): resolve disappearing cursor after KVM switch (#4407)

- Date: 2026-01-16
- Author: tstokes22
- Tags: encoder/video, macos, linux/capture
- Change size: 5 files changed, 17 insertions(+)
- Changed files: 5
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches encoder/video, macos, linux/capture; primary path buckets: src. Subject indicates: fix(windows): resolve disappearing cursor after KVM switch (#4407).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/platform/common.h
- src/platform/linux/misc.cpp
- src/platform/macos/misc.mm
- src/platform/windows/misc.cpp
- src/video.cpp

## 102. ab52e27e - fix(audio-info): crash when device name contains special characters (#4095)

- Date: 2026-01-16
- Author: David Lane
- Tags: build/deps, ci
- Change size: 14 files changed, 476 insertions(+), 163 deletions(-)
- Changed files: 14
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: cmake, src, tests, tools. Subject indicates: fix(audio-info): crash when device name contains special characters (#4095).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- cmake/compile_definitions/windows.cmake
- src/platform/windows/audio.cpp
- src/platform/windows/display_base.cpp
- src/platform/windows/display_vram.cpp
- src/platform/windows/misc.cpp
- src/platform/windows/misc.h
- src/platform/windows/publish.cpp
- src/platform/windows/utf_utils.cpp
- src/platform/windows/utf_utils.h
- src/process.cpp
- tests/unit/platform/windows/test_utf_utils.cpp
- tools/CMakeLists.txt
- ... 2 more file(s)

## 103. b0bf5105 - fix(macos/input): Fix handling of mouse wheel scroll events (#4592)

- Date: 2026-01-17
- Author: Andy Grundman
- Tags: macos
- Change size: 1 file changed, 11 insertions(+), 10 deletions(-)
- Changed files: 1
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches macos; primary path buckets: src. Subject indicates: fix(macos/input): Fix handling of mouse wheel scroll events (#4592).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/platform/macos/input.cpp

## 104. c3138518 - fix(linux): added support for logical screen size with zxdg_output_v1 (#4594)

- Date: 2026-01-18
- Author: Julio Sanz
- Tags: linux/capture
- Change size: 2 files changed, 4 insertions(+)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux): added support for logical screen size with zxdg_output_v1 (#4594).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/kmsgrab.cpp
- src/platform/linux/wayland.cpp

## 105. 69d7b6df - feat(packaging/linux): enable cuda support for homebrew (#4593)

- Date: 2026-01-17
- Author: David Lane
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 83 insertions(+), 28 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: feat(packaging/linux): enable cuda support for homebrew (#4593).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/sunshine.rb

## 106. d2997308 - build(arch): enhanced arch support for linux build script (#4595)

- Date: 2026-01-18
- Author: Julio Sanz
- Tags: linux/capture, build/deps, docs
- Change size: 2 files changed, 13 insertions(+), 1 deletion(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps, docs; primary path buckets: docs, scripts. Subject indicates: build(arch): enhanced arch support for linux build script (#4595).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- docs/building.md
- scripts/linux_build.sh

## 107. 19a63011 - build(windows): fix rc version for llvm clang (#4606)

- Date: 2026-01-20
- Author: David Lane
- Tags: build/deps
- Change size: 3 files changed, 12 insertions(+), 3 deletions(-)
- Changed files: 3
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: cmake, src. Subject indicates: build(windows): fix rc version for llvm clang (#4606).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- cmake/compile_definitions/windows.cmake
- cmake/prep/build_version.cmake
- src/platform/windows/windows.rc

## 108. ff770d60 - build(flatpak): drop libnotify module (#4604)

- Date: 2026-01-21
- Author: Sabri Ünal
- Tags: linux/capture, build/deps
- Change size: 2 files changed, 24 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(flatpak): drop libnotify module (#4604).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/dev.lizardbyte.app.Sunshine.yml
- packaging/linux/flatpak/modules/libnotify.json

## 109. aca5d23f - fix(linux): fix issues with rendering and touchscreens when displays are scaled (#4607)

- Date: 2026-01-22
- Author: Julio Sanz
- Tags: encoder/video, linux/capture
- Change size: 6 files changed, 77 insertions(+), 9 deletions(-)
- Changed files: 6
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches encoder/video, linux/capture; primary path buckets: src. Subject indicates: fix(linux): fix issues with rendering and touchscreens when displays are scaled (#4607).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/input.cpp
- src/input.h
- src/platform/common.h
- src/platform/linux/kmsgrab.cpp
- src/platform/linux/wayland.cpp
- src/video.cpp

## 110. 517be368 - build(homebrew): optimize build options (#4612)

- Date: 2026-01-22
- Author: David Lane
- Tags: build/deps
- Change size: 1 file changed, 7 insertions(+), 4 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: packaging. Subject indicates: build(homebrew): optimize build options (#4612).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- packaging/sunshine.rb

## 111. aea95126 - chore: clean up implicit conversions (#4611)

- Date: 2026-01-22
- Author: Andy Grundman
- Tags: rtsp/network, encoder/video, macos, ci
- Change size: 13 files changed, 66 insertions(+), 66 deletions(-)
- Changed files: 13
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches rtsp/network, encoder/video, macos; primary path buckets: src. Subject indicates: chore: clean up implicit conversions (#4611).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/audio.cpp
- src/config.cpp
- src/confighttp.cpp
- src/crypto.cpp
- src/display_device.cpp
- src/input.cpp
- src/nvenc/nvenc_base.cpp
- src/nvhttp.cpp
- src/platform/macos/microphone.mm
- src/platform/macos/misc.mm
- src/rtsp.cpp
- src/stream.cpp
- ... 1 more file(s)

## 112. f8792944 - feat(macos/build): add basic macOS build script based on linux_build.sh (#4598)

- Date: 2026-01-22
- Author: Andy Grundman
- Tags: macos, linux/capture, build/deps
- Change size: 2 files changed, 276 insertions(+), 62 deletions(-)
- Changed files: 2
- Import bucket: Cherry-pick candidate
- Risk: Medium
- Change note: Touches macos, linux/capture, build/deps; primary path buckets: scripts. Subject indicates: feat(macos/build): add basic macOS build script based on linux_build.sh (#4598).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- scripts/linux_build.sh
- scripts/macos_build.sh

## 113. 3a12f96a - perf(threads): implement adjust_thread_priority for macOS and add set_thread_name (#4605)

- Date: 2026-01-22
- Author: Andy Grundman
- Tags: rtsp/network, encoder/video, macos, linux/capture
- Change size: 17 files changed, 71 insertions(+), 1 deletion(-)
- Changed files: 17
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches rtsp/network, encoder/video, macos; primary path buckets: src. Subject indicates: perf(threads): implement adjust_thread_priority for macOS and add set_thread_name (#4605).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/audio.cpp
- src/confighttp.cpp
- src/main.cpp
- src/nvhttp.cpp
- src/platform/common.h
- src/platform/linux/audio.cpp
- src/platform/linux/misc.cpp
- src/platform/linux/publish.cpp
- src/platform/macos/misc.mm
- src/platform/macos/publish.cpp
- src/platform/windows/misc.cpp
- src/rtsp.cpp
- ... 5 more file(s)

## 114. 7e286b90 - feat(windows): add ViGEmBus driver management API and UI integration (#4625)

- Date: 2026-01-25
- Author: David Lane
- Tags: web-ui, build/deps, docs, l10n
- Change size: 15 files changed, 360 insertions(+), 72 deletions(-)
- Changed files: 15
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps, docs; primary path buckets: cmake, docs, src, src_assets. Subject indicates: feat(windows): add ViGEmBus driver management API and UI integration (#4625).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- cmake/compile_definitions/windows.cmake
- cmake/packaging/windows.cmake
- cmake/packaging/windows_nsis.cmake
- cmake/targets/windows.cmake
- docs/api.md
- docs/getting_started.md
- docs/troubleshooting.md
- src/confighttp.cpp
- src/platform/windows/misc.cpp
- src/platform/windows/misc.h
- src_assets/common/assets/web/index.html
- src_assets/common/assets/web/public/assets/locale/en.json
- ... 3 more file(s)

## 115. 3e2f4c28 - feat(web-ui): render changelog for new release sections (#4629)

- Date: 2026-01-25
- Author: David Lane
- Tags: web-ui
- Change size: 3 files changed, 121 insertions(+), 3 deletions(-)
- Changed files: 3
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui; primary path buckets: package.json, src_assets. Subject indicates: feat(web-ui): render changelog for new release sections (#4629).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json
- src_assets/common/assets/web/index.html
- src_assets/common/assets/web/public/assets/css/sunshine.css

## 116. 5ecf7dc7 - feat(web-ui)!: remove discord widget (#4630)

- Date: 2026-01-25
- Author: David Lane
- Tags: web-ui
- Change size: 1 file changed, 2 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui; primary path buckets: src_assets. Subject indicates: feat(web-ui)!: remove discord widget (#4630).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/Navbar.vue

## 117. 38a94b3c - fix(linux/kms): skip NVIDIA cards for VAAPI on hybrid GPU laptops (#4473)

- Date: 2026-01-25
- Author: Cole Leavitt
- Tags: linux/capture
- Change size: 1 file changed, 16 insertions(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/kms): skip NVIDIA cards for VAAPI on hybrid GPU laptops (#4473).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/kmsgrab.cpp

## 118. 2141917d - build(deps): bump vue from 3.5.26 to 3.5.27 (#4602)

- Date: 2026-01-25
- Author: dependabot[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump vue from 3.5.26 to 3.5.27 (#4602).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 119. 76b3a859 - feat(api): add application image endpoint (#4627)

- Date: 2026-01-27
- Author: Cilps the Pumpkin
- Tags: docs
- Change size: 5 files changed, 426 insertions(+), 24 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches docs; primary path buckets: docs, src, tests. Subject indicates: feat(api): add application image endpoint (#4627).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- docs/api.md
- src/confighttp.cpp
- src/process.cpp
- src/process.h
- tests/unit/test_process.cpp

## 120. 3ce39b36 - fix(web-ui): modernize UI (#4631)

- Date: 2026-01-29
- Author: David Lane
- Tags: web-ui, docs, l10n
- Change size: 19 files changed, 3529 insertions(+), 456 deletions(-)
- Changed files: 19
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, docs, l10n; primary path buckets: docs, package.json, src, src_assets, vite.config.js. Subject indicates: fix(web-ui): modernize UI (#4631).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- docs/contributing.md
- package.json
- src/confighttp.cpp
- src_assets/common/assets/web/Navbar.vue
- src_assets/common/assets/web/ResourceCard.vue
- src_assets/common/assets/web/SimpleIcon.vue
- src_assets/common/assets/web/ThemeToggle.vue
- src_assets/common/assets/web/apps.html
- src_assets/common/assets/web/config.html
- src_assets/common/assets/web/featured.html
- src_assets/common/assets/web/index.html
- src_assets/common/assets/web/password.html
- ... 7 more file(s)

## 121. 2a31583c - chore(l10n): update translations (#4600)

- Date: 2026-01-30
- Author: LizardByte-bot
- Tags: web-ui, l10n
- Change size: 21 files changed, 1185 insertions(+), 30 deletions(-)
- Changed files: 21
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: chore(l10n): update translations (#4600).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/public/assets/locale/bg.json
- src_assets/common/assets/web/public/assets/locale/cs.json
- src_assets/common/assets/web/public/assets/locale/de.json
- src_assets/common/assets/web/public/assets/locale/en_GB.json
- src_assets/common/assets/web/public/assets/locale/en_US.json
- src_assets/common/assets/web/public/assets/locale/es.json
- src_assets/common/assets/web/public/assets/locale/fr.json
- src_assets/common/assets/web/public/assets/locale/hu.json
- src_assets/common/assets/web/public/assets/locale/it.json
- src_assets/common/assets/web/public/assets/locale/ja.json
- src_assets/common/assets/web/public/assets/locale/ko.json
- src_assets/common/assets/web/public/assets/locale/pl.json
- ... 9 more file(s)

## 122. bd857c2d - build(fedora): use nvm to install npm for rawhide (#4646)

- Date: 2026-01-30
- Author: David Lane
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 56 insertions(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(fedora): use nvm to install npm for rawhide (#4646).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/copr/Sunshine.spec

## 123. 30fed4f9 - build(deps): bump third-party/moonlight-common-c from `435bc6a` to `305993b` (#4648)

- Date: 2026-01-30
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/moonlight-common-c from `435bc6a` to `305993b` (#4648).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/moonlight-common-c

## 124. 37738abf - build(deps): bump @lizardbyte/shared-web from 2025.922.181114 to 2026.125.235713 (#4632)

- Date: 2026-01-30
- Author: dependabot[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump @lizardbyte/shared-web from 2025.922.181114 to 2026.125.235713 (#4632).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 125. 843d7bf0 - build(deps): bump vmactions/freebsd-vm from 1.3.7 to 1.3.8 (#4643)

- Date: 2026-01-31
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump vmactions/freebsd-vm from 1.3.7 to 1.3.8 (#4643).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-freebsd.yml

## 126. 20df2172 - build(deps): bump third-party/build-deps from `4463f7a` to `4f5e8b2` (#4609)

- Date: 2026-01-31
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/build-deps from `4463f7a` to `4f5e8b2` (#4609).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/build-deps

## 127. 9bd9fdce - build(deps): bump packaging/linux/flatpak/deps/shared-modules from `d1a2cf5` to `cb06063` (#4644)

- Date: 2026-01-31
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/shared-modules from `d1a2cf5` to `cb06063` (#4644).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/shared-modules

## 128. 14bcfcd6 - build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `db39dc0` to `216a52e` (#4640)

- Date: 2026-01-31
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `db39dc0` to `216a52e` (#4640).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/flatpak-builder-tools

## 129. f59e6aac - build(deps): bump LizardByte/actions from 2026.116.208 to 2026.129.194351 in the lizardbyte-actions group across 1 directory (#4647)

- Date: 2026-01-31
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 8 insertions(+), 8 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump LizardByte/actions from 2026.116.208 to 2026.129.194351 in the lizardbyte-actions group across 1 directory (#4647).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 130. b6757c5e - build: add --ignore-scripts to npm install commands (#4655)

- Date: 2026-02-03
- Author: David Lane
- Tags: build/deps, ci
- Change size: 3 files changed, 4 insertions(+), 5 deletions(-)
- Changed files: 3
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github, cmake. Subject indicates: build: add --ignore-scripts to npm install commands (#4655).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-bundle.yml
- .github/workflows/ci-flatpak.yml
- cmake/targets/common.cmake

## 131. 5dbeb74f - build(deps): bump LizardByte/actions from 2026.129.194351 to 2026.203.15239 in the lizardbyte-actions group across 1 directory (#4656)

- Date: 2026-02-03
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 8 insertions(+), 8 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump LizardByte/actions from 2026.129.194351 to 2026.203.15239 in the lizardbyte-actions group across 1 directory (#4656).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 132. 874880e5 - feat(linux)!: Support streaming through XDG portals and Pipewire (#4417)

- Date: 2026-02-03
- Author: David Lane
- Tags: linux/capture, web-ui, build/deps, ci, docs
- Change size: 23 files changed, 1338 insertions(+), 68 deletions(-)
- Changed files: 23
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, web-ui, build/deps; primary path buckets: .github, cmake, docs, packaging, scripts. Subject indicates: feat(linux)!: Support streaming through XDG portals and Pipewire (#4417).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- .github/workflows/ci-freebsd.yml
- cmake/FindSystemd.cmake
- cmake/compile_definitions/linux.cmake
- cmake/packaging/linux.cmake
- cmake/prep/options.cmake
- cmake/prep/special_package_configuration.cmake
- docs/getting_started.md
- docs/troubleshooting.md
- packaging/linux/00-sunshine-kms.preset.in
- packaging/linux/Arch/PKGBUILD
- packaging/linux/copr/Sunshine.spec
- packaging/linux/dev.lizardbyte.app.Sunshine.metainfo.xml
- ... 11 more file(s)

## 133. db15af20 - chore: update GitHub Actions to use commit hashes (#4659)

- Date: 2026-02-03
- Author: LizardByte-bot
- Tags: ci
- Change size: 12 files changed, 41 insertions(+), 41 deletions(-)
- Changed files: 12
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github. Subject indicates: chore: update GitHub Actions to use commit hashes (#4659).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-archlinux.yml
- .github/workflows/ci-bundle.yml
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-freebsd.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci-windows.yml
- .github/workflows/ci.yml
- .github/workflows/localize.yml
- .github/workflows/release-notifier-moonlight.yml
- .github/workflows/update-pages.yml

## 134. 66cdaf9d - build(deps): bump babel from 2.17.0 to 2.18.0 (#4653)

- Date: 2026-02-03
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: scripts. Subject indicates: build(deps): bump babel from 2.17.0 to 2.18.0 (#4653).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- scripts/requirements.txt

## 135. d0d581ca - build(deps): bump actions/checkout from 6.0.1 to 6.0.2 in the github-actions group across 1 directory (#4663)

- Date: 2026-02-04
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 10 files changed, 11 insertions(+), 11 deletions(-)
- Changed files: 10
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump actions/checkout from 6.0.1 to 6.0.2 in the github-actions group across 1 directory (#4663).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-archlinux.yml
- .github/workflows/ci-bundle.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-freebsd.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci-windows.yml
- .github/workflows/ci.yml
- .github/workflows/localize.yml
- .github/workflows/update-pages.yml

## 136. 22065bfe - build(deps): bump third-party/doxyconfig from `1188ef2` to `89c8ec9` (#4657)

- Date: 2026-02-04
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/doxyconfig from `1188ef2` to `89c8ec9` (#4657).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/doxyconfig

## 137. 86557424 - build(deps): bump third-party/libdisplaydevice from `f31e46d` to `b46492b` (#4678)

- Date: 2026-02-06
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/libdisplaydevice from `f31e46d` to `b46492b` (#4678).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/libdisplaydevice

## 138. 837c2d48 - build(deps): bump packaging/linux/flatpak/deps/shared-modules from `cb06063` to `3d87a66` (#4683)

- Date: 2026-02-07
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/shared-modules from `cb06063` to `3d87a66` (#4683).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/shared-modules

## 139. 76b84be9 - build(deps): bump third-party/moonlight-common-c from `305993b` to `6250fa2` (#4682)

- Date: 2026-02-07
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/moonlight-common-c from `305993b` to `6250fa2` (#4682).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/moonlight-common-c

## 140. 476b984f - build(deps): bump vmactions/freebsd-vm from 1.3.8 to 1.4.0 (#4676)

- Date: 2026-02-07
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump vmactions/freebsd-vm from 1.3.8 to 1.4.0 (#4676).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-freebsd.yml

## 141. b48a96f9 - fix(linux/xdgportal): populate host latency statistics (#4685)

- Date: 2026-02-07
- Author: Conn O'Griofa
- Tags: linux/capture
- Change size: 1 file changed, 2 insertions(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/xdgportal): populate host latency statistics (#4685).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/portalgrab.cpp

## 142. bf574afd - fix(linux/xdgportal): flag stream as realtime (#4684)

- Date: 2026-02-07
- Author: Conn O'Griofa
- Tags: linux/capture
- Change size: 1 file changed, 2 insertions(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/xdgportal): flag stream as realtime (#4684).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/portalgrab.cpp

## 143. e2652fa5 - refactor(packaging/windows): installer script execution (#4675)

- Date: 2026-02-07
- Author: David Lane
- Tags: web-ui, build/deps, docs
- Change size: 4 files changed, 705 insertions(+), 21 deletions(-)
- Changed files: 4
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps, docs; primary path buckets: cmake, docs, src_assets. Subject indicates: refactor(packaging/windows): installer script execution (#4675).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- cmake/packaging/windows.cmake
- cmake/packaging/windows_nsis.cmake
- docs/getting_started.md
- src_assets/windows/misc/sunshine-setup.ps1

## 144. cdc44431 - feat(installer/windows): add wix installer (#3916)

- Date: 2026-02-07
- Author: David Lane
- Tags: build/deps, ci, docs
- Change size: 7 files changed, 208 insertions(+), 4 deletions(-)
- Changed files: 7
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci, docs; primary path buckets: .github, cmake, docs. Subject indicates: feat(installer/windows): add wix installer (#3916).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-windows.yml
- cmake/packaging/windows_wix.cmake
- cmake/packaging/wix_resources/patch.xml
- cmake/packaging/wix_resources/sunshine-installer.wxs
- cmake/prep/build_version.cmake
- docs/building.md
- docs/getting_started.md

## 145. d5916437 - build(windows): add arm64 support (#3905)

- Date: 2026-02-08
- Author: Coia Prant
- Tags: encoder/video, build/deps, ci, docs
- Change size: 20 files changed, 242 insertions(+), 56 deletions(-)
- Changed files: 20
- Import bucket: Cherry-pick candidate
- Risk: Medium
- Change note: Touches encoder/video, build/deps, ci; primary path buckets: .github, cmake, docs, package.json, scripts. Subject indicates: build(windows): add arm64 support (#3905).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- .github/workflows/ci-bundle.yml
- .github/workflows/ci-windows.yml
- cmake/compile_definitions/windows.cmake
- cmake/dependencies/windows.cmake
- cmake/packaging/windows.cmake
- cmake/packaging/windows_nsis.cmake
- docs/building.md
- docs/getting_started.md
- package.json
- scripts/linux_build.sh
- src/config.cpp
- src/nvenc/nvenc_d3d11_on_cuda.h
- ... 8 more file(s)

## 146. 2f611164 - revert: "fix(linux/xdgportal): flag stream as realtime" (#4686)

- Date: 2026-02-08
- Author: Conn O'Griofa
- Tags: linux/capture
- Change size: 1 file changed, 1 insertion(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: revert: "fix(linux/xdgportal): flag stream as realtime" (#4686).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/portalgrab.cpp

## 147. 5bd3a2b2 - docs: miscellaneous updates (#4597)

- Date: 2026-02-08
- Author: David Lane
- Tags: linux/capture, ci, docs
- Change size: 11 files changed, 68 insertions(+), 55 deletions(-)
- Changed files: 11
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, ci, docs; primary path buckets: .github, docs, src. Subject indicates: docs: miscellaneous updates (#4597).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- .github/ISSUE_TEMPLATE/bug-report.yml
- docs/Doxyfile
- docs/getting_started.md
- docs/images/applications.png
- docs/images/configuration-search.png
- docs/images/featured-apps.png
- docs/images/split-themes.png
- docs/images/troubleshooting-logs.png
- docs/images/vigembus-installer.png
- src/main.cpp
- src/platform/linux/kmsgrab.cpp

## 148. 8aed1a82 - build(web-ui): fix rollup failing (#4687)

- Date: 2026-02-09
- Author: Coia Prant
- Tags: web-ui, build/deps, ci, docs
- Change size: 4 files changed, 38 insertions(+), 9 deletions(-)
- Changed files: 4
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps, ci; primary path buckets: .github, docs, package.json, scripts. Subject indicates: build(web-ui): fix rollup failing (#4687).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-windows.yml
- docs/building.md
- package.json
- scripts/linux_build.sh

## 149. 97b6168b - ci(deps): use codecov-action for test results (#4689)

- Date: 2026-02-08
- Author: David Lane
- Tags: build/deps, ci
- Change size: 1 file changed, 14 insertions(+), 9 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: ci(deps): use codecov-action for test results (#4689).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci.yml

## 150. e22c5c9e - fix(log): prevent sink destruction caused by backend exceptions (#4694)

- Date: 2026-02-10
- Author: Yundi339
- Tags: misc
- Change size: 1 file changed, 6 insertions(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches misc; primary path buckets: src. Subject indicates: fix(log): prevent sink destruction caused by backend exceptions (#4694).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/logging.cpp

## 151. fab86338 - build(deps): bump vue from 3.5.27 to 3.5.28 (#4696)

- Date: 2026-02-10
- Author: dependabot[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump vue from 3.5.27 to 3.5.28 (#4696).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 152. 4b1bc6a4 - build(deps): bump vmactions/freebsd-vm from 1.4.0 to 1.4.1 (#4690)

- Date: 2026-02-10
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump vmactions/freebsd-vm from 1.4.0 to 1.4.1 (#4690).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-freebsd.yml

## 153. 9d062285 - build(deps): migrate ffmpeg prebuild to downloaded archive (#4699)

- Date: 2026-02-10
- Author: David Lane
- Tags: linux/capture, build/deps, ci
- Change size: 7 files changed, 213 insertions(+), 49 deletions(-)
- Changed files: 7
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps, ci; primary path buckets: .github, .gitmodules, cmake, packaging, third-party. Subject indicates: build(deps): migrate ffmpeg prebuild to downloaded archive (#4699).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- .github/workflows/ci.yml
- .gitmodules
- cmake/dependencies/common.cmake
- cmake/dependencies/ffmpeg.cmake
- packaging/linux/flatpak/dev.lizardbyte.app.Sunshine.yml
- packaging/linux/flatpak/modules/ffmpeg.json
- third-party/build-deps

## 154. 28a0b3d7 - fix(flatpak): Add pipewire access for XDG portal grab (#4704)

- Date: 2026-02-11
- Author: David Lane
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: fix(flatpak): Add pipewire access for XDG portal grab (#4704).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/dev.lizardbyte.app.Sunshine.yml

## 155. 638cd699 - fix(linux/xdgportal): improve thread loop (un)locking & teardown logic (#4705)

- Date: 2026-02-12
- Author: Conn O'Griofa
- Tags: linux/capture
- Change size: 1 file changed, 19 insertions(+), 5 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/xdgportal): improve thread loop (un)locking & teardown logic (#4705).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/portalgrab.cpp

## 156. f60e2b08 - build(deps): bump LizardByte/actions from 2026.203.15239 to 2026.212.22356 in the lizardbyte-actions group across 1 directory (#4706)

- Date: 2026-02-12
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 8 insertions(+), 8 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump LizardByte/actions from 2026.203.15239 to 2026.212.22356 in the lizardbyte-actions group across 1 directory (#4706).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 157. 808686c9 - build(deps): bump vmactions/freebsd-vm from 1.4.1 to 1.4.2 (#4707)

- Date: 2026-02-12
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump vmactions/freebsd-vm from 1.4.1 to 1.4.2 (#4707).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-freebsd.yml

## 158. 9ba27574 - build(deps): bump marked from 17.0.1 to 17.0.2 (#4710)

- Date: 2026-02-12
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump marked from 17.0.1 to 17.0.2 (#4710).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 159. f442ff81 - fix(linux): update systemd service units (#4712)

- Date: 2026-02-13
- Author: Conn O'Griofa
- Tags: linux/capture, build/deps
- Change size: 2 files changed, 4 insertions(+), 2 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: fix(linux): update systemd service units (#4712).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/sunshine-kms.service.in
- packaging/linux/sunshine.service.in

## 160. 941f6453 - feat(macos/tray): allow tray icon paths to be set at runtime from .app bundle (#4711)

- Date: 2026-02-13
- Author: Andy Grundman
- Tags: macos
- Change size: 1 file changed, 64 insertions(+)
- Changed files: 1
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches macos; primary path buckets: src. Subject indicates: feat(macos/tray): allow tray icon paths to be set at runtime from .app bundle (#4711).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/system_tray.cpp

## 161. 2ef66bcc - ci: scope workflow permissions to job level (#4717)

- Date: 2026-02-13
- Author: David Lane
- Tags: ci
- Change size: 12 files changed, 57 insertions(+), 23 deletions(-)
- Changed files: 12
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github. Subject indicates: ci: scope workflow permissions to job level (#4717).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-archlinux.yml
- .github/workflows/ci-bundle.yml
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-freebsd.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci-windows.yml
- .github/workflows/ci.yml
- .github/workflows/localize.yml
- .github/workflows/release-notifier-moonlight.yml
- .github/workflows/update-pages.yml

## 162. d7ac57c9 - build(deps): bump LizardByte/actions from 2026.212.22356 to 2026.214.14019 in the lizardbyte-actions group across 1 directory (#4719)

- Date: 2026-02-13
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 10 insertions(+), 8 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump LizardByte/actions from 2026.212.22356 to 2026.214.14019 in the lizardbyte-actions group across 1 directory (#4719).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 163. a038cc13 - chore: update global workflows (#4725)

- Date: 2026-02-14
- Author: LizardByte-bot
- Tags: ci
- Change size: 13 files changed, 48 insertions(+), 32 deletions(-)
- Changed files: 13
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github. Subject indicates: chore: update global workflows (#4725).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/_codeql.yml
- .github/workflows/_common-lint.yml
- .github/workflows/_release-notifier.yml
- .github/workflows/_update-changelog.yml
- .github/workflows/_update-docs.yml
- .github/workflows/_update-flathub-repo.yml
- .github/workflows/_update-homebrew-repo.yml
- .github/workflows/_update-pacman-repo.yml
- .github/workflows/_update-winget-repo.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci.yml
- .github/workflows/release-notifier-moonlight.yml
- ... 1 more file(s)

## 164. 24c5dfd6 - fix(linux/xdgportal): stream scaling and mode change support (#4700)

- Date: 2026-02-15
- Author: Conn O'Griofa
- Tags: linux/capture
- Change size: 1 file changed, 127 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/xdgportal): stream scaling and mode change support (#4700).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/portalgrab.cpp

## 165. c9bcee44 - fix(linux): fix touch misalignment for wlgrab on scaled outputs (#4665)

- Date: 2026-02-17
- Author: herbie
- Tags: linux/capture
- Change size: 2 files changed, 53 insertions(+), 22 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux): fix touch misalignment for wlgrab on scaled outputs (#4665).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/input.cpp
- src/platform/linux/wlgrab.cpp

## 166. 4913b673 - fix(gh-pages): style fixes for theme switcher (#4748)

- Date: 2026-02-19
- Author: David Lane
- Tags: misc
- Change size: 4 files changed, 259 insertions(+), 466 deletions(-)
- Changed files: 4
- Import bucket: Review later
- Risk: Medium
- Change note: Touches misc; primary path buckets: gh-pages-template. Subject indicates: fix(gh-pages): style fixes for theme switcher (#4748).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- gh-pages-template/_config.yml
- gh-pages-template/_data/clients.yml
- gh-pages-template/_data/features.yml
- gh-pages-template/index.html

## 167. 00a52bb9 - build(deps): bump third-party/moonlight-common-c from `6250fa2` to `b187204` (#4751)

- Date: 2026-02-20
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 2 files changed, 3 insertions(+), 1 deletion(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: src, third-party. Subject indicates: build(deps): bump third-party/moonlight-common-c from `6250fa2` to `b187204` (#4751).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src/rswrapper.h
- third-party/moonlight-common-c

## 168. 95da4b5c - feat(linux/xdgportal): implement reactive capture with duplicate detection (#4740)

- Date: 2026-02-22
- Author: Conn O'Griofa
- Tags: linux/capture
- Change size: 2 files changed, 240 insertions(+), 74 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: feat(linux/xdgportal): implement reactive capture with duplicate detection (#4740).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/graphics.h
- src/platform/linux/portalgrab.cpp

## 169. 502be646 - fix(linux/kmsgrab): fix handle leak in update_cursor (#4757)

- Date: 2026-02-22
- Author: Conn O'Griofa
- Tags: linux/capture
- Change size: 1 file changed, 16 insertions(+), 4 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/kmsgrab): fix handle leak in update_cursor (#4757).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/kmsgrab.cpp

## 170. 2fb7e6eb - build(deps): bump LizardByte/build-deps (#4761)

- Date: 2026-02-22
- Author: David Lane
- Tags: linux/capture, build/deps
- Change size: 2 files changed, 5 insertions(+), 5 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging, third-party. Subject indicates: build(deps): bump LizardByte/build-deps (#4761).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/modules/ffmpeg.json
- third-party/build-deps

## 171. 1cb39b2a - build(deps): bump third-party/moonlight-common-c from `b187204` to `3fa9191` (#4755)

- Date: 2026-02-23
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/moonlight-common-c from `b187204` to `3fa9191` (#4755).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/moonlight-common-c

## 172. 6e48e080 - build(deps): bump lucide-vue-next from 0.563.0 to 0.575.0 (#4752)

- Date: 2026-02-23
- Author: dependabot[bot]
- Tags: web-ui, build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps, ci; primary path buckets: package.json. Subject indicates: build(deps): bump lucide-vue-next from 0.563.0 to 0.575.0 (#4752).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 173. 6ac1491a - build(deps): bump packaging/linux/flatpak/deps/shared-modules from `3d87a66` to `55a86b3` (#4741)

- Date: 2026-02-23
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/shared-modules from `3d87a66` to `55a86b3` (#4741).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/shared-modules

## 174. 381fff0c - build(deps): bump marked from 17.0.2 to 17.0.3 (#4744)

- Date: 2026-02-23
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump marked from 17.0.2 to 17.0.3 (#4744).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 175. c7bca414 - build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `216a52e` to `4d5e760` (#4766)

- Date: 2026-02-24
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `216a52e` to `4d5e760` (#4766).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/flatpak-builder-tools

## 176. fbb8520a - fix: replace remaining FontAwesome icons and drop shared-web dependency (#4764)

- Date: 2026-02-24
- Author: David Lane
- Tags: web-ui
- Change size: 4 files changed, 25 insertions(+), 13 deletions(-)
- Changed files: 4
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui; primary path buckets: package.json, src_assets. Subject indicates: fix: replace remaining FontAwesome icons and drop shared-web dependency (#4764).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json
- src_assets/common/assets/web/configs/tabs/General.vue
- src_assets/common/assets/web/configs/tabs/Network.vue
- src_assets/common/assets/web/configs/tabs/audiovideo/DisplayDeviceOptions.vue

## 177. 766473f6 - build(python): migrate to pyproject.toml and bump python to 3.14 (#4772)

- Date: 2026-02-24
- Author: David Lane
- Tags: build/deps, ci, docs
- Change size: 8 files changed, 56 insertions(+), 18 deletions(-)
- Changed files: 8
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci, docs; primary path buckets: .github, docs, scripts. Subject indicates: build(python): migrate to pyproject.toml and bump python to 3.14 (#4772).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-freebsd.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci-windows.yml
- .github/workflows/localize.yml
- docs/contributing.md
- scripts/pyproject.toml
- scripts/requirements.txt

## 178. 2620019b - docs: add maintainer release instructions (#4773)

- Date: 2026-02-24
- Author: David Lane
- Tags: docs
- Change size: 2 files changed, 59 insertions(+)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches docs; primary path buckets: docs. Subject indicates: docs: add maintainer release instructions (#4773).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- docs/maintainers/README.md
- docs/maintainers/release.md

## 179. 57f8a2a4 - build(deps): bump third-party/moonlight-common-c from `3fa9191` to `6268780` (#4765)

- Date: 2026-02-25
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/moonlight-common-c from `3fa9191` to `6268780` (#4765).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/moonlight-common-c

## 180. 13ca0d3e - build(deps): bump vue from 3.5.28 to 3.5.29 (#4767)

- Date: 2026-02-25
- Author: dependabot[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump vue from 3.5.28 to 3.5.29 (#4767).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 181. 0e8bfbc3 - chore(github): add Qualcomm GPU option to bug report template (#4733)

- Date: 2026-02-26
- Author: Coia Prant
- Tags: ci
- Change size: 1 file changed, 1 insertion(+)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github. Subject indicates: chore(github): add Qualcomm GPU option to bug report template (#4733).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/ISSUE_TEMPLATE/bug-report.yml

## 182. 98dc2195 - chore(l10n): update translations (#4698)

- Date: 2026-02-25
- Author: LizardByte-bot
- Tags: web-ui, l10n
- Change size: 5 files changed, 116 insertions(+), 116 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: chore(l10n): update translations (#4698).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/public/assets/locale/cs.json
- src_assets/common/assets/web/public/assets/locale/fr.json
- src_assets/common/assets/web/public/assets/locale/pl.json
- src_assets/common/assets/web/public/assets/locale/ru.json
- src_assets/common/assets/web/public/assets/locale/zh.json

## 183. 83e8fcf1 - build(deps): bump third-party/doxyconfig from `89c8ec9` to `ba47416` (#4778)

- Date: 2026-02-26
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/doxyconfig from `89c8ec9` to `ba47416` (#4778).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/doxyconfig

## 184. 5395a9a5 - fix(linux/xdgportal): don't pass `external_only` argument to `eglQueryDmaBufModifiersEXT` (#4754)

- Date: 2026-02-26
- Author: Vladimir Solomatin
- Tags: linux/capture
- Change size: 1 file changed, 1 insertion(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/xdgportal): don't pass `external_only` argument to `eglQueryDmaBufModifiersEXT` (#4754).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/portalgrab.cpp

## 185. dad5039f - build(deps-dev): bump vite from 6.3.6 to 6.4.1 in the dev-dependencies group (#4782)

- Date: 2026-02-27
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: package.json. Subject indicates: build(deps-dev): bump vite from 6.3.6 to 6.4.1 in the dev-dependencies group (#4782).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 186. 80103a5d - build(deps): bump the github-actions group across 1 directory with 2 updates (#4783)

- Date: 2026-02-27
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 9 files changed, 17 insertions(+), 17 deletions(-)
- Changed files: 9
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump the github-actions group across 1 directory with 2 updates (#4783).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-archlinux.yml
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-freebsd.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci-windows.yml
- .github/workflows/ci.yml
- .github/workflows/update-pages.yml

## 187. 2b7af211 - refactor: replace macros with constexpr/consts (#4791)

- Date: 2026-02-28
- Author: David Lane
- Tags: macos, linux/capture
- Change size: 12 files changed, 74 insertions(+), 76 deletions(-)
- Changed files: 12
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches macos, linux/capture; primary path buckets: src, tools. Subject indicates: refactor: replace macros with constexpr/consts (#4791).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/config.cpp
- src/entry_handler.cpp
- src/input.cpp
- src/platform/common.h
- src/platform/linux/publish.cpp
- src/platform/macos/av_audio.h
- src/platform/macos/av_video.h
- src/platform/macos/publish.cpp
- src/platform/windows/audio.cpp
- src/platform/windows/publish.cpp
- src/stream.cpp
- tools/sunshinesvc.cpp

## 188. 188f1e29 - style(cpp): separate multiple variable declarations (#4795)

- Date: 2026-03-01
- Author: David Lane
- Tags: linux/capture
- Change size: 19 files changed, 134 insertions(+), 65 deletions(-)
- Changed files: 19
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: style(cpp): separate multiple variable declarations (#4795).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/crypto.cpp
- src/input.cpp
- src/input.h
- src/platform/common.h
- src/platform/linux/cuda.cpp
- src/platform/linux/cuda.h
- src/platform/linux/graphics.cpp
- src/platform/linux/graphics.h
- src/platform/linux/kmsgrab.cpp
- src/platform/linux/vaapi.cpp
- src/platform/linux/wlgrab.cpp
- src/platform/windows/display.h
- ... 7 more file(s)

## 189. d157bb1d - build(deps): bump LizardByte/actions from 2026.214.14019 to 2026.227.200013 in the lizardbyte-actions group across 1 directory (#4789)

- Date: 2026-03-01
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 8 insertions(+), 8 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump LizardByte/actions from 2026.214.14019 to 2026.227.200013 in the lizardbyte-actions group across 1 directory (#4789).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 190. 5f8dab09 - fix: struct ordering broken in 188f1e2959e44b4a463bf4dee616a5cbee6f3557 (#4802)

- Date: 2026-03-02
- Author: David Lane
- Tags: linux/capture
- Change size: 8 files changed, 25 insertions(+), 32 deletions(-)
- Changed files: 8
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix: struct ordering broken in 188f1e2959e44b4a463bf4dee616a5cbee6f3557 (#4802).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/input.h
- src/platform/common.h
- src/platform/linux/cuda.h
- src/platform/linux/graphics.h
- src/platform/linux/kmsgrab.cpp
- src/platform/linux/vaapi.cpp
- src/platform/windows/display.h
- src/video_colorspace.cpp

## 191. fc001cd0 - chore: update global workflows (#4807)

- Date: 2026-03-02
- Author: LizardByte-bot
- Tags: ci
- Change size: 1 file changed, 1 insertion(+)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github. Subject indicates: chore: update global workflows (#4807).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/_common-lint.yml

## 192. fdd1b97a - build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `4d5e760` to `5de4612` (#4808)

- Date: 2026-03-03
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `4d5e760` to `5de4612` (#4808).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/flatpak-builder-tools

## 193. 5d219c7a - build(deps): bump packaging/linux/flatpak/deps/shared-modules from `55a86b3` to `fc11224` (#4809)

- Date: 2026-03-03
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/shared-modules from `55a86b3` to `fc11224` (#4809).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/shared-modules

## 194. 655b1902 - feat(web-ui): clipboard copy feedback on Troubleshooting logs (#4803)

- Date: 2026-03-03
- Author: Eduardo Mozart de Oliveira
- Tags: web-ui
- Change size: 1 file changed, 20 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui; primary path buckets: src_assets. Subject indicates: feat(web-ui): clipboard copy feedback on Troubleshooting logs (#4803).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/troubleshooting.html

## 195. 4e0a384f - build(deps): bump vue3-simple-icons from 15.6.0 to 16.10.0 (#4804)

- Date: 2026-03-03
- Author: dependabot[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump vue3-simple-icons from 15.6.0 to 16.10.0 (#4804).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 196. b000d438 - build(deps): bump lucide-vue-next from 0.575.0 to 0.576.0 (#4805)

- Date: 2026-03-03
- Author: dependabot[bot]
- Tags: web-ui, build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps, ci; primary path buckets: package.json. Subject indicates: build(deps): bump lucide-vue-next from 0.575.0 to 0.576.0 (#4805).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 197. 423a864e - feat(macos): build a signed .app bundle in a .dmg (#4759)

- Date: 2026-03-03
- Author: Andy Grundman
- Tags: macos, web-ui, build/deps, ci
- Change size: 22 files changed, 658 insertions(+), 110 deletions(-)
- Changed files: 22
- Import bucket: Subsystem review
- Risk: Medium/High
- Change note: Touches macos, web-ui, build/deps; primary path buckets: .github, cmake, scripts, src, src_assets. Subject indicates: feat(macos): build a signed .app bundle in a .dmg (#4759).
- Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.
- Top files:
- .github/workflows/ci-macos.yml
- .github/workflows/ci.yml
- cmake/compile_definitions/common.cmake
- cmake/compile_definitions/macos.cmake
- cmake/compile_definitions/unix.cmake
- cmake/dependencies/FindOpus.cmake
- cmake/dependencies/common.cmake
- cmake/packaging/macos.cmake
- cmake/packaging/unix.cmake
- cmake/prep/init.cmake
- cmake/prep/options.cmake
- cmake/targets/common.cmake
- ... 10 more file(s)

## 198. c710d03b - build(deps): bump the github-actions group across 1 directory with 2 updates (#4810)

- Date: 2026-03-04
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 4 files changed, 5 insertions(+), 5 deletions(-)
- Changed files: 4
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump the github-actions group across 1 directory with 2 updates (#4810).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-bundle.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-macos.yml
- .github/workflows/ci-windows.yml

## 199. a97ed29b - build(deps-dev): bump serve from 14.2.5 to 14.2.6 in the dev-dependencies group (#4814)

- Date: 2026-03-04
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: package.json. Subject indicates: build(deps-dev): bump serve from 14.2.5 to 14.2.6 in the dev-dependencies group (#4814).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 200. 49abb160 - fix(build): ensure libopus is statically linked (#4819)

- Date: 2026-03-05
- Author: Andy Grundman
- Tags: build/deps, ci
- Change size: 4 files changed, 34 insertions(+), 5 deletions(-)
- Changed files: 4
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github, cmake, scripts. Subject indicates: fix(build): ensure libopus is statically linked (#4819).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-macos.yml
- cmake/dependencies/FindOpus.cmake
- cmake/dependencies/common.cmake
- scripts/macos_build.sh

## 201. bfdafa5f - build(fedora): fix rawhide build (#4821)

- Date: 2026-03-06
- Author: David Lane
- Tags: linux/capture, build/deps
- Change size: 6 files changed, 171 insertions(+), 24 deletions(-)
- Changed files: 8
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging, scripts. Subject indicates: build(fedora): fix rawhide build (#4821).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/copr/Sunshine.spec
- packaging/linux/patches/aarch64/01-math_functions.patch
- packaging/linux/patches/aarch64/cuda-12-math_functions.patch
- packaging/linux/patches/aarch64/cuda-13-math_functions.patch
- packaging/linux/patches/x86_64/01-math_functions.patch
- packaging/linux/patches/x86_64/cuda-12-math_functions.patch
- packaging/linux/patches/x86_64/cuda-13-math_functions.patch
- scripts/linux_build.sh

## 202. 53f05d48 - fix(macos): hide the Dock icon (#4823)

- Date: 2026-03-06
- Author: Andy Grundman
- Tags: macos, web-ui
- Change size: 1 file changed, 2 insertions(+)
- Changed files: 1
- Import bucket: Subsystem review
- Risk: Medium/High
- Change note: Touches macos, web-ui; primary path buckets: src_assets. Subject indicates: fix(macos): hide the Dock icon (#4823).
- Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.
- Top files:
- src_assets/macos/build/Info.plist.in

## 203. 630c57ce - fix(linux/portal): set env_width/env_height so touch input works (#4822)

- Date: 2026-03-06
- Author: michalzxc
- Tags: linux/capture
- Change size: 1 file changed, 7 insertions(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/portal): set env_width/env_height so touch input works (#4822).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/portalgrab.cpp

## 204. d61f5e44 - build(deps): bump marked from 17.0.3 to 17.0.4 (#4817)

- Date: 2026-03-06
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump marked from 17.0.3 to 17.0.4 (#4817).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 205. 1693876b - build(deps): bump actions/setup-dotnet from 5.1.0 to 5.2.0 in the github-actions group across 1 directory (#4815)

- Date: 2026-03-06
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump actions/setup-dotnet from 5.1.0 to 5.2.0 in the github-actions group across 1 directory (#4815).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-windows.yml

## 206. 438b2391 - ci(macOS): check notary status in separate job (#4820)

- Date: 2026-03-06
- Author: David Lane
- Tags: macos, ci, docs
- Change size: 4 files changed, 145 insertions(+), 22 deletions(-)
- Changed files: 4
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches macos, ci, docs; primary path buckets: .github, docs. Subject indicates: ci(macOS): check notary status in separate job (#4820).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- .github/ISSUE_TEMPLATE/bug-report.yml
- .github/workflows/ci-macos.yml
- .github/workflows/ci.yml
- docs/getting_started.md

## 207. c4c10a16 - chore(l10n): update translations (#4793)

- Date: 2026-03-06
- Author: LizardByte-bot
- Tags: web-ui, l10n
- Change size: 1 file changed, 6 insertions(+), 6 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: chore(l10n): update translations (#4793).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/public/assets/locale/zh.json

## 208. e776b65b - build(homebrew): dynamic link opus (#4826)

- Date: 2026-03-07
- Author: David Lane
- Tags: build/deps
- Change size: 1 file changed, 6 insertions(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: cmake. Subject indicates: build(homebrew): dynamic link opus (#4826).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- cmake/dependencies/common.cmake

## 209. 76c3463d - fix(linux/wlgrab): add frame_timestamp using wayland's ready timestamp (#4787)

- Date: 2026-03-07
- Author: Andy Grundman
- Tags: linux/capture
- Change size: 3 files changed, 65 insertions(+), 49 deletions(-)
- Changed files: 3
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/wlgrab): add frame_timestamp using wayland's ready timestamp (#4787).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/wayland.cpp
- src/platform/linux/wayland.h
- src/platform/linux/wlgrab.cpp

## 210. daa99db6 - fix(linux): use FQDN naming for all Linux packaging types (#4779)

- Date: 2026-03-07
- Author: Conn O'Griofa
- Tags: linux/capture, build/deps, docs
- Change size: 16 files changed, 65 insertions(+), 81 deletions(-)
- Changed files: 17
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps, docs; primary path buckets: cmake, docs, packaging, src. Subject indicates: fix(linux): use FQDN naming for all Linux packaging types (#4779).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- cmake/compile_definitions/linux.cmake
- cmake/packaging/linux.cmake
- cmake/prep/build_version.cmake
- cmake/prep/special_package_configuration.cmake
- docs/getting_started.md
- docs/troubleshooting.md
- packaging/linux/00-app-dev.lizardbyte.app.Sunshine.preset.in
- packaging/linux/00-sunshine-kms.preset.in
- packaging/linux/AppImage/AppRun
- packaging/linux/app-dev.lizardbyte.app.Sunshine.service.in
- packaging/linux/copr/Sunshine.spec
- packaging/linux/dev.lizardbyte.app.Sunshine.desktop
- ... 5 more file(s)

## 211. 3fbbe88b - build(deps): bump lucide-vue-next from 0.576.0 to 0.577.0 (#4818)

- Date: 2026-03-07
- Author: dependabot[bot]
- Tags: web-ui, build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps, ci; primary path buckets: package.json. Subject indicates: build(deps): bump lucide-vue-next from 0.576.0 to 0.577.0 (#4818).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 212. f04f6a2b - refactor(confighttp): HTML page handlers into generic getPage function (#4645)

- Date: 2026-03-08
- Author: David Lane
- Tags: web-ui, docs, l10n
- Change size: 13 files changed, 1229 insertions(+), 254 deletions(-)
- Changed files: 13
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, docs, l10n; primary path buckets: docs, src, src_assets, tests. Subject indicates: refactor(confighttp): HTML page handlers into generic getPage function (#4645).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- docs/api.js
- docs/api.md
- docs/configuration.md
- src/config.cpp
- src/config.h
- src/confighttp.cpp
- src/confighttp.h
- src_assets/common/assets/web/config.html
- src_assets/common/assets/web/configs/tabs/Network.vue
- src_assets/common/assets/web/public/assets/locale/en.json
- tests/CMakeLists.txt
- tests/tests_common.h
- ... 1 more file(s)

## 213. 7e3cf702 - build(deps): move nvapi to official NVIDIA repo and bump to R590 (#3725)

- Date: 2026-03-08
- Author: David Lane
- Tags: build/deps, ci
- Change size: 5 files changed, 29 insertions(+), 10 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .gitmodules, cmake, src, third-party. Subject indicates: build(deps): move nvapi to official NVIDIA repo and bump to R590 (#3725).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .gitmodules
- cmake/compile_definitions/windows.cmake
- src/platform/windows/nvprefs/driver_settings.h
- third-party/nvapi
- third-party/nvapi-open-source-sdk

## 214. 4c7df2dd - build(deps): bump vue-i18n from 11.2.8 to 11.3.0 (#4828)

- Date: 2026-03-08
- Author: dependabot[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump vue-i18n from 11.2.8 to 11.3.0 (#4828).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 215. 60158b47 - feat(linux/xdgportal): implement event-driven capture (#4768)

- Date: 2026-03-10
- Author: Conn O'Griofa
- Tags: linux/capture
- Change size: 2 files changed, 106 insertions(+), 49 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: feat(linux/xdgportal): implement event-driven capture (#4768).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/graphics.h
- src/platform/linux/portalgrab.cpp

## 216. 977045cc - build(windows): sign windows executables (#4829)

- Date: 2026-03-10
- Author: David Lane
- Tags: build/deps, ci
- Change size: 2 files changed, 70 insertions(+)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(windows): sign windows executables (#4829).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-windows.yml
- .github/workflows/ci.yml

## 217. ab1beed4 - build(deps): bump vue from 3.5.29 to 3.5.30 (#4834)

- Date: 2026-03-10
- Author: dependabot[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump vue from 3.5.29 to 3.5.30 (#4834).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 218. af44c534 - chore(l10n): update translations (#4831)

- Date: 2026-03-10
- Author: LizardByte-bot
- Tags: web-ui, l10n
- Change size: 21 files changed, 49 insertions(+), 7 deletions(-)
- Changed files: 21
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: chore(l10n): update translations (#4831).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/public/assets/locale/bg.json
- src_assets/common/assets/web/public/assets/locale/cs.json
- src_assets/common/assets/web/public/assets/locale/de.json
- src_assets/common/assets/web/public/assets/locale/en_GB.json
- src_assets/common/assets/web/public/assets/locale/en_US.json
- src_assets/common/assets/web/public/assets/locale/es.json
- src_assets/common/assets/web/public/assets/locale/fr.json
- src_assets/common/assets/web/public/assets/locale/hu.json
- src_assets/common/assets/web/public/assets/locale/it.json
- src_assets/common/assets/web/public/assets/locale/ja.json
- src_assets/common/assets/web/public/assets/locale/ko.json
- src_assets/common/assets/web/public/assets/locale/pl.json
- ... 9 more file(s)

## 219. fc52fa3d - fix(web-ui): add missing featured apps platform icons (#4837)

- Date: 2026-03-11
- Author: David Lane
- Tags: web-ui
- Change size: 1 file changed, 20 insertions(+), 8 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui; primary path buckets: src_assets. Subject indicates: fix(web-ui): add missing featured apps platform icons (#4837).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/featured.html

## 220. c8b9bdbd - ci(windows): disable signing for arm64 (#4838)

- Date: 2026-03-11
- Author: David Lane
- Tags: ci
- Change size: 1 file changed, 4 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github. Subject indicates: ci(windows): disable signing for arm64 (#4838).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-windows.yml

## 221. b3f0e237 - fix(linux/xdgportal): descriptor/pointer cleanups (#4840)

- Date: 2026-03-11
- Author: Conn O'Griofa
- Tags: linux/capture
- Change size: 1 file changed, 5 insertions(+), 5 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/xdgportal): descriptor/pointer cleanups (#4840).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/portalgrab.cpp

## 222. e836354e - feat(web-ui): add browse feature to find directories/executables/files (#4848)

- Date: 2026-03-13
- Author: David Lane
- Tags: web-ui, docs, l10n
- Change size: 7 files changed, 1113 insertions(+), 10 deletions(-)
- Changed files: 7
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, docs, l10n; primary path buckets: docs, src, src_assets, tests. Subject indicates: feat(web-ui): add browse feature to find directories/executables/files (#4848).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- docs/api.md
- src/confighttp.cpp
- src/confighttp.h
- src_assets/common/assets/web/apps.html
- src_assets/common/assets/web/public/assets/locale/en.json
- tests/unit/test_confighttp.cpp
- tests/unit/test_process.cpp

## 223. 5b2bedd3 - build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `5de4612` to `37eb3e5` (#4844)

- Date: 2026-03-13
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `5de4612` to `37eb3e5` (#4844).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/flatpak-builder-tools

## 224. 90bd1084 - build(deps): bump actions/download-artifact from 8.0.0 to 8.0.1 in the github-actions group across 1 directory (#4842)

- Date: 2026-03-13
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 3 files changed, 5 insertions(+), 5 deletions(-)
- Changed files: 3
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump actions/download-artifact from 8.0.0 to 8.0.1 in the github-actions group across 1 directory (#4842).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-macos.yml
- .github/workflows/ci.yml

## 225. 8a30a54d - chore(l10n): update translations (#4841)

- Date: 2026-03-13
- Author: LizardByte-bot
- Tags: web-ui, l10n
- Change size: 1 file changed, 21 insertions(+), 21 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: chore(l10n): update translations (#4841).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/public/assets/locale/zh.json

## 226. 00fa2400 - build(Fedora): Adjust version ranges for GCC selection (#4851)

- Date: 2026-03-14
- Author: David Lane
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 2 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(Fedora): Adjust version ranges for GCC selection (#4851).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/copr/Sunshine.spec

## 227. 99d4e053 - fix(linux/xdgportal): avoid duplicate frame insertion (#4839)

- Date: 2026-03-14
- Author: Conn O'Griofa
- Tags: encoder/video, linux/capture
- Change size: 3 files changed, 12 insertions(+), 2 deletions(-)
- Changed files: 3
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches encoder/video, linux/capture; primary path buckets: src. Subject indicates: fix(linux/xdgportal): avoid duplicate frame insertion (#4839).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/platform/common.h
- src/platform/linux/portalgrab.cpp
- src/video.cpp

## 228. f31bf6cd - build(deps): bump vmactions/freebsd-vm from 1.4.2 to 1.4.3 (#4849)

- Date: 2026-03-14
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump vmactions/freebsd-vm from 1.4.2 to 1.4.3 (#4849).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-freebsd.yml

## 229. 0bbaa2db - build(deps): bump packaging/linux/flatpak/deps/shared-modules from `fc11224` to `a61b494` (#4850)

- Date: 2026-03-14
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/shared-modules from `fc11224` to `a61b494` (#4850).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/shared-modules

## 230. ea201155 - build(linux): generate glad sources at compile time (#4798)

- Date: 2026-03-15
- Author: David Lane
- Tags: linux/capture, build/deps, ci, docs
- Change size: 28 files changed, 384 insertions(+), 7283 deletions(-)
- Changed files: 29
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps, ci; primary path buckets: .github, .gitmodules, cmake, docs, packaging. Subject indicates: build(linux): generate glad sources at compile time (#4798).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-freebsd.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci-macos.yml
- .github/workflows/ci-windows.yml
- .github/workflows/localize.yml
- .gitmodules
- cmake/compile_definitions/linux.cmake
- cmake/dependencies/glad.cmake
- cmake/dependencies/linux.cmake
- docs/building.md
- docs/contributing.md
- ... 17 more file(s)

## 231. b5b905b2 - build(deps): bump third-party/doxyconfig from `ba47416` to `a9f0c38` (#4853)

- Date: 2026-03-15
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/doxyconfig from `ba47416` to `a9f0c38` (#4853).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/doxyconfig

## 232. 1bd1b004 - chore(i18n): clarify cmd notes (#4856)

- Date: 2026-03-15
- Author: David Lane
- Tags: web-ui, l10n
- Change size: 3 files changed, 6 insertions(+), 6 deletions(-)
- Changed files: 3
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: chore(i18n): clarify cmd notes (#4856).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/public/assets/locale/en.json
- src_assets/common/assets/web/public/assets/locale/en_GB.json
- src_assets/common/assets/web/public/assets/locale/en_US.json

## 233. e2afac95 - build(deps): bump third-party/inputtino from `504f0ab` to `73e9fa1` (#4860)

- Date: 2026-03-16
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/inputtino from `504f0ab` to `73e9fa1` (#4860).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/inputtino

## 234. ff33670c - build(deps): bump third-party/glad from `dcc4f69` to `73db193` (#4858)

- Date: 2026-03-16
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/glad from `dcc4f69` to `73db193` (#4858).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/glad

## 235. 253e624e - fix(linux/xdgportal): allow unified systemd service for all capture methods (#4854)

- Date: 2026-03-16
- Author: Conn O'Griofa
- Tags: linux/capture, build/deps, docs
- Change size: 11 files changed, 56 insertions(+), 67 deletions(-)
- Changed files: 11
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps, docs; primary path buckets: cmake, docs, packaging, src. Subject indicates: fix(linux/xdgportal): allow unified systemd service for all capture methods (#4854).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- cmake/FindSystemd.cmake
- cmake/packaging/linux.cmake
- cmake/prep/special_package_configuration.cmake
- docs/getting_started.md
- docs/troubleshooting.md
- packaging/linux/00-app-dev.lizardbyte.app.Sunshine.preset.in
- packaging/linux/app-dev.lizardbyte.app.Sunshine.service.in
- packaging/linux/copr/Sunshine.spec
- packaging/linux/sunshine.service.in
- src/platform/linux/kmsgrab.cpp
- src/platform/linux/portalgrab.cpp

## 236. 7a30ead4 - feat(linux/keyboard): add F13-F24 keycodes (#4833)

- Date: 2026-03-16
- Author: mia~
- Tags: linux/capture
- Change size: 1 file changed, 12 insertions(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: feat(linux/keyboard): add F13-F24 keycodes (#4833).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/input/inputtino_keyboard.cpp

## 237. 2a5901b2 - build(deps): bump apple-actions/import-codesign-certs from 6.0.0 to 6.1.0 (#4864)

- Date: 2026-03-17
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 2 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump apple-actions/import-codesign-certs from 6.0.0 to 6.1.0 (#4864).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-macos.yml

## 238. 04e9db4f - build(deps): bump third-party/nv-codec-headers from `22441b5` to `fe32761` (#4866)

- Date: 2026-03-18
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/nv-codec-headers from `22441b5` to `fe32761` (#4866).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/nv-codec-headers

## 239. f1931608 - build(deps): bump actions/cache from 5.0.3 to 5.0.4 in the github-actions group across 1 directory (#4870)

- Date: 2026-03-19
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump actions/cache from 5.0.3 to 5.0.4 in the github-actions group across 1 directory (#4870).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-flatpak.yml

## 240. 7a15a727 - build(deps): bump codecov/codecov-action from 5.5.2 to 5.5.3 (#4871)

- Date: 2026-03-19
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 2 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump codecov/codecov-action from 5.5.2 to 5.5.3 (#4871).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci.yml

## 241. 7b364a89 - build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `37eb3e5` to `cc1d7b8` (#4872)

- Date: 2026-03-19
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `37eb3e5` to `cc1d7b8` (#4872).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/flatpak-builder-tools

## 242. 8de642ff - build(deps): bump third-party/inputtino from `73e9fa1` to `f4ce2b0` (#4873)

- Date: 2026-03-19
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/inputtino from `73e9fa1` to `f4ce2b0` (#4873).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/inputtino

## 243. 4bd461cf - fix(linux): use FQDN service name in desktop launcher (#4874)

- Date: 2026-03-20
- Author: htrex
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: fix(linux): use FQDN service name in desktop launcher (#4874).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/dev.lizardbyte.app.Sunshine.desktop

## 244. a7ab814f - fix(linux/xdgportal): portalgrab capture stability & mutter compatibility (#4875)

- Date: 2026-03-21
- Author: Conn O'Griofa
- Tags: linux/capture
- Change size: 1 file changed, 143 insertions(+), 91 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/xdgportal): portalgrab capture stability & mutter compatibility (#4875).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/portalgrab.cpp

## 245. 0d3be0bb - feat(macOS): Capture audio on macOS using Tap API (#4209)

- Date: 2026-03-21
- Author: Thomas Van Laere
- Tags: macos, linux/capture, web-ui, build/deps, ci, docs, l10n
- Change size: 21 files changed, 1651 insertions(+), 194 deletions(-)
- Changed files: 21
- Import bucket: Subsystem review
- Risk: Medium/High
- Change note: Touches macos, linux/capture, web-ui; primary path buckets: .github, README.md, cmake, docs, packaging. Subject indicates: feat(macOS): Capture audio on macOS using Tap API (#4209).
- Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.
- Top files:
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-macos.yml
- README.md
- cmake/compile_definitions/macos.cmake
- cmake/dependencies/macos.cmake
- docs/getting_started.md
- packaging/sunshine.rb
- src/audio.cpp
- src/config.h
- src/platform/common.h
- src/platform/linux/audio.cpp
- src/platform/macos/av_audio.h
- ... 9 more file(s)

## 246. ae8adfd8 - feat(linux/glad): implement EGL_IMG_context_priority (#4857)

- Date: 2026-03-22
- Author: Conn O'Griofa
- Tags: linux/capture, web-ui, build/deps, docs
- Change size: 9 files changed, 72 insertions(+), 23 deletions(-)
- Changed files: 9
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, web-ui, build/deps; primary path buckets: cmake, docs, packaging, src, src_assets. Subject indicates: feat(linux/glad): implement EGL_IMG_context_priority (#4857).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- cmake/dependencies/glad.cmake
- cmake/packaging/linux.cmake
- docs/building.md
- packaging/linux/AppImage/AppRun
- packaging/linux/Arch/sunshine.install
- packaging/linux/copr/Sunshine.spec
- src/platform/linux/graphics.cpp
- src/platform/linux/portalgrab.cpp
- src_assets/linux/misc/postinst

## 247. be2ccd77 - build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `cc1d7b8` to `5c73dc4` (#4880)

- Date: 2026-03-21
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `cc1d7b8` to `5c73dc4` (#4880).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/flatpak-builder-tools

## 248. dda9a61c - build(deps): bump marked from 17.0.4 to 17.0.5 (#4881)

- Date: 2026-03-21
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump marked from 17.0.4 to 17.0.5 (#4881).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 249. 1a315244 - build(deps): bump third-party/doxyconfig from `a9f0c38` to `334ad6a` (#4888)

- Date: 2026-03-22
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/doxyconfig from `a9f0c38` to `334ad6a` (#4888).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/doxyconfig

## 250. 601ae387 - build(deps): bump third-party/libdisplaydevice from `b46492b` to `fe7e6a8` (#4887)

- Date: 2026-03-22
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/libdisplaydevice from `b46492b` to `fe7e6a8` (#4887).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/libdisplaydevice

## 251. 26d5c1e4 - build(deps): bump packaging/linux/flatpak/deps/shared-modules from `a61b494` to `2f1fb18` (#4886)

- Date: 2026-03-22
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/shared-modules from `a61b494` to `2f1fb18` (#4886).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/shared-modules

## 252. 24b66fed - fix(csrf): make errors more apparent (#4889)

- Date: 2026-03-22
- Author: David Lane
- Tags: security/session, web-ui, l10n
- Change size: 11 files changed, 283 insertions(+), 74 deletions(-)
- Changed files: 11
- Import bucket: Subsystem review
- Risk: Medium/High
- Change note: Touches security/session, web-ui, l10n; primary path buckets: src, src_assets. Subject indicates: fix(csrf): make errors more apparent (#4889).
- Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.
- Top files:
- src/confighttp.cpp
- src_assets/common/assets/web/Navbar.vue
- src_assets/common/assets/web/Notification.vue
- src_assets/common/assets/web/apps.html
- src_assets/common/assets/web/config.html
- src_assets/common/assets/web/fetch_utils.js
- src_assets/common/assets/web/password.html
- src_assets/common/assets/web/pin.html
- src_assets/common/assets/web/public/assets/locale/en.json
- src_assets/common/assets/web/troubleshooting.html
- src_assets/common/assets/web/welcome.html

## 253. d6bc76e3 - fix: clear tray icon when unpairing the last paired client (#4890)

- Date: 2026-03-23
- Author: aliefe04
- Tags: misc
- Change size: 1 file changed, 7 insertions(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches misc; primary path buckets: src. Subject indicates: fix: clear tray icon when unpairing the last paired client (#4890).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/confighttp.cpp

## 254. 3e06afab - feat(linux): add thread priority support for POSIX systems (#4885)

- Date: 2026-03-23
- Author: Conn O'Griofa
- Tags: linux/capture, build/deps
- Change size: 2 files changed, 77 insertions(+), 6 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps; primary path buckets: cmake, src. Subject indicates: feat(linux): add thread priority support for POSIX systems (#4885).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- cmake/compile_definitions/linux.cmake
- src/platform/linux/misc.cpp

## 255. 7df35f40 - build: fix build-deps tag matching (#4899)

- Date: 2026-03-23
- Author: David Lane
- Tags: build/deps
- Change size: 1 file changed, 7 insertions(+)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: cmake. Subject indicates: build: fix build-deps tag matching (#4899).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- cmake/dependencies/ffmpeg.cmake

## 256. 41707cff - build(deps): bump third-party/tray from `4caf0d0` to `563dee4` (#4894)

- Date: 2026-03-23
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/tray from `4caf0d0` to `563dee4` (#4894).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/tray

## 257. 4126e18f - build(deps): bump msys2/setup-msys2 from 2.30.0 to 2.31.0 (#4893)

- Date: 2026-03-23
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump msys2/setup-msys2 from 2.30.0 to 2.31.0 (#4893).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-windows.yml

## 258. 3723f457 - build(deps): bump lucide-vue-next from 0.577.0 to 1.0.0 (#4905)

- Date: 2026-03-24
- Author: dependabot[bot]
- Tags: web-ui, build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps, ci; primary path buckets: package.json. Subject indicates: build(deps): bump lucide-vue-next from 0.577.0 to 1.0.0 (#4905).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 259. 3fb10a0d - build(deps): bump azure/trusted-signing-action from 1.1.0 to 1.2.0 (#4903)

- Date: 2026-03-24
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 2 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump azure/trusted-signing-action from 1.1.0 to 1.2.0 (#4903).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-windows.yml

## 260. d890faf1 - build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `5c73dc4` to `caca92b` (#4910)

- Date: 2026-03-26
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `5c73dc4` to `caca92b` (#4910).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/flatpak-builder-tools

## 261. 1ee91636 - build(deps): bump vue from 3.5.30 to 3.5.31 (#4911)

- Date: 2026-03-26
- Author: dependabot[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump vue from 3.5.30 to 3.5.31 (#4911).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 262. 16d0f3ae - build(deps): bump LizardByte/actions from 2026.227.200013 to 2026.328.161128 in the lizardbyte-actions group across 1 directory (#4920)

- Date: 2026-03-28
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 8 insertions(+), 8 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump LizardByte/actions from 2026.227.200013 to 2026.328.161128 in the lizardbyte-actions group across 1 directory (#4920).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 263. f6703a27 - test(windows): fix display device tests with clang (#4921)

- Date: 2026-03-28
- Author: David Lane
- Tags: misc
- Change size: 1 file changed, 3 insertions(+), 3 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches misc; primary path buckets: tests. Subject indicates: test(windows): fix display device tests with clang (#4921).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- tests/unit/test_display_device.cpp

## 264. 994e2c3f - chore: update global workflows (#4916)

- Date: 2026-03-28
- Author: LizardByte-bot
- Tags: ci
- Change size: 2 files changed, 8 insertions(+), 21 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github, codecov.yml. Subject indicates: chore: update global workflows (#4916).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/dependabot.yml
- codecov.yml

## 265. 9cffd08f - build(deps): bump codecov/codecov-action from 5.5.3 to 6.0.0 (#4913)

- Date: 2026-03-28
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 2 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump codecov/codecov-action from 5.5.3 to 6.0.0 (#4913).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci.yml

## 266. aa607821 - build: Allow FFMPEG_PLATFORM_LIBRARIES to be overridden by the user (#4915)

- Date: 2026-03-28
- Author: James Le Cuirot
- Tags: build/deps
- Change size: 1 file changed, 8 insertions(+), 6 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: cmake. Subject indicates: build: Allow FFMPEG_PLATFORM_LIBRARIES to be overridden by the user (#4915).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- cmake/dependencies/ffmpeg.cmake

## 267. 72faa710 - fix: restore stdin-based pairing (#4912)

- Date: 2026-03-28
- Author: Glenn Hope
- Tags: misc
- Change size: 1 file changed, 1 insertion(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches misc; primary path buckets: src. Subject indicates: fix: restore stdin-based pairing (#4912).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/nvhttp.cpp

## 268. dc2dc61d - build(deps): bump third-party/moonlight-common-c from `6268780` to `7022b33` (#4923)

- Date: 2026-03-28
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/moonlight-common-c from `6268780` to `7022b33` (#4923).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/moonlight-common-c

## 269. d0333469 - feat(api/ui): add client enable/disable access control (#4771)

- Date: 2026-03-29
- Author: neatnoise
- Tags: web-ui, docs
- Change size: 5 files changed, 122 insertions(+), 2 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, docs; primary path buckets: docs, src, src_assets. Subject indicates: feat(api/ui): add client enable/disable access control (#4771).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- docs/api.md
- src/confighttp.cpp
- src/nvhttp.cpp
- src/nvhttp.h
- src_assets/common/assets/web/troubleshooting.html

## 270. 4ef856ab - fix(windows): update-path.bat registry command syntax in installer (#4902)

- Date: 2026-03-30
- Author: 空明竹随
- Tags: web-ui
- Change size: 1 file changed, 3 insertions(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui; primary path buckets: src_assets. Subject indicates: fix(windows): update-path.bat registry command syntax in installer (#4902).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/windows/misc/path/update-path.bat

## 271. 356c6a2c - build(deps): bump vmactions/freebsd-vm from 1.4.3 to 1.4.4 (#4928)

- Date: 2026-03-30
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump vmactions/freebsd-vm from 1.4.3 to 1.4.4 (#4928).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-freebsd.yml

## 272. 0752f641 - feat(linux): Add Vulkan video encoder (#4603)

- Date: 2026-03-31
- Author: neatnoise
- Tags: encoder/video, linux/capture, web-ui, build/deps, ci, docs, l10n
- Change size: 29 files changed, 1566 insertions(+), 28 deletions(-)
- Changed files: 29
- Import bucket: Subsystem review
- Risk: Medium/High
- Change note: Touches encoder/video, linux/capture, web-ui; primary path buckets: .github, cmake, docs, packaging, scripts. Subject indicates: feat(linux): Add Vulkan video encoder (#4603).
- Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.
- Top files:
- .github/workflows/ci-freebsd.yml
- cmake/compile_definitions/linux.cmake
- cmake/prep/options.cmake
- cmake/scripts/binary_to_c.cmake
- docs/configuration.md
- packaging/linux/Arch/PKGBUILD
- packaging/linux/copr/Sunshine.spec
- packaging/sunshine.rb
- scripts/linux_build.sh
- src/config.cpp
- src/config.h
- src/platform/common.h
- ... 17 more file(s)

## 273. ce5b39bc - build(deps): bump third-party/moonlight-common-c from `7022b33` to `7b026e7` (#4930)

- Date: 2026-03-31
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/moonlight-common-c from `7022b33` to `7b026e7` (#4930).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/moonlight-common-c

## 274. b172a980 - build(deps): bump third-party/nvapi from `9296d67` to `9b181ea` (#4917)

- Date: 2026-03-31
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/nvapi from `9296d67` to `9b181ea` (#4917).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/nvapi

## 275. 5fba591e - chore: update global workflows (#4936)

- Date: 2026-04-02
- Author: LizardByte-bot
- Tags: ci
- Change size: 1 file changed, 9 insertions(+), 6 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github. Subject indicates: chore: update global workflows (#4936).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/dependabot.yml

## 276. ba4db46a - build(deps): bump vue from 3.5.31 to 3.5.32 (#4941)

- Date: 2026-04-03
- Author: dependabot[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump vue from 3.5.31 to 3.5.32 (#4941).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 277. 1e8afb0d - build(deps): bump marked from 17.0.5 to 18.0.0 (#4957)

- Date: 2026-04-07
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump marked from 17.0.5 to 18.0.0 (#4957).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 278. 4c202fea - build(deps): bump vue-i18n from 11.3.0 to 11.3.1 (#4953)

- Date: 2026-04-07
- Author: dependabot[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump vue-i18n from 11.3.0 to 11.3.1 (#4953).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 279. e61d9ba4 - build(deps): bump packaging/linux/flatpak/deps/shared-modules from `2f1fb18` to `6ea20c8` (#4949)

- Date: 2026-04-07
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/shared-modules from `2f1fb18` to `6ea20c8` (#4949).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/shared-modules

## 280. 31b85802 - fix: redact logging of sensitive config & CSRF validation (#4955)

- Date: 2026-04-08
- Author: Conn O'Griofa
- Tags: security/session
- Change size: 3 files changed, 33 insertions(+), 12 deletions(-)
- Changed files: 3
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches security/session; primary path buckets: src. Subject indicates: fix: redact logging of sensitive config & CSRF validation (#4955).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/config.cpp
- src/config.h
- src/main.cpp

## 281. a4c253f3 - fix(linux): correct "Pulseadio" typo in PulseAudio log messages (#4956)

- Date: 2026-04-08
- Author: Taimuraz Kaitmazov
- Tags: linux/capture
- Change size: 1 file changed, 2 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux): correct "Pulseadio" typo in PulseAudio log messages (#4956).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/audio.cpp

## 282. 6c1612de - fix(linux/vulkan): add 16-bit DRM format support for HDR DMA-BUF import (#4962)

- Date: 2026-04-08
- Author: neatnoise
- Tags: linux/capture
- Change size: 1 file changed, 39 insertions(+), 8 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/vulkan): add 16-bit DRM format support for HDR DMA-BUF import (#4962).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/vulkan_encode.cpp

## 283. d3330d1c - fix(linux/xdgportal): Properly support multiple screens by exposing pipewire streams as separate displays (#4931)

- Date: 2026-04-09
- Author: Kishi
- Tags: linux/capture
- Change size: 1 file changed, 275 insertions(+), 209 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/xdgportal): Properly support multiple screens by exposing pipewire streams as separate displays (#4931).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/portalgrab.cpp

## 284. 379242ec - fix(linux/postins): allow running on rpm-ostree environments (#4963)

- Date: 2026-04-11
- Author: Alex Shek
- Tags: linux/capture, web-ui
- Change size: 1 file changed, 20 insertions(+), 27 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, web-ui; primary path buckets: src_assets. Subject indicates: fix(linux/postins): allow running on rpm-ostree environments (#4963).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src_assets/linux/misc/postinst

## 285. c9aa918b - build(deps): bump actions/github-script from 8.0.0 to 9.0.0 (#4970)

- Date: 2026-04-10
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump actions/github-script from 8.0.0 to 9.0.0 (#4970).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/release-notifier-moonlight.yml

## 286. 58d3c377 - build(deps): bump vue-i18n from 11.3.1 to 11.3.2 (#4964)

- Date: 2026-04-10
- Author: dependabot[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: build(deps): bump vue-i18n from 11.3.1 to 11.3.2 (#4964).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 287. 4ea331e5 - fix(linux/xdgportal): Improve multi-monitor support and work around breaking kmsgrab (#4969)

- Date: 2026-04-11
- Author: Kishi
- Tags: linux/capture
- Change size: 1 file changed, 81 insertions(+), 54 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/xdgportal): Improve multi-monitor support and work around breaking kmsgrab (#4969).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/portalgrab.cpp

## 288. ba1f3bba - chore: update global workflows (#4976)

- Date: 2026-04-11
- Author: LizardByte-bot
- Tags: ci
- Change size: 2 files changed, 27 insertions(+), 2 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github. Subject indicates: chore: update global workflows (#4976).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/dependabot.yml
- .github/workflows/_top-issues.yml

## 289. c08f6912 - build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `caca92b` to `9d9ad80` (#4983)

- Date: 2026-04-13
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `caca92b` to `9d9ad80` (#4983).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/flatpak-builder-tools

## 290. c786d73e - build(deps): bump packaging/linux/flatpak/deps/shared-modules from `6ea20c8` to `b8236c7` (#4975)

- Date: 2026-04-13
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/shared-modules from `6ea20c8` to `b8236c7` (#4975).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/shared-modules

## 291. b6a3d6ac - build(deps): bump peter-evans/create-pull-request from 8.1.0 to 8.1.1 (#4974)

- Date: 2026-04-13
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump peter-evans/create-pull-request from 8.1.0 to 8.1.1 (#4974).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/localize.yml

## 292. 94137da8 - build(deps): bump actions/upload-artifact from 7.0.0 to 7.0.1 (#4973)

- Date: 2026-04-13
- Author: dependabot[bot]
- Tags: build/deps, ci
- Change size: 8 files changed, 16 insertions(+), 16 deletions(-)
- Changed files: 8
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(deps): bump actions/upload-artifact from 7.0.0 to 7.0.1 (#4973).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-archlinux.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-freebsd.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci-macos.yml
- .github/workflows/ci-windows.yml
- .github/workflows/update-pages.yml

## 293. 5a417079 - fix(linux/xdgportal): Additional error handling and minor code improvements (#4979)

- Date: 2026-04-13
- Author: Kishi
- Tags: linux/capture
- Change size: 1 file changed, 13 insertions(+), 5 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/xdgportal): Additional error handling and minor code improvements (#4979).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/portalgrab.cpp

## 294. 43f973db - feat(linux/vulkan): enable RADV low-latency Vulkan Video encoding (#4984)

- Date: 2026-04-13
- Author: neatnoise
- Tags: linux/capture
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: feat(linux/vulkan): enable RADV low-latency Vulkan Video encoding (#4984).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/misc.cpp

## 295. 5364b008 - build(deps-dev): bump vite from 6.4.1 to 6.4.2 (#4985)

- Date: 2026-04-13
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: package.json. Subject indicates: build(deps-dev): bump vite from 6.4.1 to 6.4.2 (#4985).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 296. 75a3bedf - revert: "feat(linux/vulkan): enable RADV low-latency Vulkan Video encoding" (#4989)

- Date: 2026-04-14
- Author: neatnoise
- Tags: linux/capture
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: revert: "feat(linux/vulkan): enable RADV low-latency Vulkan Video encoding" (#4989).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/misc.cpp

## 297. a16c070a - chore: update global workflows (#4990)

- Date: 2026-04-14
- Author: LizardByte-bot
- Tags: ci
- Change size: 2 files changed, 9 insertions(+), 96 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github, renovate.json. Subject indicates: chore: update global workflows (#4990).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/dependabot.yml
- renovate.json

## 298. 225c3e9e - fix(linux/vulkan): encoder not working on NVIDIA GPUs (#4994)

- Date: 2026-04-15
- Author: Vincenzo Mitchell Barroso
- Tags: encoder/video, linux/capture
- Change size: 1 file changed, 2 insertions(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches encoder/video, linux/capture; primary path buckets: src. Subject indicates: fix(linux/vulkan): encoder not working on NVIDIA GPUs (#4994).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/platform/linux/vulkan_encode.cpp

## 299. f74b877f - chore(deps): update dependency @vitejs/plugin-vue to v6.0.6 (#4992)

- Date: 2026-04-15
- Author: renovate[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: chore(deps): update dependency @vitejs/plugin-vue to v6.0.6 (#4992).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 300. 35273203 - chore(deps): update actions/cache action to v5.0.5 (#4991)

- Date: 2026-04-15
- Author: renovate[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: chore(deps): update actions/cache action to v5.0.5 (#4991).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-flatpak.yml

## 301. a40f27f3 - fix(linux/vulkan): guard deprecated FFmpeg Vulkan queue lock/unlock (#5005)

- Date: 2026-04-17
- Author: neatnoise
- Tags: linux/capture, build/deps
- Change size: 2 files changed, 6 insertions(+), 1 deletion(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps; primary path buckets: cmake, src. Subject indicates: fix(linux/vulkan): guard deprecated FFmpeg Vulkan queue lock/unlock (#5005).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- cmake/compile_definitions/linux.cmake
- src/platform/linux/vulkan_encode.cpp

## 302. 5053c1d2 - chore(deps): update dependency setuptools to v81 (#5003)

- Date: 2026-04-16
- Author: renovate[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: pyproject.toml. Subject indicates: chore(deps): update dependency setuptools to v81 (#5003).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- pyproject.toml

## 303. cd7c036d - chore(deps): update lizardbyte/actions action to v2026.417.35446 (#5012)

- Date: 2026-04-17
- Author: renovate[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 8 insertions(+), 8 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: chore(deps): update lizardbyte/actions action to v2026.417.35446 (#5012).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 304. 409e3528 - chore(deps): update dependency marked to v18.0.1 (#5011)

- Date: 2026-04-17
- Author: renovate[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: package.json. Subject indicates: chore(deps): update dependency marked to v18.0.1 (#5011).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 305. 38146cf0 - chore(deps): update vmactions/freebsd-vm action to v1.4.5 (#5001)

- Date: 2026-04-17
- Author: renovate[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: chore(deps): update vmactions/freebsd-vm action to v1.4.5 (#5001).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-freebsd.yml

## 306. 42d20400 - build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `9d9ad80` to `34ecf07` (#5015)

- Date: 2026-04-17
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `9d9ad80` to `34ecf07` (#5015).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/flatpak-builder-tools

## 307. bfc6c7f5 - chore(deps): update msys2/setup-msys2 action to v2.31.1 (#5016)

- Date: 2026-04-17
- Author: renovate[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: chore(deps): update msys2/setup-msys2 action to v2.31.1 (#5016).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-windows.yml

## 308. b3194859 - chore(deps): update dependency @codecov/vite-plugin to v2 (#4996)

- Date: 2026-04-17
- Author: renovate[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: package.json. Subject indicates: chore(deps): update dependency @codecov/vite-plugin to v2 (#4996).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 309. 32100783 - fix(linux): auto-detect GPU with connected display for VAAPI and Vulkan (#4961)

- Date: 2026-04-17
- Author: neatnoise
- Tags: encoder/video, macos, linux/capture
- Change size: 7 files changed, 89 insertions(+), 11 deletions(-)
- Changed files: 7
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches encoder/video, macos, linux/capture; primary path buckets: src. Subject indicates: fix(linux): auto-detect GPU with connected display for VAAPI and Vulkan (#4961).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/platform/common.h
- src/platform/linux/misc.cpp
- src/platform/linux/vaapi.cpp
- src/platform/linux/vulkan_encode.cpp
- src/platform/macos/misc.mm
- src/platform/windows/misc.cpp
- src/video.cpp

## 310. 5ffa66ee - refactor(linux/xdgportal): Split pipewire code into it's own file so it can be reused (#5008)

- Date: 2026-04-17
- Author: Kishi
- Tags: linux/capture, build/deps
- Change size: 3 files changed, 1061 insertions(+), 876 deletions(-)
- Changed files: 3
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps; primary path buckets: cmake, src. Subject indicates: refactor(linux/xdgportal): Split pipewire code into it's own file so it can be reused (#5008).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- cmake/compile_definitions/linux.cmake
- src/platform/linux/pipewire.cpp
- src/platform/linux/portalgrab.cpp

## 311. 7228c255 - fix(rtsp): ignore clientRefreshRateX100 if more than 1% variance from framerate (#5027)

- Date: 2026-04-18
- Author: David Lane
- Tags: rtsp/network
- Change size: 1 file changed, 10 insertions(+)
- Changed files: 1
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches rtsp/network; primary path buckets: src. Subject indicates: fix(rtsp): ignore clientRefreshRateX100 if more than 1% variance from framerate (#5027).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/rtsp.cpp

## 312. 44bf39be - fix: Resolve minimum_fps_target related issues on all platforms (#4967)

- Date: 2026-04-19
- Author: Conn O'Griofa
- Tags: encoder/video, linux/capture
- Change size: 4 files changed, 9 insertions(+), 22 deletions(-)
- Changed files: 4
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches encoder/video, linux/capture; primary path buckets: src. Subject indicates: fix: Resolve minimum_fps_target related issues on all platforms (#4967).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/platform/common.h
- src/platform/linux/pipewire.cpp
- src/thread_safe.h
- src/video.cpp

## 313. e180053e - fix(linux/vulkan): remove deprecated FFmpeg Vulkan queue lock/unlock (#5031)

- Date: 2026-04-19
- Author: neatnoise
- Tags: linux/capture, build/deps
- Change size: 2 files changed, 16 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps; primary path buckets: cmake, src. Subject indicates: fix(linux/vulkan): remove deprecated FFmpeg Vulkan queue lock/unlock (#5031).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- cmake/compile_definitions/linux.cmake
- src/platform/linux/vulkan_encode.cpp

## 314. a5af7907 - feat(nvenc): support for split frame encoding on GPUs with 2+ nvenc blocks (#4892)

- Date: 2026-04-19
- Author: Andy Grundman
- Tags: encoder/video, linux/capture, web-ui, build/deps, docs, l10n
- Change size: 15 files changed, 136 insertions(+), 59 deletions(-)
- Changed files: 15
- Import bucket: Subsystem review
- Risk: Medium/High
- Change note: Touches encoder/video, linux/capture, web-ui; primary path buckets: .gitmodules, docs, packaging, src, src_assets. Subject indicates: feat(nvenc): support for split frame encoding on GPUs with 2+ nvenc blocks (#4892).
- Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.
- Top files:
- .gitmodules
- docs/configuration.md
- packaging/linux/flatpak/modules/ffmpeg.json
- src/config.cpp
- src/nvenc/nvenc_base.cpp
- src/nvenc/nvenc_base.h
- src/nvenc/nvenc_config.h
- src/nvenc/nvenc_d3d11.cpp
- src/nvenc/nvenc_d3d11_native.cpp
- src/nvenc/nvenc_d3d11_on_cuda.cpp
- src_assets/common/assets/web/config.html
- src_assets/common/assets/web/configs/tabs/encoders/NvidiaNvencEncoder.vue
- ... 3 more file(s)

## 315. e39dfb80 - refactor(linux/xdgportal): Move elevated privilege check/drop to misc.cpp (#5026)

- Date: 2026-04-20
- Author: Kishi
- Tags: linux/capture
- Change size: 3 files changed, 80 insertions(+), 66 deletions(-)
- Changed files: 3
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: refactor(linux/xdgportal): Move elevated privilege check/drop to misc.cpp (#5026).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/common.h
- src/platform/linux/misc.cpp
- src/platform/linux/portalgrab.cpp

## 316. eb45ea78 - fix(linux/vulkan): change default rate control from VBR to CBR (#5032)

- Date: 2026-04-20
- Author: neatnoise
- Tags: linux/capture, web-ui, docs, l10n
- Change size: 4 files changed, 6 insertions(+), 6 deletions(-)
- Changed files: 4
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, web-ui, docs; primary path buckets: docs, src, src_assets. Subject indicates: fix(linux/vulkan): change default rate control from VBR to CBR (#5032).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- docs/configuration.md
- src/config.cpp
- src_assets/common/assets/web/config.html
- src_assets/common/assets/web/public/assets/locale/en.json

## 317. 300e48f4 - chore(deps): update actions/setup-node action to v6.4.0 (#5033)

- Date: 2026-04-20
- Author: renovate[bot]
- Tags: build/deps, ci
- Change size: 3 files changed, 3 insertions(+), 3 deletions(-)
- Changed files: 3
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: chore(deps): update actions/setup-node action to v6.4.0 (#5033).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-bundle.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-windows.yml

## 318. e75e633e - chore(deps): update dependency marked to v18.0.2 (#5022)

- Date: 2026-04-20
- Author: renovate[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: package.json. Subject indicates: chore(deps): update dependency marked to v18.0.2 (#5022).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 319. baa1a919 - build(deps): bump third-party/nv-codec-headers from `e844e5b` to `33a9ede` (#5035)

- Date: 2026-04-20
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/nv-codec-headers from `e844e5b` to `33a9ede` (#5035).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/nv-codec-headers

## 320. d14ccf25 - fix(linux): multi-GPU segfault + wlr GPU auto selection, DMA-BUF metadata planes and revert wlr vulkan support (#5030)

- Date: 2026-04-21
- Author: neatnoise
- Tags: linux/capture
- Change size: 4 files changed, 50 insertions(+), 37 deletions(-)
- Changed files: 4
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux): multi-GPU segfault + wlr GPU auto selection, DMA-BUF metadata planes and revert wlr vulkan support (#5030).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/vulkan_encode.cpp
- src/platform/linux/wayland.cpp
- src/platform/linux/wayland.h
- src/platform/linux/wlgrab.cpp

## 321. f4ebfbb9 - chore(deps): update apple-actions/import-codesign-certs action to v7 (#5037)

- Date: 2026-04-21
- Author: renovate[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 2 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: chore(deps): update apple-actions/import-codesign-certs action to v7 (#5037).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-macos.yml

## 322. 293c1ed3 - fix: touch scaling bug and initialize display variables as 0 (#4758)

- Date: 2026-04-22
- Author: David Lane
- Tags: encoder/video
- Change size: 3 files changed, 16 insertions(+), 17 deletions(-)
- Changed files: 3
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches encoder/video; primary path buckets: src. Subject indicates: fix: touch scaling bug and initialize display variables as 0 (#4758).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/platform/common.h
- src/platform/windows/input.cpp
- src/video.cpp

## 323. dca3e8ba - fix(network): restore ExternalIP in server info response (#5043)

- Date: 2026-04-22
- Author: neatnoise
- Tags: rtsp/network
- Change size: 1 file changed, 4 insertions(+)
- Changed files: 1
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches rtsp/network; primary path buckets: src. Subject indicates: fix(network): restore ExternalIP in server info response (#5043).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/nvhttp.cpp

## 324. 47d4be79 - chore(deps): update dependency vue to v3.5.33 (#5042)

- Date: 2026-04-22
- Author: renovate[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: chore(deps): update dependency vue to v3.5.33 (#5042).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 325. 1ba440e8 - fix(linux/pipewire): Fix absolute touchinput for multi-monitor (#5041)

- Date: 2026-04-22
- Author: Kishi
- Tags: linux/capture
- Change size: 2 files changed, 65 insertions(+), 23 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/pipewire): Fix absolute touchinput for multi-monitor (#5041).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/pipewire.cpp
- src/platform/linux/portalgrab.cpp

## 326. c4b30655 - refactor(linux): remove leftovers from portalgrab -> pipewire split (#5039)

- Date: 2026-04-23
- Author: Conn O'Griofa
- Tags: linux/capture
- Change size: 2 files changed, 2 insertions(+), 97 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: refactor(linux): remove leftovers from portalgrab -> pipewire split (#5039).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/pipewire.cpp
- src/platform/linux/portalgrab.cpp

## 327. 5cf5e8c1 - docs(readme): restructure feature compatibility tables (#5040)

- Date: 2026-04-23
- Author: neatnoise
- Tags: docs
- Change size: 1 file changed, 159 insertions(+), 25 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches docs; primary path buckets: README.md. Subject indicates: docs(readme): restructure feature compatibility tables (#5040).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- README.md

## 328. 7a4c940e - fix(linux/pipewire): calculate env_width/env_height from all displays for pipewire_display_t  (#5050)

- Date: 2026-04-26
- Author: Kishi
- Tags: linux/capture
- Change size: 1 file changed, 23 insertions(+), 16 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/pipewire): calculate env_width/env_height from all displays for pipewire_display_t  (#5050).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/pipewire.cpp

## 329. 4164cd01 - build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `34ecf07` to `e39e586` (#5052)

- Date: 2026-04-26
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `34ecf07` to `e39e586` (#5052).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/flatpak-builder-tools

## 330. a458b204 - chore(deps): update dependency vue-i18n to v11.4.0 (#5048)

- Date: 2026-04-26
- Author: renovate[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: chore(deps): update dependency vue-i18n to v11.4.0 (#5048).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 331. 2f00cb30 - feat(linux/xdgportal): Simplify display matching logic (#5053)

- Date: 2026-04-27
- Author: Kishi
- Tags: linux/capture
- Change size: 1 file changed, 7 insertions(+), 35 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: feat(linux/xdgportal): Simplify display matching logic (#5053).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/portalgrab.cpp

## 332. 1fc88f8b - build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `e39e586` to `50a0768` (#5055)

- Date: 2026-04-27
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `e39e586` to `50a0768` (#5055).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/flatpak-builder-tools

## 333. 747e2135 - feat(linux/pipewire): Add support for pipewire stream selection by object serial (#5054)

- Date: 2026-04-27
- Author: Kishi
- Tags: linux/capture
- Change size: 2 files changed, 22 insertions(+), 10 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: feat(linux/pipewire): Add support for pipewire stream selection by object serial (#5054).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/pipewire.cpp
- src/platform/linux/portalgrab.cpp

## 334. bdef150c - build(deps): bump third-party/build-deps from `c08f69d` to `cd7d45a` (#5056)

- Date: 2026-04-28
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 2 files changed, 5 insertions(+), 5 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging, third-party. Subject indicates: build(deps): bump third-party/build-deps from `c08f69d` to `cd7d45a` (#5056).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/modules/ffmpeg.json
- third-party/build-deps

## 335. a90d3068 - feat(capture/linux): add KWin direct screencast capture method (#5009)

- Date: 2026-05-05
- Author: Kishi
- Tags: linux/capture, web-ui, build/deps, ci, docs
- Change size: 17 files changed, 813 insertions(+), 18 deletions(-)
- Changed files: 17
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, web-ui, build/deps; primary path buckets: .github, .gitmodules, README.md, cmake, docs. Subject indicates: feat(capture/linux): add KWin direct screencast capture method (#5009).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- .github/workflows/ci-freebsd.yml
- .gitmodules
- README.md
- cmake/compile_definitions/linux.cmake
- cmake/packaging/linux.cmake
- cmake/prep/options.cmake
- cmake/prep/special_package_configuration.cmake
- cmake/targets/common.cmake
- docs/configuration.md
- packaging/linux/copr/Sunshine.spec
- packaging/linux/dev.lizardbyte.app.Sunshine.kwin.desktop.in
- packaging/linux/flatpak/dev.lizardbyte.app.Sunshine.yml
- ... 5 more file(s)

## 336. 017ce496 - feat(linux/pipewire): Handle HDR(Rec. 2020/SMPTE 2084 PQ) visuals (#5025)

- Date: 2026-05-05
- Author: garnacho
- Tags: linux/capture
- Change size: 1 file changed, 77 insertions(+), 20 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: feat(linux/pipewire): Handle HDR(Rec. 2020/SMPTE 2084 PQ) visuals (#5025).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/pipewire.cpp

## 337. 36095cd5 - build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `50a0768` to `1895ec8` (#5073)

- Date: 2026-05-05
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `50a0768` to `1895ec8` (#5073).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/flatpak-builder-tools

## 338. 4329e0ca - build(deps): bump packaging/linux/flatpak/deps/shared-modules from `b8236c7` to `2dfad85` (#5070)

- Date: 2026-05-05
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/shared-modules from `b8236c7` to `2dfad85` (#5070).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/shared-modules

## 339. 5479a1a2 - build(deps): bump third-party/wlr-protocols from `a741f0a` to `bf4fc79` (#5072)

- Date: 2026-05-05
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/wlr-protocols from `a741f0a` to `bf4fc79` (#5072).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/wlr-protocols

## 340. 3cb82779 - chore(deps): update dependency marked to v18.0.3 (#5068)

- Date: 2026-05-05
- Author: renovate[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: package.json. Subject indicates: chore(deps): update dependency marked to v18.0.3 (#5068).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 341. dd30d055 - feat(input): implement multiseat support and virtual device naming (#4954)

- Date: 2026-05-05
- Author: Willian Barreto
- Tags: linux/capture, web-ui, docs
- Change size: 6 files changed, 97 insertions(+), 12 deletions(-)
- Changed files: 6
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, web-ui, docs; primary path buckets: docs, src, src_assets. Subject indicates: feat(input): implement multiseat support and virtual device naming (#4954).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- docs/troubleshooting.md
- src/platform/linux/input/inputtino_common.h
- src/platform/linux/input/inputtino_gamepad.cpp
- src/platform/linux/input/inputtino_seat.cpp
- src/platform/linux/input/inputtino_seat.h
- src_assets/linux/misc/60-sunshine.rules

## 342. ecba5c3c - fix(linux): security: drop CAP_SYS_ADMIN when possible, retain CAP_SYS_NICE (#5075)

- Date: 2026-05-06
- Author: Conn O'Griofa
- Tags: security/session, linux/capture
- Change size: 4 files changed, 37 insertions(+), 28 deletions(-)
- Changed files: 4
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches security/session, linux/capture; primary path buckets: src. Subject indicates: fix(linux): security: drop CAP_SYS_ADMIN when possible, retain CAP_SYS_NICE (#5075).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/platform/common.h
- src/platform/linux/kwingrab.cpp
- src/platform/linux/misc.cpp
- src/platform/linux/portalgrab.cpp

## 343. a241c78c - feat(linux/wlgrab): match output_name by xdg_output name (#5071)

- Date: 2026-05-06
- Author: netanelbi
- Tags: linux/capture
- Change size: 1 file changed, 24 insertions(+), 9 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: feat(linux/wlgrab): match output_name by xdg_output name (#5071).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/wlgrab.cpp

## 344. 68dfcce1 - build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `1895ec8` to `dda10aa` (#5077)

- Date: 2026-05-06
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `1895ec8` to `dda10aa` (#5077).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/flatpak-builder-tools

## 345. 8362d580 - chore(deps): update dependency vue to v3.5.34 (#5078)

- Date: 2026-05-06
- Author: renovate[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: chore(deps): update dependency vue to v3.5.34 (#5078).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 346. 0899b341 - build(linux): add ubuntu 26.04 support (#5051)

- Date: 2026-05-06
- Author: David Lane
- Tags: linux/capture, build/deps, docs
- Change size: 4 files changed, 301 insertions(+), 63 deletions(-)
- Changed files: 4
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps, docs; primary path buckets: docker, docs, scripts. Subject indicates: build(linux): add ubuntu 26.04 support (#5051).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- docker/ubuntu-26.04.dockerfile
- docs/building.md
- docs/getting_started.md
- scripts/linux_build.sh

## 347. ecdb0346 - build(linux): fix gcov detection for ArchLinux (#5081)

- Date: 2026-05-07
- Author: David Lane
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 19 insertions(+), 5 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(linux): fix gcov detection for ArchLinux (#5081).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/Arch/PKGBUILD

## 348. bfae5de9 - chore(deps): update dependency vue-i18n to v11.4.2 (#5080)

- Date: 2026-05-07
- Author: renovate[bot]
- Tags: web-ui, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package.json. Subject indicates: chore(deps): update dependency vue-i18n to v11.4.2 (#5080).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package.json

## 349. 888a6bb0 - Merge commit from fork

- Date: 2026-05-07
- Author: David Lane
- Tags: misc
- Change size: 1 file changed, 2 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches misc; primary path buckets: src. Subject indicates: Merge commit from fork.
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/crypto.cpp

## 350. c6988fd7 - build(web-ui): commit lock file (#5083)

- Date: 2026-05-08
- Author: David Lane
- Tags: web-ui, build/deps, ci
- Change size: 5 files changed, 3039 insertions(+), 16 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps, ci; primary path buckets: .github, .gitignore, cmake, package-lock.json. Subject indicates: build(web-ui): commit lock file (#5083).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-bundle.yml
- .github/workflows/ci-flatpak.yml
- .gitignore
- cmake/targets/common.cmake
- package-lock.json

## 351. 3d849168 - fix: show actual bind address in Web UI log message (#4897)

- Date: 2026-05-08
- Author: aliefe04
- Tags: web-ui
- Change size: 1 file changed, 6 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui; primary path buckets: src. Subject indicates: fix: show actual bind address in Web UI log message (#4897).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src/confighttp.cpp

## 352. 810783dc - build(windows): Always setup Node.js in Windows CI (#5084)

- Date: 2026-05-08
- Author: David Lane
- Tags: build/deps, ci
- Change size: 1 file changed, 2 insertions(+), 8 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: build(windows): Always setup Node.js in Windows CI (#5084).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-windows.yml

## 353. 0db9f73e - feat(nvenc): support intraRefresh for h264, add outputRecoveryPointSEI=1 to intra-refresh config for h264 and hevc (#5091)

- Date: 2026-05-09
- Author: Andy Grundman
- Tags: encoder/video
- Change size: 1 file changed, 16 insertions(+)
- Changed files: 1
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches encoder/video; primary path buckets: src. Subject indicates: feat(nvenc): support intraRefresh for h264, add outputRecoveryPointSEI=1 to intra-refresh config for h264 and hevc (#5091).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/nvenc/nvenc_base.cpp

## 354. 676d331b - fix: building without the system tray enabled (#5092)

- Date: 2026-05-11
- Author: James Le Cuirot
- Tags: build/deps
- Change size: 1 file changed, 8 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: src. Subject indicates: fix: building without the system tray enabled (#5092).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src/main.cpp

## 355. 16706721 - build(deps): bump third-party/build-deps from `cd7d45a` to `d8b1d18` (#5097)

- Date: 2026-05-11
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 2 files changed, 5 insertions(+), 5 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging, third-party. Subject indicates: build(deps): bump third-party/build-deps from `cd7d45a` to `d8b1d18` (#5097).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/modules/ffmpeg.json
- third-party/build-deps

## 356. bcdbe494 - build(deps): bump packaging/linux/flatpak/deps/shared-modules from `2dfad85` to `8c3f3cf` (#5098)

- Date: 2026-05-11
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/shared-modules from `2dfad85` to `8c3f3cf` (#5098).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/shared-modules

## 357. dfffc8a8 - ci: remove moonlight discord release announcement (#5099)

- Date: 2026-05-11
- Author: David Lane
- Tags: ci
- Change size: 1 file changed, 39 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github. Subject indicates: ci: remove moonlight discord release announcement (#5099).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/release-notifier-moonlight.yml

## 358. 07099901 - build(deps): Add SUNSHINE_SYSTEM_VULKAN_HEADERS option (#5103)

- Date: 2026-05-13
- Author: James Le Cuirot
- Tags: linux/capture, build/deps
- Change size: 2 files changed, 9 insertions(+), 2 deletions(-)
- Changed files: 2
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps; primary path buckets: cmake. Subject indicates: build(deps): Add SUNSHINE_SYSTEM_VULKAN_HEADERS option (#5103).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- cmake/compile_definitions/linux.cmake
- cmake/prep/options.cmake

## 359. f9d1aca7 - build(macos): configure C++ standard and ICU root (#5101)

- Date: 2026-05-13
- Author: martona
- Tags: macos, build/deps, ci
- Change size: 7 files changed, 23 insertions(+), 13 deletions(-)
- Changed files: 7
- Import bucket: Subsystem review
- Risk: Medium/High
- Change note: Touches macos, build/deps, ci; primary path buckets: .github, CMakeLists.txt, cmake, packaging, scripts. Subject indicates: build(macos): configure C++ standard and ICU root (#5101).
- Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.
- Top files:
- .github/workflows/ci-macos.yml
- CMakeLists.txt
- cmake/targets/common.cmake
- packaging/sunshine.rb
- scripts/macos_build.sh
- tests/CMakeLists.txt
- tools/CMakeLists.txt

## 360. 44cca9a5 - fix(macos): preserve modifier state in input events (#5102)

- Date: 2026-05-13
- Author: martona
- Tags: macos
- Change size: 1 file changed, 17 insertions(+), 6 deletions(-)
- Changed files: 1
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches macos; primary path buckets: src. Subject indicates: fix(macos): preserve modifier state in input events (#5102).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/platform/macos/input.cpp

## 361. 71323d38 - build(windows): drop unused boost-locale (#5116)

- Date: 2026-05-14
- Author: David Lane
- Tags: build/deps
- Change size: 1 file changed, 4 insertions(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: cmake. Subject indicates: build(windows): drop unused boost-locale (#5116).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- cmake/dependencies/Boost_Sunshine.cmake

## 362. 71e4da40 - ci(windows): add linkage check (#5118)

- Date: 2026-05-14
- Author: David Lane
- Tags: ci
- Change size: 1 file changed, 44 insertions(+)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github. Subject indicates: ci(windows): add linkage check (#5118).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-windows.yml

## 363. 91615e3f - chore(deps): update azure/trusted-signing-action action to v2 (#5117)

- Date: 2026-05-14
- Author: renovate[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 2 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: chore(deps): update azure/trusted-signing-action action to v2 (#5117).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-windows.yml

## 364. 33bdb011 - fix(macos): provide left/right identity for modifiers (#5115)

- Date: 2026-05-14
- Author: martona
- Tags: macos
- Change size: 1 file changed, 53 insertions(+), 27 deletions(-)
- Changed files: 1
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches macos; primary path buckets: src. Subject indicates: fix(macos): provide left/right identity for modifiers (#5115).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/platform/macos/input.cpp

## 365. 0523cebd - feat(web-ui): add logout (#5121)

- Date: 2026-05-14
- Author: David Lane
- Tags: web-ui, l10n
- Change size: 6 files changed, 111 insertions(+), 10 deletions(-)
- Changed files: 6
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src, src_assets, vite.config.js. Subject indicates: feat(web-ui): add logout (#5121).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src/confighttp.cpp
- src_assets/common/assets/web/Navbar.vue
- src_assets/common/assets/web/logout.html
- src_assets/common/assets/web/public/assets/css/sunshine.css
- src_assets/common/assets/web/public/assets/locale/en.json
- vite.config.js

## 366. 390b3945 - build(deps): bump third-party/moonlight-common-c from `7b026e7` to `2600bea` (#5123)

- Date: 2026-05-15
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/moonlight-common-c from `7b026e7` to `2600bea` (#5123).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/moonlight-common-c

## 367. 9362925b - chore(deps): update dependency @vitejs/plugin-vue to v6.0.7 (#5122)

- Date: 2026-05-15
- Author: renovate[bot]
- Tags: web-ui, build/deps
- Change size: 2 files changed, 9 insertions(+), 9 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package-lock.json, package.json. Subject indicates: chore(deps): update dependency @vitejs/plugin-vue to v6.0.7 (#5122).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package-lock.json
- package.json

## 368. a0f45056 - build(deps): bump third-party/plasma-wayland-protocols from `18afc45` to `4c015e9` (#5124)

- Date: 2026-05-15
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/plasma-wayland-protocols from `18afc45` to `4c015e9` (#5124).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- third-party/plasma-wayland-protocols

## 369. 0e66dd81 - fix(linux/pipewire): Add 10-bit RGB formats with 2-bit Alpha to format_map (#5088)

- Date: 2026-05-15
- Author: Ethan Lee
- Tags: linux/capture
- Change size: 1 file changed, 5 insertions(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/pipewire): Add 10-bit RGB formats with 2-bit Alpha to format_map (#5088).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/pipewire.cpp

## 370. e72e6845 - chore: update global workflows (#5126)

- Date: 2026-05-15
- Author: LizardByte-bot
- Tags: misc
- Change size: 1 file changed, 2 insertions(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches misc; primary path buckets: renovate.json. Subject indicates: chore: update global workflows (#5126).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- renovate.json

## 371. 2cd7ba35 - fix(audio): fix install of Steam Streaming Speakers driver (#5125)

- Date: 2026-05-15
- Author: Andy Grundman
- Tags: misc
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches misc; primary path buckets: src. Subject indicates: fix(audio): fix install of Steam Streaming Speakers driver (#5125).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/windows/audio.cpp

## 372. 62579a91 - build(deps): bump third-party/doxyconfig from `334ad6a` to `e552f7c` (#5127)

- Date: 2026-05-15
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/doxyconfig from `334ad6a` to `e552f7c` (#5127).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/doxyconfig

## 373. 14ffa6fd - build: bump freebsd version to 14.4 and build-deps to v2026.516.30821 (#5129)

- Date: 2026-05-16
- Author: David Lane
- Tags: linux/capture, build/deps, ci, docs
- Change size: 7 files changed, 21 insertions(+), 21 deletions(-)
- Changed files: 7
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps, ci; primary path buckets: .github, README.md, docs, packaging, third-party. Subject indicates: build: bump freebsd version to 14.4 and build-deps to v2026.516.30821 (#5129).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- .github/ISSUE_TEMPLATE/bug-report.yml
- .github/workflows/ci-freebsd.yml
- .github/workflows/ci.yml
- README.md
- docs/getting_started.md
- packaging/linux/flatpak/modules/ffmpeg.json
- third-party/build-deps

## 374. 15eabb29 - build(deps): bump third-party/inputtino from `f4ce2b0` to `b887f6a` (#5135)

- Date: 2026-05-17
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/inputtino from `f4ce2b0` to `b887f6a` (#5135).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/inputtino

## 375. be18f2f3 - fix(macos): scale remote scroll input using macOS scroll speed (#5133)

- Date: 2026-05-17
- Author: martona
- Tags: macos
- Change size: 1 file changed, 64 insertions(+), 10 deletions(-)
- Changed files: 1
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches macos; primary path buckets: src. Subject indicates: fix(macos): scale remote scroll input using macOS scroll speed (#5133).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/platform/macos/input.cpp

## 376. 1a3c6b41 - chore(deps): update dependency vue-i18n to v11.4.3 (#5139)

- Date: 2026-05-17
- Author: renovate[bot]
- Tags: web-ui, build/deps
- Change size: 2 files changed, 31 insertions(+), 31 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package-lock.json, package.json. Subject indicates: chore(deps): update dependency vue-i18n to v11.4.3 (#5139).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package-lock.json
- package.json

## 377. 82a68ebc - chore: fixes for release automation (#5142)

- Date: 2026-05-17
- Author: David Lane
- Tags: linux/capture, build/deps, ci, docs
- Change size: 3 files changed, 25 insertions(+), 23 deletions(-)
- Changed files: 3
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps, ci; primary path buckets: .github, docs, packaging. Subject indicates: chore: fixes for release automation (#5142).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- .github/workflows/ci-homebrew.yml
- docs/maintainers/release.md
- packaging/linux/dev.lizardbyte.app.Sunshine.metainfo.xml

## 378. 9b680ab7 - chore(deps): update dependency vue-i18n to v11.4.4 (#5143)

- Date: 2026-05-17
- Author: renovate[bot]
- Tags: web-ui, build/deps
- Change size: 2 files changed, 26 insertions(+), 26 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package-lock.json, package.json. Subject indicates: chore(deps): update dependency vue-i18n to v11.4.4 (#5143).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package-lock.json
- package.json

## 379. aeaec0e4 - chore(deps): update dependency date-fns to v4.2.1 (#5145)

- Date: 2026-05-18
- Author: renovate[bot]
- Tags: build/deps
- Change size: 2 files changed, 5 insertions(+), 5 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: package-lock.json, package.json. Subject indicates: chore(deps): update dependency date-fns to v4.2.1 (#5145).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package-lock.json
- package.json

## 380. 6d7740ce - chore(deps): update codecov/codecov-action action to v6.0.1 (#5149)

- Date: 2026-05-18
- Author: renovate[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 2 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: chore(deps): update codecov/codecov-action action to v6.0.1 (#5149).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci.yml

## 381. 3a196379 - fix(web): disconnect only the disabled client instead of all sessions (#5138)

- Date: 2026-05-19
- Author: neatnoise
- Tags: rtsp/network, web-ui
- Change size: 7 files changed, 46 insertions(+), 1 deletion(-)
- Changed files: 7
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches rtsp/network, web-ui; primary path buckets: src. Subject indicates: fix(web): disconnect only the disabled client instead of all sessions (#5138).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/confighttp.cpp
- src/nvhttp.cpp
- src/nvhttp.h
- src/rtsp.cpp
- src/rtsp.h
- src/stream.cpp
- src/stream.h

## 382. 74686e8b - chore(deps): update dependency marked to v18.0.4 (#5151)

- Date: 2026-05-19
- Author: renovate[bot]
- Tags: build/deps
- Change size: 2 files changed, 5 insertions(+), 5 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: package-lock.json, package.json. Subject indicates: chore(deps): update dependency marked to v18.0.4 (#5151).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package-lock.json
- package.json

## 383. bd9da896 - chore: rename copilot-instructions.md to AGENTS.md (#5156)

- Date: 2026-05-19
- Author: David Lane
- Tags: ci
- Change size: 1 file changed, 0 insertions(+), 0 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: .github, AGENTS.md. Subject indicates: chore: rename copilot-instructions.md to AGENTS.md (#5156).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/copilot-instructions.md
- AGENTS.md

## 384. 2db7176f - fix(Windows-installer): move ViGEmBus to ThirdParty group (#5157)

- Date: 2026-05-19
- Author: David Lane
- Tags: build/deps
- Change size: 2 files changed, 10 insertions(+), 6 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: cmake, src. Subject indicates: fix(Windows-installer): move ViGEmBus to ThirdParty group (#5157).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- cmake/packaging/windows.cmake
- src/confighttp.cpp

## 385. 3a69acef - feat(rtsp): add option to limit packetsize for clients that cannot configure it (#5153)

- Date: 2026-05-21
- Author: Georgi Valkov
- Tags: rtsp/network, web-ui, docs, l10n
- Change size: 7 files changed, 99 insertions(+)
- Changed files: 7
- Import bucket: Subsystem review
- Risk: Medium/High
- Change note: Touches rtsp/network, web-ui, docs; primary path buckets: docs, src, src_assets. Subject indicates: feat(rtsp): add option to limit packetsize for clients that cannot configure it (#5153).
- Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.
- Top files:
- docs/configuration.md
- src/config.cpp
- src/config.h
- src/rtsp.cpp
- src_assets/common/assets/web/config.html
- src_assets/common/assets/web/configs/tabs/Network.vue
- src_assets/common/assets/web/public/assets/locale/en.json

## 386. 3a720151 - feat(web-ui): Added Filtering & Searching to the Apps page (#5158)

- Date: 2026-05-22
- Author: Noklef
- Tags: web-ui, l10n
- Change size: 3 files changed, 124 insertions(+), 7 deletions(-)
- Changed files: 3
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: feat(web-ui): Added Filtering & Searching to the Apps page (#5158).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/apps.html
- src_assets/common/assets/web/public/assets/css/sunshine.css
- src_assets/common/assets/web/public/assets/locale/en.json

## 387. db63290c - build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `dda10aa` to `ee65dc7` (#5155)

- Date: 2026-05-21
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `dda10aa` to `ee65dc7` (#5155).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/flatpak-builder-tools

## 388. 493dcac5 - chore(crowdin): set commit message (#5160)

- Date: 2026-05-21
- Author: David Lane
- Tags: misc
- Change size: 1 file changed, 2 insertions(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches misc; primary path buckets: crowdin.yml. Subject indicates: chore(crowdin): set commit message (#5160).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- crowdin.yml

## 389. ccd09c10 - chore(l10n): update translations (#5161)

- Date: 2026-05-21
- Author: LizardByte-bot
- Tags: web-ui, l10n
- Change size: 21 files changed, 912 insertions(+), 51 deletions(-)
- Changed files: 21
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: chore(l10n): update translations (#5161).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/public/assets/locale/bg.json
- src_assets/common/assets/web/public/assets/locale/cs.json
- src_assets/common/assets/web/public/assets/locale/de.json
- src_assets/common/assets/web/public/assets/locale/en_GB.json
- src_assets/common/assets/web/public/assets/locale/en_US.json
- src_assets/common/assets/web/public/assets/locale/es.json
- src_assets/common/assets/web/public/assets/locale/fr.json
- src_assets/common/assets/web/public/assets/locale/hu.json
- src_assets/common/assets/web/public/assets/locale/it.json
- src_assets/common/assets/web/public/assets/locale/ja.json
- src_assets/common/assets/web/public/assets/locale/ko.json
- src_assets/common/assets/web/public/assets/locale/pl.json
- ... 9 more file(s)

## 390. 3c54d5ff - fix(web): the packetsize upper limit is 65535 (#5167)

- Date: 2026-05-22
- Author: Georgi Valkov
- Tags: rtsp/network, web-ui, l10n
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Subsystem review
- Risk: Medium/High
- Change note: Touches rtsp/network, web-ui, l10n; primary path buckets: src_assets. Subject indicates: fix(web): the packetsize upper limit is 65535 (#5167).
- Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.
- Top files:
- src_assets/common/assets/web/public/assets/locale/en.json

## 391. 7aada121 - chore(l10n): update translations (#5162)

- Date: 2026-05-23
- Author: LizardByte-bot
- Tags: web-ui, l10n
- Change size: 2 files changed, 7 insertions(+), 7 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: chore(l10n): update translations (#5162).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/public/assets/locale/bg.json
- src_assets/common/assets/web/public/assets/locale/en_US.json

## 392. 24f922b9 - chore(deps): update dependency date-fns to v4.3.0 (#5172)

- Date: 2026-05-23
- Author: renovate[bot]
- Tags: build/deps
- Change size: 2 files changed, 5 insertions(+), 5 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: package-lock.json, package.json. Subject indicates: chore(deps): update dependency date-fns to v4.3.0 (#5172).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package-lock.json
- package.json

## 393. ade1fc10 - build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `ee65dc7` to `96e2fe8` (#5165)

- Date: 2026-05-23
- Author: dependabot[bot]
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(deps): bump packaging/linux/flatpak/deps/flatpak-builder-tools from `ee65dc7` to `96e2fe8` (#5165).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/flatpak/deps/flatpak-builder-tools

## 394. 7822c1f3 - chore(deps): update lizardbyte/actions action to v2026.522.121358 (#5173)

- Date: 2026-05-23
- Author: renovate[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 8 insertions(+), 8 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: chore(deps): update lizardbyte/actions action to v2026.522.121358 (#5173).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 395. 68f67180 - fix(web-ui): add documentation link and version-aware URLs (#5176)

- Date: 2026-05-24
- Author: David Lane
- Tags: web-ui, docs, l10n
- Change size: 6 files changed, 51 insertions(+), 9 deletions(-)
- Changed files: 6
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, docs, l10n; primary path buckets: AGENTS.md, docs, src_assets. Subject indicates: fix(web-ui): add documentation link and version-aware URLs (#5176).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- AGENTS.md
- docs/app_examples.md
- src_assets/common/assets/web/ResourceCard.vue
- src_assets/common/assets/web/apps.html
- src_assets/common/assets/web/index.html
- src_assets/common/assets/web/public/assets/locale/en.json

## 396. dab4b415 - chore(deps): update lizardbyte/actions action to v2026.524.145234 (#5177)

- Date: 2026-05-24
- Author: renovate[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 8 insertions(+), 8 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: chore(deps): update lizardbyte/actions action to v2026.524.145234 (#5177).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 397. cda976f1 - chore(deps): migrate from lucide-vue-next to @lucide/vue (#5179)

- Date: 2026-05-24
- Author: David Lane
- Tags: web-ui, build/deps, ci
- Change size: 17 files changed, 27 insertions(+), 27 deletions(-)
- Changed files: 17
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps, ci; primary path buckets: package-lock.json, package.json, src_assets. Subject indicates: chore(deps): migrate from lucide-vue-next to @lucide/vue (#5179).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package-lock.json
- package.json
- src_assets/common/assets/web/Navbar.vue
- src_assets/common/assets/web/Notification.vue
- src_assets/common/assets/web/ResourceCard.vue
- src_assets/common/assets/web/ThemeToggle.vue
- src_assets/common/assets/web/apps.html
- src_assets/common/assets/web/config.html
- src_assets/common/assets/web/configs/tabs/General.vue
- src_assets/common/assets/web/configs/tabs/Network.vue
- src_assets/common/assets/web/configs/tabs/audiovideo/DisplayDeviceOptions.vue
- src_assets/common/assets/web/featured.html
- ... 5 more file(s)

## 398. 2b7a891a - chore(l10n): update translations (#5178)

- Date: 2026-05-24
- Author: LizardByte-bot
- Tags: web-ui, l10n
- Change size: 21 files changed, 21 insertions(+)
- Changed files: 21
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: chore(l10n): update translations (#5178).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/public/assets/locale/bg.json
- src_assets/common/assets/web/public/assets/locale/cs.json
- src_assets/common/assets/web/public/assets/locale/de.json
- src_assets/common/assets/web/public/assets/locale/en_GB.json
- src_assets/common/assets/web/public/assets/locale/en_US.json
- src_assets/common/assets/web/public/assets/locale/es.json
- src_assets/common/assets/web/public/assets/locale/fr.json
- src_assets/common/assets/web/public/assets/locale/hu.json
- src_assets/common/assets/web/public/assets/locale/it.json
- src_assets/common/assets/web/public/assets/locale/ja.json
- src_assets/common/assets/web/public/assets/locale/ko.json
- src_assets/common/assets/web/public/assets/locale/pl.json
- ... 9 more file(s)

## 399. 64f69d05 - chore: Add CLion run configuration for 'sunshine' (#5181)

- Date: 2026-05-24
- Author: David Lane
- Tags: misc
- Change size: 1 file changed, 7 insertions(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches misc; primary path buckets: .run. Subject indicates: chore: Add CLion run configuration for 'sunshine' (#5181).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- .run/sunshine.run.xml

## 400. 0bc26a3f - build(freebsd): fix npm install (#5182)

- Date: 2026-05-24
- Author: David Lane
- Tags: build/deps, ci, docs
- Change size: 2 files changed, 2 insertions(+), 2 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci, docs; primary path buckets: .github, docs. Subject indicates: build(freebsd): fix npm install (#5182).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-freebsd.yml
- docs/building.md

## 401. dbce2291 - fix(linux): migrate to qt tray (#4907)

- Date: 2026-05-24
- Author: David Lane
- Tags: linux/capture, build/deps, ci, docs
- Change size: 22 files changed, 206 insertions(+), 119 deletions(-)
- Changed files: 22
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps, ci; primary path buckets: .github, .gitmodules, cmake, docker, docs. Subject indicates: fix(linux): migrate to qt tray (#4907).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-freebsd.yml
- .gitmodules
- cmake/compile_definitions/common.cmake
- cmake/compile_definitions/linux.cmake
- cmake/compile_definitions/macos.cmake
- cmake/compile_definitions/windows.cmake
- cmake/dependencies/common.cmake
- cmake/packaging/linux.cmake
- cmake/targets/linux.cmake
- docker/clion-toolchain.dockerfile
- docs/building.md
- ... 10 more file(s)

## 402. b91ace72 - fix: explicitly check construct function error in thread_safe.h (#5184)

- Date: 2026-05-25
- Author: Kishi
- Tags: ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches ci; primary path buckets: src. Subject indicates: fix: explicitly check construct function error in thread_safe.h (#5184).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src/thread_safe.h

## 403. d7e88da0 - build(macos): quote SHOULD_SIGN env expansion in install script (#5185)

- Date: 2026-05-25
- Author: Jason Lu
- Tags: macos, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Cherry-pick candidate
- Risk: Medium
- Change note: Touches macos, build/deps; primary path buckets: cmake. Subject indicates: build(macos): quote SHOULD_SIGN env expansion in install script (#5185).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- cmake/packaging/macos.cmake

## 404. 81a84148 - fix(macos/packaging): add NSLocalNetworkUsageDescription so Bonjour can register (#5186)

- Date: 2026-05-25
- Author: Jason Lu
- Tags: rtsp/network, macos, web-ui
- Change size: 1 file changed, 2 insertions(+)
- Changed files: 1
- Import bucket: Subsystem review
- Risk: Medium/High
- Change note: Touches rtsp/network, macos, web-ui; primary path buckets: src_assets. Subject indicates: fix(macos/packaging): add NSLocalNetworkUsageDescription so Bonjour can register (#5186).
- Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.
- Top files:
- src_assets/macos/build/Info.plist.in

## 405. 87182c9e - chore(l10n): update translations (#5193)

- Date: 2026-05-25
- Author: LizardByte-bot
- Tags: web-ui, l10n
- Change size: 1 file changed, 7 insertions(+), 7 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: chore(l10n): update translations (#5193).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/public/assets/locale/bg.json

## 406. 3c7952b2 - fix(linux/vulkan): preserve host aspect ratio in encoder output (#5130)

- Date: 2026-05-27
- Author: Bo He
- Tags: encoder/video, linux/capture, web-ui
- Change size: 2 files changed, 42 insertions(+), 9 deletions(-)
- Changed files: 2
- Import bucket: Subsystem review
- Risk: Medium/High
- Change note: Touches encoder/video, linux/capture, web-ui; primary path buckets: src, src_assets. Subject indicates: fix(linux/vulkan): preserve host aspect ratio in encoder output (#5130).
- Import note: Potentially valuable, but broad enough to require a focused manual diff before importing.
- Top files:
- src/platform/linux/vulkan_encode.cpp
- src_assets/linux/assets/shaders/vulkan/rgb2yuv.comp

## 407. 3ee4144a - fix(macos): drop max_ref_frames=1 for h264_videotoolbox and enable PARALLEL_ENCODING (#5200)

- Date: 2026-05-27
- Author: Jason Lu
- Tags: encoder/video, macos
- Change size: 1 file changed, 6 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Cherry-pick candidate
- Risk: Low/Medium
- Change note: Touches encoder/video, macos; primary path buckets: src. Subject indicates: fix(macos): drop max_ref_frames=1 for h264_videotoolbox and enable PARALLEL_ENCODING (#5200).
- Import note: Review diff directly, then cherry-pick if it does not collide with Apollo session, virtual display, OTP, or branding behavior.
- Top files:
- src/video.cpp

## 408. ebd5d7b6 - chore(deps): update dependency vue to v3.5.35 (#5204)

- Date: 2026-05-27
- Author: renovate[bot]
- Tags: web-ui, build/deps
- Change size: 2 files changed, 60 insertions(+), 60 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps; primary path buckets: package-lock.json, package.json. Subject indicates: chore(deps): update dependency vue to v3.5.35 (#5204).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package-lock.json
- package.json

## 409. 06504eb6 - chore(l10n): update translations (#5196)

- Date: 2026-05-27
- Author: LizardByte-bot
- Tags: web-ui, l10n
- Change size: 2 files changed, 34 insertions(+), 34 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: chore(l10n): update translations (#5196).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/public/assets/locale/bg.json
- src_assets/common/assets/web/public/assets/locale/hu.json

## 410. 22d9aa3b - build(Archlinux): Shallow clone dependent submodules (#5206)

- Date: 2026-05-28
- Author: tomikun
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps; primary path buckets: packaging. Subject indicates: build(Archlinux): Shallow clone dependent submodules (#5206).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- packaging/linux/Arch/PKGBUILD

## 411. 4c825027 - chore(deps): update dependency @lucide/vue to v1.17.0 (#5210)

- Date: 2026-05-28
- Author: renovate[bot]
- Tags: web-ui, build/deps, ci
- Change size: 2 files changed, 5 insertions(+), 5 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, build/deps, ci; primary path buckets: package-lock.json, package.json. Subject indicates: chore(deps): update dependency @lucide/vue to v1.17.0 (#5210).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package-lock.json
- package.json

## 412. ec2b30ef - chore(deps): update actions/setup-dotnet action to v5.3.0 (#5208)

- Date: 2026-05-28
- Author: renovate[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: chore(deps): update actions/setup-dotnet action to v5.3.0 (#5208).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-windows.yml

## 413. 1a6fb5f1 - fix(linux/vulkan): Ensure RADV vulkan video encoding is enabled on newer versions of Mesa (#5211)

- Date: 2026-05-29
- Author: Kishi
- Tags: linux/capture
- Change size: 1 file changed, 16 insertions(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/vulkan): Ensure RADV vulkan video encoding is enabled on newer versions of Mesa (#5211).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/misc.cpp

## 414. a682ab07 - fix(linux/kwin): retry init with fully dropped elevated privileges in case KWin is missing CAP_SYS_NICE on linux (#5212)

- Date: 2026-05-29
- Author: Kishi
- Tags: linux/capture
- Change size: 1 file changed, 22 insertions(+)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture; primary path buckets: src. Subject indicates: fix(linux/kwin): retry init with fully dropped elevated privileges in case KWin is missing CAP_SYS_NICE on linux (#5212).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- src/platform/linux/kwingrab.cpp

## 415. 3d9e6d24 - feat(web-ui): Updated `Add` / `Edit` app form to use modals + new `Delete` App UI flow (#5166)

- Date: 2026-05-30
- Author: Noklef
- Tags: web-ui, l10n
- Change size: 3 files changed, 462 insertions(+), 369 deletions(-)
- Changed files: 3
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: feat(web-ui): Updated `Add` / `Edit` app form to use modals + new `Delete` App UI flow (#5166).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/apps.html
- src_assets/common/assets/web/public/assets/css/sunshine.css
- src_assets/common/assets/web/public/assets/locale/en.json

## 416. 7310bb73 - chore(deps): bump wayland-protocols to 1.48 (#5219)

- Date: 2026-05-30
- Author: David Lane
- Tags: linux/capture, build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches linux/capture, build/deps; primary path buckets: third-party. Subject indicates: chore(deps): bump wayland-protocols to 1.48 (#5219).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- third-party/wayland-protocols

## 417. 8583328c - chore(deps): update dependency date-fns to v4.4.0 (#5215)

- Date: 2026-05-30
- Author: renovate[bot]
- Tags: build/deps
- Change size: 2 files changed, 5 insertions(+), 5 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: package-lock.json, package.json. Subject indicates: chore(deps): update dependency date-fns to v4.4.0 (#5215).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package-lock.json
- package.json

## 418. 49f16952 - chore(l10n): update translations (#5220)

- Date: 2026-05-30
- Author: LizardByte-bot
- Tags: web-ui, l10n
- Change size: 21 files changed, 42 insertions(+)
- Changed files: 21
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: chore(l10n): update translations (#5220).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/public/assets/locale/bg.json
- src_assets/common/assets/web/public/assets/locale/cs.json
- src_assets/common/assets/web/public/assets/locale/de.json
- src_assets/common/assets/web/public/assets/locale/en_GB.json
- src_assets/common/assets/web/public/assets/locale/en_US.json
- src_assets/common/assets/web/public/assets/locale/es.json
- src_assets/common/assets/web/public/assets/locale/fr.json
- src_assets/common/assets/web/public/assets/locale/hu.json
- src_assets/common/assets/web/public/assets/locale/it.json
- src_assets/common/assets/web/public/assets/locale/ja.json
- src_assets/common/assets/web/public/assets/locale/ko.json
- src_assets/common/assets/web/public/assets/locale/pl.json
- ... 9 more file(s)

## 419. 4e9e0d4c - build(deps): bump third-party/tray from `6332649` to `df9af11` (#5221)

- Date: 2026-05-30
- Author: dependabot[bot]
- Tags: build/deps
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: third-party. Subject indicates: build(deps): bump third-party/tray from `6332649` to `df9af11` (#5221).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- third-party/tray

## 420. 0e351405 - build(python): migrate to uv (#5222)

- Date: 2026-05-30
- Author: David Lane
- Tags: linux/capture, build/deps, ci, docs
- Change size: 14 files changed, 801 insertions(+), 76 deletions(-)
- Changed files: 14
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps, ci; primary path buckets: .github, .gitignore, cmake, docs, packaging. Subject indicates: build(python): migrate to uv (#5222).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-freebsd.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci-macos.yml
- .github/workflows/ci-windows.yml
- .github/workflows/localize.yml
- .gitignore
- cmake/dependencies/glad.cmake
- docs/contributing.md
- packaging/linux/copr/Sunshine.spec
- packaging/linux/flatpak/dev.lizardbyte.app.Sunshine.yml
- packaging/sunshine.rb
- ... 2 more file(s)

## 421. 7d234bfa - build(homebrew): fix service install on linux (#5223)

- Date: 2026-05-30
- Author: David Lane
- Tags: linux/capture, build/deps, ci
- Change size: 3 files changed, 12 insertions(+), 3 deletions(-)
- Changed files: 3
- Import bucket: Review later
- Risk: Medium/High
- Change note: Touches linux/capture, build/deps, ci; primary path buckets: .github, cmake, packaging. Subject indicates: build(homebrew): fix service install on linux (#5223).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- .github/workflows/localize.yml
- cmake/packaging/linux.cmake
- packaging/sunshine.rb

## 422. ae14f9b3 - chore(gh-pages): remove unused jquery dependency (#5235)

- Date: 2026-05-31
- Author: David Lane
- Tags: misc
- Change size: 1 file changed, 2 deletions(-)
- Changed files: 1
- Import bucket: Review later
- Risk: Medium
- Change note: Touches misc; primary path buckets: gh-pages-template. Subject indicates: chore(gh-pages): remove unused jquery dependency (#5235).
- Import note: Not an obvious low-latency/server-runtime import; inspect only if it touches a failing area.
- Top files:
- gh-pages-template/index.html

## 423. fe500199 - docs(contributing): refresh clang-format guidance (#5233)

- Date: 2026-06-01
- Author: Sev7een
- Tags: docs
- Change size: 1 file changed, 5 insertions(+), 11 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches docs; primary path buckets: docs. Subject indicates: docs(contributing): refresh clang-format guidance (#5233).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- docs/contributing.md

## 424. 3ef82bde - chore(deps): update vmactions/freebsd-vm action to v1.4.6 (#5226)

- Date: 2026-05-31
- Author: renovate[bot]
- Tags: build/deps, ci
- Change size: 1 file changed, 1 insertion(+), 1 deletion(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: chore(deps): update vmactions/freebsd-vm action to v1.4.6 (#5226).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-freebsd.yml

## 425. 8975ed14 - chore(l10n): update translations (#5229)

- Date: 2026-05-31
- Author: LizardByte-bot
- Tags: web-ui, l10n
- Change size: 2 files changed, 27 insertions(+), 27 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches web-ui, l10n; primary path buckets: src_assets. Subject indicates: chore(l10n): update translations (#5229).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- src_assets/common/assets/web/public/assets/locale/bg.json
- src_assets/common/assets/web/public/assets/locale/zh.json

## 426. 86aabc4a - chore(deps): update dependency bootstrap-icons to v1.13.1 (#5239)

- Date: 2026-06-02
- Author: renovate[bot]
- Tags: build/deps
- Change size: 2 files changed, 5 insertions(+), 5 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: gh-pages-template. Subject indicates: chore(deps): update dependency bootstrap-icons to v1.13.1 (#5239).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- gh-pages-template/_data/clients.yml
- gh-pages-template/index.html

## 427. c0383029 - chore(deps): update dependency vite to v6.4.3 (#5238)

- Date: 2026-06-02
- Author: renovate[bot]
- Tags: build/deps
- Change size: 2 files changed, 5 insertions(+), 5 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: package-lock.json, package.json. Subject indicates: chore(deps): update dependency vite to v6.4.3 (#5238).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package-lock.json
- package.json

## 428. b56b80ca - chore(deps): update official github actions to v6.0.3 (#5242)

- Date: 2026-06-03
- Author: renovate[bot]
- Tags: build/deps, ci
- Change size: 11 files changed, 12 insertions(+), 12 deletions(-)
- Changed files: 11
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: chore(deps): update official github actions to v6.0.3 (#5242).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-archlinux.yml
- .github/workflows/ci-bundle.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-freebsd.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci-macos.yml
- .github/workflows/ci-windows.yml
- .github/workflows/ci.yml
- .github/workflows/localize.yml
- .github/workflows/update-pages.yml

## 429. 815a8351 - chore(deps): update dependency simple-icons to v13 (#5243)

- Date: 2026-06-03
- Author: renovate[bot]
- Tags: build/deps
- Change size: 1 file changed, 2 insertions(+), 2 deletions(-)
- Changed files: 1
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: gh-pages-template. Subject indicates: chore(deps): update dependency simple-icons to v13 (#5243).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- gh-pages-template/_data/clients.yml

## 430. 1f0455cc - chore(deps): update dependency simple-icons to v16 (#5248)

- Date: 2026-06-04
- Author: renovate[bot]
- Tags: build/deps
- Change size: 2 files changed, 27 insertions(+), 27 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: gh-pages-template. Subject indicates: chore(deps): update dependency simple-icons to v16 (#5248).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- gh-pages-template/_data/clients.yml
- gh-pages-template/index.html

## 431. 98ee1d00 - chore(deps): use lizardbyte-common for python helpers (#5250)

- Date: 2026-06-04
- Author: David Lane
- Tags: build/deps, ci, docs, l10n
- Change size: 13 files changed, 40 insertions(+), 530 deletions(-)
- Changed files: 13
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci, docs; primary path buckets: .flake8, .github, .gitmodules, docs, pyproject.toml. Subject indicates: chore(deps): use lizardbyte-common for python helpers (#5250).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .flake8
- .github/workflows/ci-freebsd.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci-macos.yml
- .github/workflows/ci-windows.yml
- .github/workflows/localize.yml
- .gitmodules
- docs/contributing.md
- pyproject.toml
- scripts/_locale.py
- scripts/update_clang_format.py
- third-party/lizardbyte-common
- ... 1 more file(s)

## 432. da3e1df1 - chore(deps): update lizardbyte/actions action to v2026.605.34721 (#5253)

- Date: 2026-06-05
- Author: renovate[bot]
- Tags: build/deps, ci
- Change size: 5 files changed, 8 insertions(+), 8 deletions(-)
- Changed files: 5
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: chore(deps): update lizardbyte/actions action to v2026.605.34721 (#5253).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-copr.yml
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-homebrew.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci.yml

## 433. 72bad87c - chore(deps): update dependency marked to v18.0.5 (#5251)

- Date: 2026-06-05
- Author: renovate[bot]
- Tags: build/deps
- Change size: 2 files changed, 5 insertions(+), 5 deletions(-)
- Changed files: 2
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps; primary path buckets: package-lock.json, package.json. Subject indicates: chore(deps): update dependency marked to v18.0.5 (#5251).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- package-lock.json
- package.json

## 434. fa4fbbdd - chore(deps): update astral-sh/setup-uv action to v8.2.0 (#5245)

- Date: 2026-06-05
- Author: renovate[bot]
- Tags: build/deps, ci
- Change size: 4 files changed, 4 insertions(+), 4 deletions(-)
- Changed files: 4
- Import bucket: Defer
- Risk: Low
- Change note: Touches build/deps, ci; primary path buckets: .github. Subject indicates: chore(deps): update astral-sh/setup-uv action to v8.2.0 (#5245).
- Import note: Mostly dependency, CI, docs, localization, packaging, or web UI churn; import only if needed by a runtime fix.
- Top files:
- .github/workflows/ci-flatpak.yml
- .github/workflows/ci-linux.yml
- .github/workflows/ci-macos.yml
- .github/workflows/ci-windows.yml
