#!/usr/bin/env bash
set -euo pipefail

IFACE="$(nmcli -t -f DEVICE,TYPE dev status | awk -F: '$2=="wifi"{print $1; exit}')"

ssids="$(nmcli -f SSID dev wifi list --rescan yes \
  | awk 'NR>1 && $1!=""{print $1}' | sort -u)"

if [[ -z "$ssids" ]]; then
  echo "No SSIDs found" >&2
  exit 1
fi

choice="$(printf "%s\n" "$ssids" | wofi -dmenu -i -p "WiFi SSID")"

[[ -z "${choice}" ]] && exit 0

nmcli dev wifi connect "$choice" ${IFACE:+ifname "$IFACE"} --ask
