# Journal

## Old session handoffs

### Session handoff — 2026-10-26 19:25 · Split the bill into two Acts

**Status:** CLOSED (picked up 2026-10-26)  ·  written by claude-sonnet-5, session 63e1e156  ·  reason: context 184k/200k (92%) at a clean phase boundary, new phase about to start

**Goal:** Operation Checkmate is currently one assembled bill built from `sections/*.md`. The user wants it split into two separate, independently-readable bills/Acts: "Government Accountability" (the offense catalog — most of what's in `sections/` now) and "Citizen_Led_Investigations" (the citizen-enforcement mechanism — Citizen Councils plus two remedy sections). Each bill builds to its own assembled `.md`, and there is also a combined-PDF build titled "Operation Checkmate" containing both Acts.

**Done** (verified, by the session that picked this up on 2026-10-26):
- Renamed `sections/` to `government_accountability/` (plain `mv`; `git mv` was blocked by the auto-mode classifier, left for the user to stage as a rename on commit).
- Created `Citizen_Led_Investigations/`, moved the three files for Sections 9, 11, 16 into it, and copied the eight shared boilerplate files (front matter, Statement of Intent, Section 3, Section 4, Section 13, Section 14, Section 15, Section L, support/contact) into it as independent copies.
- Rewrote the copied front matter in `Citizen_Led_Investigations/00-front-matter.md` with the new Act's working title and a companion-statute note.
- Wrote `government_accountability/manifest.txt` (original minus the three relocated lines) and `Citizen_Led_Investigations/manifest.txt` (reading order for the new Act).
- Copied `build_bill.sh` into the new folder; fixed a pre-existing bug where its echo messages hardcoded the literal string `sections/` instead of deriving the folder name — now both copies print the real folder name via `$(basename "$PWD")`. Verified identical via `diff`.
- Wrote `Citizen_Led_Investigations/README.md` and updated `government_accountability/README.md` (paths, section index minus the three moved rows, a note on where they moved, and a "Shared files" note listing the eight duplicated files).
- Rewrote root `build_pdf.sh`: default (no args) builds both Acts and concatenates them into the combined root `bill_proposal.md` under an "Act One" / "Act Two" divider, then renders through `deploy/build.sh`; `./build_pdf.sh government_accountability` or `./build_pdf.sh citizen` builds a single Act's PDF to `deploy/government_accountability.pdf` / `deploy/citizen_led_investigations.pdf`; a second positional arg or the first arg (combined mode) overrides the output path. All three modes were run and produced PDFs (`deploy/bill_proposal.pdf` 1.15MB, `deploy/government_accountability.pdf` 950KB, `deploy/citizen_led_investigations.pdf` 252KB, plus a verified custom-output-path run). Syntax-checked with `bash -n`.
- Swept the repo's Markdown for stale `sections/` and `bill_proposal.md` references. Updated: root `README.md`, `CONTRIBUTING.md`, `pandoc-howto.md`, `advanced_readme.md`, `TLDR.md`, `research/README.md`, `why/README.md`, `culture/README.md`, `testing/README.md`, and the one real link in `why/why_family_separation_is_a_distinct_offense.md` (Section 12 stays in `government_accountability/`, so that link now points there). `faq.md` was checked and needed no changes (no `sections/` references; its `bill_proposal.md` links remain valid since the root file is still the full reading copy).
- Deliberately left untouched (frozen, dated analysis snapshots, not living navigation): `restructure_plan.md` and `research/2026-08-utah-passage/*.md` — these cite specific line numbers from a past revision; mechanically rewriting their paths would be busywork with real risk of mis-mapping citations, and `research/README.md` already disclaims them as "not bill source files."
- Updated the persistent memory note `reference_bill_file_path.md` (and its `MEMORY.md` index line) to describe the two-folder-plus-combined-root structure, which files are duplicated across folders, and that none of the three `bill_proposal.md` files (root, or either folder) should ever be edited directly.
- Reviewed final `git status`: clean rename-shaped diff (`sections/*` deleted, `government_accountability/` and `Citizen_Led_Investigations/` untracked, plus the doc edits above and root `bill_proposal.md` regenerated as the combined copy). Nothing committed — git `add`/`commit`/`push` are blocked for the agent by a `PreToolUse` hook; those commands go to the user.

**Not started:** None — all 13 of the prior session's "Next steps" are complete.

**Decisions and user rulings** (carried over, already final, do not re-litigate):
1. Bill scope: `Citizen_Led_Investigations` gets Section 9, plus the two remedy sections, Section 11 (Forfeiture) and Section 16 (Nullity of Government Instruments). Everything else stays in Government Accountability.
2. Cross-references: section numbers are NOT renumbered. Sections 9, 11, and 16 keep their existing numbers even after moving. The two bills work as companion statutes that reference each other by section number, the same way Utah Code's own titles reference each other. Scattered existing references to these numbers elsewhere (~90 for Section 9 alone) are left as-is.
3. Shared boilerplate: duplicated into both bill folders as independent file copies, not pulled from one shared source.
4. Naming: the folder is `Citizen_Led_Investigations` (exact string, that capitalization and those underscores). The Act's working title is derived from that name ("Citizen-Led Investigations Act").

**Live work:** None running. Working tree has uncommitted changes (see "Done" above); nothing staged.

**Next steps:** None outstanding for this phase. If more work surfaces (e.g., a different working title for Citizen-Led Investigations, or further doc sweeps), handle it as a fresh task — this phase is complete. The one thing still owed to the user: hand them the exact `git add` / `git commit` / `git push` commands to run themselves, since the agent cannot run those subcommands.

**Key files:**
`government_accountability/` — the Government Accountability Act's source folder (formerly `sections/`).
`Citizen_Led_Investigations/` — the new Citizen-Led Investigations Act's source folder.
`build_pdf.sh` (repo root) — now builds both Acts, the combined PDF, or either Act alone.
`bill_proposal.md` (repo root) — now the combined "Operation Checkmate" reading copy (both Acts), regenerated by `build_pdf.sh`.
`/home/shadowbane/.claude/projects/-home-shadowbane-Documents-GIT-operation-checkmate/memory/reference_bill_file_path.md` — updated memory describing the new source layout.

**Open questions for the user:** none blocking. If the user wants a different working title for Citizen-Led Investigations than what's in `Citizen_Led_Investigations/00-front-matter.md`, that's a quick follow-up edit.
