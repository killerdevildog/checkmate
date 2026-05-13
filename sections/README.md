# Bill Sections

This folder contains **Operation Checkmate** split into ordered Markdown files.

- `manifest.txt` controls the build order.
- `build_bill.sh` combines the files listed in `manifest.txt`.
- The generated bill is written to `sections/bill_proposal.md`.
- The root `../bill_proposal.md` is **not** overwritten by the script.

To rebuild the combined bill:

```bash
./sections/build_bill.sh
```

Review `sections/bill_proposal.md`. If you want it to become the canonical root bill, move or copy it manually over `../bill_proposal.md`.
