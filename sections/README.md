# Bill Sections

This folder contains the editable **Operation Checkmate** draft, split into ordered Markdown files. Return to the [project overview](../README.md) or see the [contribution guide](../CONTRIBUTING.md) for the editing workflow.

## Sources and assembled copies

- [`manifest.txt`](manifest.txt) controls the build order. A file is included only if it appears in the manifest.
- [`build_bill.sh`](build_bill.sh) joins those files with a blank line between them; it does not renumber sections or resolve cross-references.
- [`bill_proposal.md`](bill_proposal.md) in this folder is generated output, not a build input.
- The root [`../bill_proposal.md`](../bill_proposal.md) is the assembled reading copy. The script does not overwrite it.
- Section edits can be newer than either assembled copy. Compare a fresh build before treating the copies as synchronized.

Some fragment links inside individual section files target headings in other sections. Follow those links in an assembled bill; they are intended to resolve after concatenation.

## Section index

The numeric filename prefixes specify file order; the headings inside the files specify bill section numbers.

| Bill content | Source |
|---|---|
| Front matter | [00 — Front matter](00-front-matter.md) |
| Statement of Intent | [01 — Statement of Intent](01-statement-of-intent.md) |
| Section 1 — Definitions | [02 — Definitions](02-section-1-definitions.md) |
| Section 2 — Due Process | [03 — Due Process](03-section-2-due-process.md) |
| Section 3 — Mens Rea: Criminal and Civil | [04 — Mens rea](04-section-3-mens-rea-criminal-and-civil.md) |
| Section 4 — Knowing and Cognate Terms | [05 — Knowing](05-section-4-knowing-and-cognate-terms.md) |
| Section 5 — Liability and Penalty Architecture | [06 — Liability and penalties](06-section-5-fixing-immunity-and-accountability-gaps.md) |
| Section 9 — Activation of Prosecution; Citizen Council and Joint Declaration | [10 — Citizen Council](10-section-9-activation-of-prosecution-citizen-council-and-joint-declaration.md) |
| Section 10 — Retroactive Civil Applicability | [11 — Civil applicability](11-section-10-retroactive-civil-applicability.md) |
| Section 11 — Forfeiture of State Benefits and Office | [12 — Forfeiture](12-section-11-forfeiture-of-state-benefits-and-office.md) |
| Section 12 — Death of a Citizen Resulting from Violation | [13 — Resulting deaths](13-section-12-death-of-a-citizen-resulting-from-violation.md) |
| Section 13 — Severability | [14 — Severability](14-section-13-severability.md) |
| Section 14 — Effective Date | [15 — Effective date](15-section-14-effective-date.md) |
| Section 15 — Constitutional Amendment, Supremacy, and Entrenchment | [16 — Constitutional amendment](16-section-15-constitutional-amendment-supremacy-and-entrenchment.md) |
| Section 16 — Nullity of Government Instruments | [17 — Nullity](17-section-16-nullity-of-government-instruments-repugnant-to-this-act-or-to-constitutional-authority.md) |
| Section 17 — Role-Specific Public Official Offenses | [18 — Role-specific offenses](18-section-17-role-specific-public-official-offenses.md) |
| Section L — Cases Cited | [19 — Cases cited](19-section-l-cases-cited.md) |
| Support, Contact, and Petition Sign-On | [20 — Support and contact](20-support-contact-petition-sign-on.md) |

## Why Sections 6–8 are absent

These are deliberate gaps left by earlier mergers, not missing source files:

| Former section | Current location |
|---|---|
| Section 6 — Equal application | §5.5 in [Section 5](06-section-5-fixing-immunity-and-accountability-gaps.md) |
| Section 7 — Penalty enhancements | §5.6 in [Section 5](06-section-5-fixing-immunity-and-accountability-gaps.md) |
| Section 8 — Hearsay | §2.3 in [Section 2](03-section-2-due-process.md) |

The mergers are recorded in commits `27bfe18` (Sections 6 and 7) and `e931ea5` (Section 8). The Section 5 filename retains its earlier title. Section 17 likewise skips Subpart C because its judicial and court-access material moved into Section 2. Preserve these identifiers unless a separate renumbering change updates their references throughout the project.

## Rebuild and review

From the repository root, with Bash and standard Unix command-line tools available:

```bash
bash sections/build_bill.sh
git diff -- sections/bill_proposal.md
diff -u bill_proposal.md sections/bill_proposal.md
```

`diff` exits with status 1 when it finds differences; review those differences. The script stops if a manifest entry is missing and replaces the generated output only after it has read all inputs successfully. It requires no Pandoc installation.

After reviewing the generated text, explicitly update the root reading copy if this is the draft you intend to publish:

```bash
cp sections/bill_proposal.md bill_proposal.md
git diff -- bill_proposal.md
```

When adding or moving a source section, update both the manifest and this index. Check section references in the bill and companion docs. See the [Pandoc how-to](../pandoc-howto.md) for PDF export.
