#!/usr/bin/env bash
#
# Rebuild the assembled bill(s) and render to PDF in one step.
#
# Usage:
#   ./build_pdf.sh                            # combined "Operation Checkmate" PDF (both Acts) -> deploy/bill_proposal.pdf
#   ./build_pdf.sh out.pdf                    # combined PDF, custom output path
#   ./build_pdf.sh government_accountability  # Government Accountability Act only -> deploy/government_accountability.pdf
#   ./build_pdf.sh citizen                    # Citizen-Led Investigations Act only -> deploy/citizen_led_investigations.pdf
#   ./build_pdf.sh citizen out.pdf            # single-Act PDF, custom output path
#
# The combined build also rewrites the root bill_proposal.md, which is the
# combined Operation Checkmate reading copy (both Acts). A single-Act build
# does not touch the root bill_proposal.md.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

GA_DIR="$SCRIPT_DIR/government_accountability"
CLI_DIR="$SCRIPT_DIR/Citizen_Led_Investigations"

bill=""
case "${1:-}" in
  government_accountability|government|accountability|ga)
    bill="government_accountability"
    ;;
  Citizen_Led_Investigations|citizen_led_investigations|citizen|investigations|cli)
    bill="citizen_led_investigations"
    ;;
esac

if [[ -n "$bill" ]]; then
  if [[ "$bill" == "government_accountability" ]]; then
    dir="$GA_DIR"
    label="Government Accountability Act"
  else
    dir="$CLI_DIR"
    label="Citizen-Led Investigations Act"
  fi

  echo "== Assembling $dir/bill_proposal.md =="
  bash "$dir/build_bill.sh"

  echo
  echo "== Rendering PDF: $label =="
  if [[ -n "${2:-}" ]]; then
    "$SCRIPT_DIR/deploy/build.sh" "$dir/bill_proposal.md" "$2"
  else
    "$SCRIPT_DIR/deploy/build.sh" "$dir/bill_proposal.md" "$SCRIPT_DIR/deploy/$bill.pdf"
  fi
  exit 0
fi

echo "== Assembling $GA_DIR/bill_proposal.md =="
bash "$GA_DIR/build_bill.sh"

echo
echo "== Assembling $CLI_DIR/bill_proposal.md =="
bash "$CLI_DIR/build_bill.sh"

echo
echo "== Combining both Acts into root bill_proposal.md (Operation Checkmate) =="
tmp="$(mktemp "${TMPDIR:-/tmp}/operation-checkmate-combined.XXXXXX")"
trap 'rm -f "$tmp"' EXIT

{
  echo "# Operation Checkmate"
  echo
  echo "**A model statute in two companion Acts:** the Government Accountability Act and the Citizen-Led Investigations Act. The Acts reference each other by section number and are intended to be read together."
  echo
  echo "---"
  echo
  echo "# Act One — Government Accountability Act"
  echo
  cat "$GA_DIR/bill_proposal.md"
  echo
  echo
  echo "---"
  echo
  echo "# Act Two — Citizen-Led Investigations Act"
  echo
  cat "$CLI_DIR/bill_proposal.md"
} > "$tmp"

mv "$tmp" "$SCRIPT_DIR/bill_proposal.md"
trap - EXIT

echo "Updated root bill_proposal.md (combined Operation Checkmate)."

echo
echo "== Rendering combined PDF =="
if [[ $# -ge 1 ]]; then
  "$SCRIPT_DIR/deploy/build.sh" "$SCRIPT_DIR/bill_proposal.md" "$1"
else
  "$SCRIPT_DIR/deploy/build.sh" "$SCRIPT_DIR/bill_proposal.md"
fi
