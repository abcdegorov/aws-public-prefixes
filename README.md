# AWS Public Prefixes Parser

This repository downloads AWS public IP ranges, converts them into plain text and splits into separate files for IPv4 and IPv6.

## Files

- `extract-aws-prefixes.sh`: downloads the latest AWS `ip-ranges.json` and extracts prefixes.
- `aws-ipv4-prefixes.txt`: generated IPv4 CIDR prefixes.
- `aws-ipv6-prefixes.txt`: generated IPv6 CIDR prefixes.

## Run locally

```bash
chmod +x extract-aws-prefixes.sh
./extract-aws-prefixes.sh aws-ipv4-prefixes.txt aws-ipv6-prefixes.txt
```

## Automation

A GitHub Actions workflow runs daily, regenerates both files, and commits changes when prefixes are updated.
