#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

manifest="manifest.txt"
output="bill_proposal.md"

if [[ ! -f "$manifest" ]]; then
  echo "Missing $manifest" >&2
  exit 1
fi

tmp="$(mktemp "${TMPDIR:-/tmp}/operation-checkmate-bill.XXXXXX")"
trap 'rm -f "$tmp"' EXIT

first=1
while IFS= read -r section_file || [[ -n "$section_file" ]]; do
  [[ -z "$section_file" || "$section_file" =~ ^[[:space:]]*# ]] && continue

  if [[ ! -f "$section_file" ]]; then
    echo "Missing section file listed in $manifest: $section_file" >&2
    exit 1
  fi

  if [[ "$first" -eq 0 ]]; then
    printf '\n' >> "$tmp"
  fi

  cat "$section_file" >> "$tmp"
  first=0
done < "$manifest"

mv "$tmp" "$output"
trap - EXIT

echo "Generated sections/$output"
echo "Root bill_proposal.md was not changed."
echo "Review sections/$output, then manually move or copy it to ./bill_proposal.md if you want it to replace the root bill."
