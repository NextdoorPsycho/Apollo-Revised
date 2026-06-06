# Apollo Low-Latency Wired-LAN Profile

This profile targets an NVIDIA RTX host on a reliable wired LAN. It keeps Apollo's current RTSP and launch behavior intact and only writes existing Apollo/Sunshine config keys.

## Baseline Profile

Apply the profile to a config file:

```bash
scripts/apply_low_latency_lan_profile.py /path/to/sunshine.conf
```

The script writes these settings:

```ini
encoder = nvenc
nvenc_preset = 1
nvenc_tune = ll
nvenc_twopass = disabled
nvenc_spatial_aq = disabled
nvenc_h264_cavlc = disabled
nvenc_latency_over_power = enabled
nvenc_realtime_hags = enabled
nvenc_opengl_vulkan_on_dxgi = enabled
nvenc_vbv_increase = 0
fec_percentage = 10
lan_encryption_mode = 0
```

Keep `fec_percentage = 10` only while packet loss remains zero in 10-minute high-motion wired-LAN tests. If packet loss appears, move back to `20` before testing other encoder changes.

## Client Pairing

Use the matching Artemis `Balanced LAN` profile first:

- HEVC forced.
- Hardware decoder forced.
- HDR and YUV 4:4:4 disabled.
- V-Sync and frame pacing disabled.
- Packet size set to `1392`.
- Apollo sole virtual display preferred.
- Bitrate derived from resolution/FPS unless the user switches to `Custom`.

## Measurement Matrix

Start with `2560x1440 @ 240 FPS` for 60 seconds, then 10 minutes. Repeat at `2560x1440 @ 120 FPS` if the 240 FPS target misses frame budget.

Test only one variable at a time:

- Codec: HEVC baseline, AV1 opt-in, H.264 fallback.
- NVENC preset: `1`, then `2`, then `3` only when quality is visibly bitrate-constrained.
- Tune: `ll` baseline, `ull` only if it improves latency without visible quality loss.
- Two-pass: `disabled` baseline, `quarter_res` only if it prevents packet loss or scene-change damage.
- VBV: `0`, `50`, `100`.
- Packet size: `1392`, `1024`, `1472` only after MTU validation.
- FEC: `5`, `10`, `20`; accept the lowest value with zero packet loss.
- Client presentation: V-Sync off/on, frame pacing off/on.

Accept a setting only when all of these stay true:

- Zero packet loss during the 10-minute high-motion test.
- No software decode fallback.
- Host frame-processing latency stays below one frame budget for the tested FPS target.
- Encoder/capture GPU load remains materially below gameplay GPU load.

## Upstream Import Rules

Use `sunshine-upstream/master` as the public upstream reference. Do not rebase Apollo wholesale.

Import candidates in this order:

1. Security, session, and web API fixes.
2. Encoder and capture latency fixes.
3. Packet-size, FEC, and network fixes.
4. Build and packaging fixes.

Preserve Apollo-specific virtual display/session launch behavior, OTP/API additions, branding, macOS build changes, and Apollo config names. Avoid replacing the web UI unless a cherry-picked API fix requires the matching UI change.
