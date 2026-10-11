# Contributing to Operation Checkmate

Start with the [project overview](README.md), [full draft](bill_proposal.md), and [section index](sections/README.md). Questions and proposed changes can be submitted through [GitHub issues](https://github.com/killerdevildog/checkmate/issues) or a pull request. Include the affected section or file and the specific change you propose.

## Choose the right file

| Change | Where to work |
|---|---|
| Bill wording | The corresponding source file in [sections](sections/README.md) |
| Plain-language introduction | [README](README.md) or [TLDR](TLDR.md) |
| Structural overview or common questions | [Advanced overview](advanced_readme.md) or [FAQ](faq.md) |
| Explanation of a drafting choice | [Why essays](why/README.md) |
| Community guide | [Culture index](culture/README.md) |
| Reusable outreach draft | [Email templates](emails/README.md) |
| Research or future restructuring | [Research](research/README.md) or [restructuring plan](restructure_plan.md) |

Keep proposed bill changes distinct from commentary about them. Cite the source for factual assertions and describe proposed powers or remedies as proposals. When moving a section, update references by checking the destination heading; a global number replacement can change unrelated references.

## Edit and assemble

1. Run `git status --short` before editing so you can identify existing work.
2. Edit the source section. Avoid editing an assembled bill directly, because the next build would replace that edit.
3. If you add or move a source file, update `sections/manifest.txt` and `sections/README.md`.
4. Run `bash sections/build_bill.sh` from the repository root, then review `git diff -- sections/bill_proposal.md` and `diff -u bill_proposal.md sections/bill_proposal.md`.
5. When the assembled result is ready, copy it with `cp sections/bill_proposal.md bill_proposal.md` and review the root diff.

A documentation-only change does not require rebuilding the bill. The builder includes every current source edit, including local edits unrelated to your documentation change.

## Check the result

- Open changed Markdown files in a preview and follow their relative links. Paths resolve from the document's folder: a file in `culture/` links to the root bill using `../bill_proposal.md`.
- Check anchors against the destination heading and update the appropriate folder index when adding a document.
- Run `git diff --check` for whitespace problems and `git status --short` to review changed and untracked files.
- If you introduce a link to a local file, include that file in the same contribution or confirm it is already tracked. A link that works in your checkout can still break in a fresh clone when the target is untracked or ignored.
- Review `git diff --stat` and `git diff` before committing. Untracked files do not appear in an ordinary `git diff`.

There is no application dependency installation or automated test suite for this Markdown project. The bill build, source/output comparison, link review, and optional PDF rendering are the relevant checks. The [testing folder](testing/README.md) contains a rendering sample.

## PDF exports and local materials

Use the commands in the [Pandoc how-to](pandoc-howto.md). PDFs and everything under `deploy/` are ignored by Git; a local `deploy/build.sh` is not part of a fresh clone. Do not make it a required step in shared instructions.

Treat release attachments as versioned snapshots. Use the [latest-release page](https://github.com/killerdevildog/checkmate/releases/latest) in general navigation rather than hard-coding a version as the latest.

Keep personal outreach/contact notes and scratch work out of a contribution unless you specifically intend to publish them. Review new files individually instead of staging the entire working tree.
