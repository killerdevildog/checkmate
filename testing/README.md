# Rendering Sample

This folder contains a manual Markdown/PDF rendering fixture, not an automated test suite.

[`superscript-utf-example.md`](superscript-utf-example.md) demonstrates UTF-8 superscript characters, Pandoc superscript syntax, and an internal link to an explicitly named heading. See the [Pandoc how-to](../pandoc-howto.md) for the syntax and dependencies.

From the repository root:

The example uses installed DejaVu Serif and DejaVu Sans Mono fonts, which provide the superscript glyphs used here.

```bash
mkdir -p deploy
pandoc testing/superscript-utf-example.md \
  -o deploy/superscript-utf-example.pdf \
  --from=markdown+gfm_auto_identifiers --pdf-engine=xelatex --toc \
  -V mainfont="DejaVu Serif" -V monofont="DejaVu Sans Mono"
```

Open the PDF and check that the superscript glyphs render, the `¹ᴬ` link jumps to “Note 1A,” and the table of contents navigates correctly. Glyph coverage depends on the installed fonts; XeLaTeX alone does not supply missing glyphs. Generated PDFs and `deploy/` are ignored by Git.

For bill assembly checks, see the [section guide](../sections/README.md).
