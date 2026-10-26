# Bill Sections — Citizen-Led Investigations Act

This folder contains the editable **Citizen-Led Investigations Act** draft, split into ordered Markdown files. This Act is the companion to the **Government Accountability Act** in [`../government_accountability/`](../government_accountability/README.md): Government Accountability defines the offenses, and this Act supplies the citizen-enforcement mechanism — the Citizen Council, the Joint Declaration, and the two remedy sections — that activates prosecution of them. The two Acts reference each other by section number, the same way separate titles within the Utah Code reference each other. Return to the [project overview](../README.md) or see the [contribution guide](../CONTRIBUTING.md) for the editing workflow.

## Sources and assembled copies

- [`manifest.txt`](manifest.txt) controls the build order. A file is included only if it appears in the manifest.
- [`build_bill.sh`](build_bill.sh) joins those files with a blank line between them; it does not renumber sections or resolve cross-references.
- [`bill_proposal.md`](bill_proposal.md) in this folder is generated output, not a build input.
- The root [`../bill_proposal.md`](../bill_proposal.md) is the combined "Operation Checkmate" reading copy (both Acts). The script does not overwrite it.
- Section edits can be newer than either assembled copy. Compare a fresh build before treating the copies as synchronized.

Some fragment links inside individual section files target headings in other sections, including sections that now live in [`../government_accountability/`](../government_accountability/). Follow those links in an assembled bill, or across the two assembled bills; they are intended to resolve after concatenation.

## Section index

The numeric filename prefixes specify file order; the headings inside the files specify bill section numbers. Section numbers are shared with Government Accountability and are not renumbered.

| Bill content | Source |
|---|---|
| Front matter | [00 — Front matter](00-front-matter.md) |
| Statement of Intent | [01 — Statement of Intent](01-statement-of-intent.md) |
| Section 3 — Mens Rea: Criminal and Civil | [04 — Mens rea](04-section-3-mens-rea-criminal-and-civil.md) |
| Section 4 — Knowing and Cognate Terms | [05 — Knowing](05-section-4-knowing-and-cognate-terms.md) |
| Section 9 — Activation of Prosecution; Citizen Council and Joint Declaration | [10 — Citizen Council](10-section-9-activation-of-prosecution-citizen-council-and-joint-declaration.md) |
| Section 11 — Forfeiture of State Benefits and Office | [12 — Forfeiture](12-section-11-forfeiture-of-state-benefits-and-office.md) |
| Section 16 — Nullity of Government Instruments | [17 — Nullity](17-section-16-nullity-of-government-instruments-repugnant-to-this-act-or-to-constitutional-authority.md) |
| Section 13 — Severability | [14 — Severability](14-section-13-severability.md) |
| Section 14 — Effective Date | [15 — Effective date](15-section-14-effective-date.md) |
| Section 15 — Constitutional Amendment, Supremacy, and Entrenchment | [16 — Constitutional amendment](16-section-15-constitutional-amendment-supremacy-and-entrenchment.md) |
| Section L — Cases Cited | [19 — Cases cited](19-section-l-cases-cited.md) |
| Support, Contact, and Petition Sign-On | [20 — Support and contact](20-support-contact-petition-sign-on.md) |

Sections 1, 2, 5, 10, 12, and 17 are not part of this Act. They are defined in [Government Accountability](../government_accountability/README.md) and are referenced here by number only.

## Shared files

The front matter, Statement of Intent, Section 3 (Mens Rea), Section 4 (Knowing), Section 13 (Severability), Section 14 (Effective Date), Section 15 (Constitutional Amendment), Section L (Cases Cited), and the support/contact page are maintained as independent copies in both this folder and [`../government_accountability/`](../government_accountability/). They are not pulled from a single shared source, so an edit to one copy does not propagate to the other. When editing one of these files, make the matching edit in both folders.

## Rebuild and review

From the repository root, with Bash and standard Unix command-line tools available:

```bash
bash Citizen_Led_Investigations/build_bill.sh
git diff -- Citizen_Led_Investigations/bill_proposal.md
```

The script stops if a manifest entry is missing and replaces the generated output only after it has read all inputs successfully. It requires no Pandoc installation. See the root [`build_pdf.sh`](../build_pdf.sh) to also render a PDF, and the [Pandoc how-to](../pandoc-howto.md) for manual PDF export.

When adding or moving a source section, update both the manifest and this index. Check section references in the bill and companion docs.
