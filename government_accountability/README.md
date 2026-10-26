# Bill Sections — Government Accountability Act

This folder contains the editable **Government Accountability Act** draft, split into ordered Markdown files. This Act is the offense catalog; the companion **Citizen-Led Investigations Act** in [`../Citizen_Led_Investigations/`](../Citizen_Led_Investigations/README.md) supplies the citizen-enforcement mechanism — the Citizen Council, the Joint Declaration, and the two remedy sections — that activates prosecution of these offenses. The two Acts reference each other by section number, the same way separate titles within the Utah Code reference each other. Return to the [project overview](../README.md) or see the [contribution guide](../CONTRIBUTING.md) for the editing workflow.

## Sources and assembled copies

- [`manifest.txt`](manifest.txt) controls the build order. A file is included only if it appears in the manifest.
- [`build_bill.sh`](build_bill.sh) joins those files with a blank line between them; it does not renumber sections or resolve cross-references.
- [`bill_proposal.md`](bill_proposal.md) in this folder is generated output, not a build input.
- The root [`../bill_proposal.md`](../bill_proposal.md) is the combined "Operation Checkmate" reading copy (both Acts). The script does not overwrite it.
- Section edits can be newer than either assembled copy. Compare a fresh build before treating the copies as synchronized.

Some fragment links inside individual section files target headings in other sections, including sections that now live in [`../Citizen_Led_Investigations/`](../Citizen_Led_Investigations/). Follow those links in an assembled bill, or across the two assembled bills; they are intended to resolve after concatenation.

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
| Section 10 — Retroactive Civil Applicability | [11 — Civil applicability](11-section-10-retroactive-civil-applicability.md) |
| Section 12 — Death of a Citizen Resulting from Violation | [13 — Resulting deaths](13-section-12-death-of-a-citizen-resulting-from-violation.md) |
| Section 13 — Severability | [14 — Severability](14-section-13-severability.md) |
| Section 14 — Effective Date | [15 — Effective date](15-section-14-effective-date.md) |
| Section 15 — Constitutional Amendment, Supremacy, and Entrenchment | [16 — Constitutional amendment](16-section-15-constitutional-amendment-supremacy-and-entrenchment.md) |
| Section 17 — Role-Specific Public Official Offenses | [18 — Role-specific offenses](18-section-17-role-specific-public-official-offenses.md) |
| Section L — Cases Cited | [19 — Cases cited](19-section-l-cases-cited.md) |
| Support, Contact, and Petition Sign-On | [20 — Support and contact](20-support-contact-petition-sign-on.md) |

Sections 9, 11, and 16 are not part of this Act. They moved to [Citizen-Led Investigations](../Citizen_Led_Investigations/README.md) and are referenced here by number only.

## Why Sections 6–8 are absent

These are deliberate gaps left by earlier mergers, not missing source files:

| Former section | Current location |
|---|---|
| Section 6 — Equal application | §5.5 in [Section 5](06-section-5-fixing-immunity-and-accountability-gaps.md) |
| Section 7 — Penalty enhancements | §5.6 in [Section 5](06-section-5-fixing-immunity-and-accountability-gaps.md) |
| Section 8 — Hearsay | §2.3 in [Section 2](03-section-2-due-process.md) |

The mergers are recorded in commits `27bfe18` (Sections 6 and 7) and `e931ea5` (Section 8). The Section 5 filename retains its earlier title. Section 17 likewise skips Subpart C because its judicial and court-access material moved into Section 2. Preserve these identifiers unless a separate renumbering change updates their references throughout the project.

## Shared files

The front matter, Statement of Intent, Section 3 (Mens Rea), Section 4 (Knowing), Section 13 (Severability), Section 14 (Effective Date), Section 15 (Constitutional Amendment), Section L (Cases Cited), and the support/contact page are maintained as independent copies in both this folder and [`../Citizen_Led_Investigations/`](../Citizen_Led_Investigations/). They are not pulled from a single shared source, so an edit to one copy does not propagate to the other. When editing one of these files, make the matching edit in both folders.

## Rebuild and review

From the repository root, with Bash and standard Unix command-line tools available:

```bash
bash government_accountability/build_bill.sh
git diff -- government_accountability/bill_proposal.md
```

The script stops if a manifest entry is missing and replaces the generated output only after it has read all inputs successfully. It requires no Pandoc installation. The root `bill_proposal.md` is the combined "Operation Checkmate" reading copy built from both Acts by the root [`build_pdf.sh`](../build_pdf.sh); this folder's own build does not update it.

When adding or moving a source section, update both the manifest and this index. Check section references in the bill and companion docs. See the [Pandoc how-to](../pandoc-howto.md) for PDF export.
