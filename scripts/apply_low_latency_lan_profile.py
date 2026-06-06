#!/usr/bin/env python3

from __future__ import annotations

import argparse
import re
from collections import OrderedDict
from pathlib import Path


PROFILE_SETTINGS = OrderedDict(
    [
        ("encoder", "nvenc"),
        ("nvenc_preset", "1"),
        ("nvenc_tune", "ll"),
        ("nvenc_twopass", "disabled"),
        ("nvenc_spatial_aq", "disabled"),
        ("nvenc_h264_cavlc", "disabled"),
        ("nvenc_latency_over_power", "enabled"),
        ("nvenc_realtime_hags", "enabled"),
        ("nvenc_opengl_vulkan_on_dxgi", "enabled"),
        ("nvenc_vbv_increase", "0"),
        ("fec_percentage", "10"),
        ("lan_encryption_mode", "0"),
    ]
)


def update_config(text: str) -> tuple[str, list[str], list[str]]:
    lines = text.splitlines()
    replaced: list[str] = []
    missing = set(PROFILE_SETTINGS)

    for index, line in enumerate(lines):
        for key, value in PROFILE_SETTINGS.items():
            pattern = rf"^(\s*{re.escape(key)}\s*=\s*).*$"
            if re.match(pattern, line):
                lines[index] = re.sub(pattern, rf"\g<1>{value}", line)
                replaced.append(key)
                missing.discard(key)
                break

    appended = [key for key in PROFILE_SETTINGS if key in missing]
    if appended:
        if lines and lines[-1].strip():
            lines.append("")
        lines.append("# Apollo low-latency wired-LAN profile")
        for key in PROFILE_SETTINGS:
            if key in missing:
                lines.append(f"{key} = {PROFILE_SETTINGS[key]}")

    return "\n".join(lines) + "\n", replaced, appended


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Apply Apollo's low-latency NVIDIA wired-LAN profile to an Apollo/Sunshine config file."
    )
    parser.add_argument("config_path", type=Path, help="Path to the Apollo/Sunshine config file")
    parser.add_argument("--dry-run", action="store_true", help="Print the planned changes without writing the file")
    args = parser.parse_args()

    text = args.config_path.read_text(encoding="utf-8") if args.config_path.exists() else ""
    updated, replaced, appended = update_config(text)

    print("Apollo low-latency LAN profile")
    print(f"config: {args.config_path}")
    print(f"replaced: {', '.join(replaced) if replaced else 'none'}")
    print(f"appended: {', '.join(appended) if appended else 'none'}")

    if args.dry_run:
        return 0

    args.config_path.parent.mkdir(parents=True, exist_ok=True)
    args.config_path.write_text(updated, encoding="utf-8")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
