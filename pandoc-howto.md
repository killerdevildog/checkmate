# Pandoc How-To: Superscript Links Inside a PDF

This note explains how to make small superscript markers, such as `¹ᴬ`, link to another place in the same document when Pandoc converts Markdown to PDF.

## Export This Project

PDF export requires `pandoc` and a PDF engine. The commands here use `xelatex`; both executables must be available on your `PATH`. The font options use installed **DejaVu Serif** and **DejaVu Sans Mono** fonts; substitute installed fonts with the required glyph coverage if needed. Reading and editing the Markdown, or assembling the bill ([Government Accountability](government_accountability/README.md), [Citizen-Led Investigations](Citizen_Led_Investigations/README.md)), does not require these tools.

From the repository root, export the combined reading copy (both Acts):

```bash
mkdir -p deploy
pandoc bill_proposal.md -o deploy/bill_proposal.pdf \
  --from=markdown+gfm_auto_identifiers \
  --pdf-engine=xelatex --toc --toc-depth=3 \
  -V mainfont="DejaVu Serif" -V monofont="DejaVu Sans Mono" \
  -V geometry:margin=1in -V colorlinks=true \
  -V linkcolor=blue -V urlcolor=blue
```

`./build_pdf.sh` runs the equivalent command for you and also regenerates the combined root `bill_proposal.md` first. Pass `government_accountability` or `citizen` to `build_pdf.sh` to export a single Act's PDF instead.

To export section edits before updating the combined reading copy, first run `bash government_accountability/build_bill.sh` or `bash Citizen_Led_Investigations/build_bill.sh`, then use that folder's `bill_proposal.md` as the input. Review which copy you are exporting; these per-folder builds do not automatically update the root file.

The bill already numbers its headings, so omit `--number-sections` when exporting it to avoid a second numbering scheme. `gfm_auto_identifiers` keeps generated heading IDs consistent with the GitHub-style fragment links used in the bill. PDFs and `deploy/` are ignored output. A local `deploy/build.sh` may exist in some checkouts, but it is not tracked and is not required for these commands.

Use the [rendering sample](testing/README.md) to check superscripts and internal links before exporting the full bill.

## Basic Pattern

Write the superscript marker as the visible link text:

```markdown
This is a word [¹ᴬ](#note-1a).
```

Then create the destination somewhere else in the document:

```markdown
## Note 1A {#note-1a}

This is the text the superscript marker jumps to.
```

The `¹ᴬ` part is what readers see.

The `#note-1a` part is the internal link target.

The `{#note-1a}` part creates the destination ID.

## Showing Literal Superscript Text

Use backticks when you only want to show the characters as an example:

```markdown
This uses actual UTF-8 superscript characters: `¹ᴬ`.
```

That renders like this:

This uses actual UTF-8 superscript characters: `¹ᴬ`.

Backticks are for code-style literal text. For a clickable superscript marker, use normal Markdown link syntax instead:

```markdown
[¹ᴬ](#note-1a)
```

## Blue Links In The PDF

Add this YAML header at the top of the Markdown file if you want Pandoc's PDF links to appear blue:

```yaml
---
colorlinks: true
linkcolor: blue
urlcolor: blue
toccolor: blue
---
```

## Example Pandoc Command

```bash
mkdir -p deploy
pandoc testing/superscript-utf-example.md \
  -o deploy/superscript-utf-example.pdf \
  --from=markdown+gfm_auto_identifiers --pdf-engine=xelatex --toc \
  -V mainfont="DejaVu Serif" -V monofont="DejaVu Sans Mono"
```

Use `xelatex` for UTF-8 text, with an installed font that contains the superscript characters you need. Check the rendered PDF and any missing-character warnings; engine support alone does not guarantee font coverage.
