#!/usr/bin/env bash
set -euo pipefail

URL="https://ip-ranges.amazonaws.com/ip-ranges.json"
OUT_V4="${1:-aws-ipv4-prefixes.txt}"
OUT_V6="${2:-aws-ipv6-prefixes.txt}"

json="$(curl -fsSL "$URL")"

printf '%s' "$json" | jq -r '.prefixes[]?.ip_prefix' > "$OUT_V4"
printf '%s' "$json" | jq -r '.ipv6_prefixes[]?.ipv6_prefix' > "$OUT_V6"

echo "Wrote $(wc -l < "$OUT_V4") IPv4 prefixes to $OUT_V4"
echo "Wrote $(wc -l < "$OUT_V6") IPv6 prefixes to $OUT_V6"
