#!/usr/bin/env bash
#
# Rebuild bill_proposal.md from sections/ and render it to PDF in one step.
#
# Usage:
#   ./build_pdf.sh              # rebuild + sync root copy + render to deploy/bill_proposal.pdf
#   ./build_pdf.sh out.pdf      # rebuild + sync root copy + render to a custom output path

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "== Assembling sections/bill_proposal.md from sections/manifest.txt =="
bash "$SCRIPT_DIR/sections/build_bill.sh"

echo
echo "== Syncing root bill_proposal.md from sections/bill_proposal.md =="
cp "$SCRIPT_DIR/sections/bill_proposal.md" "$SCRIPT_DIR/bill_proposal.md"

echo
echo "== Rendering PDF =="
if [[ $# -ge 1 ]]; then
  "$SCRIPT_DIR/deploy/build.sh" bill_proposal.md "$1"
else
  "$SCRIPT_DIR/deploy/build.sh" bill_proposal.md
fi
