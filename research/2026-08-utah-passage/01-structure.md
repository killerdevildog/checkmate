# 01 — INTERNAL STRUCTURAL ANALYSIS
## Operation Checkmate v5.8.24 — Enactability Mechanics

**Scope:** internal structure only. Dependency graph, severability tiers, drafting-convention gaps,
penalty/fiscal surface, and the ten most-passable provisions. No ideological assessment.

**Citation shorthand:** all paths relative to `/home/shadowbane/Documents/GIT/operation_checkmate/`.
`sections/18-...md:426` = file, line. All line numbers verified against the working section files
(NOT `bill_proposal.md`, which is build output).

**Corrections to the shared briefing, established by reading the text:**
- §17 contains **54** numbered offenses, not ~70. There is **no Subpart C and no Subpart F**
  (`sections/18-...md` jumps Subpart B at :577 → Subpart D at :680), and no §17.15A/B, no §17.16 —
  despite `:1144` applying enhancements across "Subparts A through F" and `:3` promising coverage of
  "judicial officers, clerks and records custodians."
- **Sections 6, 7, and 8 do not exist.** `sections/manifest.txt` runs `06-section-5` →
  `10-section-9`. The Act numbers itself 1,2,3,4,5,9,10,11,12,13,14,15,16,17.
- §1.1 contains 53 subsections but only **41 carry a penalty**; 12 are purely definitional.

---

# 0. THE FOUR FACTS THAT DOMINATE EVERYTHING BELOW

Before the tiers, four measured facts that condition every provision in the bill equally. These are
**mechanical**, not political, and each has a mechanical fix.

### 0.1 The penalty taxonomy does not exist in Utah law

The bill classifies offenses as **"Class 1 / Class 2 / Class 3 felony," "Class 1 misdemeanor," and
"capital offense."** Utah Code § 76-3-203 grades felonies as **first / second / third degree**;
§ 76-3-204 grades misdemeanors as **class A / B / C**.

Measured counts across all section files (excluding build output):

| Label used by the bill | Occurrences |
|---|---|
| `capital offense` | 109 |
| `Class 2 felony` | 125 |
| `Class 3 felony` | 64 |
| `Class 1 felony` | 39 |
| `Class 1 misdemeanor` | 29 |
| `infraction` | 26 |
| **Total penalty designations** | **392** |

| Real Utah grammar | Occurrences |
|---|---|
| `first/second/third degree felony` | **0** |
| `class A / class B misdemeanor` | **0** |
| `76-3-203` / `76-3-204` | **0** |
| `class C misdemeanor` | 2 |

The only two uses of real Utah grammar are at
`sections/17-section-16-...md:46`, where the bill *describes existing law it is criticizing*
(Utah Code §41-12a-302). The author demonstrably knows the real grammar exists and did not adopt it.

"Class 1/2/3 felony" and "capital offense" are **defined nowhere in the repository** — no term of
years, no fine range, no mapping. §17.26 (`sections/18-...md:1119-1130`) is captioned "Penalty
Structure (Cross-Reference)" and points to "the existing penalty classifications of **this title**" —
a title that does not exist. It is a definitional dead end.

**Fix (mechanical, ~1 day of work, unlocks the entire bill):** global remap
`Class 3 felony → third degree felony`, `Class 2 felony → second degree felony`,
`Class 1 felony → first degree felony`, `Class 1 misdemeanor → class A misdemeanor`,
`capital offense → first degree felony` (see §0.2), `infraction → infraction` (already correct).
Until this is done, **no provision in this bill is enactable in any tier.**

### 0.2 "Capital offense" is federally foreclosed — all 109 instances

109 provisions escalate to "capital offense," including for **Cronyism over $10,000**
(`sections/02-...md:1751`), **Preferential Contracting Abuse** (`sections/18-...md:756`), and
**citizen suicide caused by official misconduct** (`sections/13-...md:5`).

Blocked by *Kennedy v. Louisiana*, 554 U.S. 407 (2008) (Eighth Amendment categorically bars capital
punishment for crimes against an individual that do not result in death) and *Coker v. Georgia*,
433 U.S. 584 (1977). Utah reserves death for aggravated murder (Utah Code § 76-5-202). A state
legislature cannot extend it to contracting fraud or to a suicide the official did not intentionally
cause. This is not a Utah political problem; it is a federal constitutional ceiling.

**Fix preserving the objective ("the worst official misconduct carries Utah's maximum penalty"):**
remap `capital offense → first degree felony` (Utah Code § 76-3-203(1): five years to life). Where a
citizen actually dies, route to the existing homicide statutes (§ 76-5-203 murder, § 76-5-205
manslaughter, § 76-5-202 aggravated murder) and add an **official-capacity aggravating factor**
under § 76-3-203.1 rather than creating a parallel capital scheme. The author loses the word
"capital" and loses nothing else — five-to-life is Utah's real maximum for everything short of
aggravated murder.

### 0.3 The bill is not drafted as a code amendment — it floats free

Across ~130,000 words the bill cites **12 unique real Utah Code sections**, and **zero of them as
amendment targets**:

| Cite | Where | Posture |
|---|---|---|
| §41-6a-209, -210, -401 | `sections/01-...md:186-188` | criticized |
| §41-12a-103, -301, -302 | `sections/17-...md:46,48`; `01-...md:197` | criticized |
| §31A-1-301, §31A-21-102 | `sections/17-...md:58` | descriptive |
| § 76-6-401 (theft) | `sections/02-...md:268, 2735, 2783, 2936, 3021` | "cumulatively chargeable" |
| § 76-5-301 (kidnapping) | `sections/02-...md:2727, 2782, 2935, 3021` | "cumulatively chargeable" |
| § 76-9-802 / -803 (street gang) | `sections/02-...md:3058-3141` | structure imported |

Zero hits repo-wide for `is amended to read`, `is enacted to read`, `Be it enacted`,
`repealed and reenacted`, `63G-7` (Governmental Immunity Act — the statute §5.1 purports to
override), `77-` (criminal procedure), or `76-8-` (offenses against administration of government —
where most of these offenses would actually be codified).

### 0.4 Cross-references are stale — at least 8 dangling families

The Act's internal numbering has drifted across versions and the references were not re-swept:

| Dangling reference | Cited at | Problem |
|---|---|---|
| `§14.7` "Federal Officer Status Not a Shield" | `06-...md:261,263`; `12-...md:38,49`; `18-...md:996` | Section 14 is a **3-line effective-date section**. §14.7 does not exist. Load-bearing — it is the sole cited authority for reaching federal officers. |
| `Sections 1.2, 1.3, 1.4, 1.6, 1.7, 1.8–1.11` | `10-...md:178,207`; `16-...md:12` | Section 1 contains only §1.1 and §1.2. |
| `Sections 11.3, 10.4, 10.5, 10.8, 10.9, 10.10` | `10-...md:252` | Stale pre-renumber refs; should be §§9.3, 9.4, 9.5, 9.8, 9.9, 9.10. |
| `Sections 4.1.2 and 2.1.1` (jury procedure) | `16-...md:11` | §4 is "Knowing and Cognate Terms"; has no §4.1.2. |
| `Sections 1.10 and 2.A` | `04-...md:102` | Neither exists. |
| `§§2.7.1.1–2.3.1.4` | `16-...md:110` | Malformed descending range. |
| `§16.7` cited as immunity abrogation | `18-...md:1058` | §16.7 is "Construction." |
| `Sections 11.6 or 10.9` | `10-...md:340` | §11.6 does not exist. |

OLRGC will not process a draft with dangling internal citations. This is a half-day fix and must
precede any bill-file opening.

---

# 1. DEPENDENCY GRAPH

## 1.1 The four dependency hubs

Every operative provision in the bill hangs off one or more of:

| Hub | Location | What depends on it |
|---|---|---|
| **§1.1.1 Government Actor** | `02-...md:9-229` | **Universal.** Every offense in the Act. "government actor" appears 207× in §1, 78× in §17, 60× in §2. |
| **§3 Mens Rea** | `04-...md:1-107` | Supplies the four-level ladder (negligent/reckless/intentional/malicious) and the tier-elevation rule at `04-...md:52-55`. §17.26 (`18-...md:1119`) makes every §17 classification derivative of it. |
| **§5.1 Immunity abrogation** + **§5.6 enhancements** | `06-...md:5-64`, `06-...md:110-138` | §5.6 is cited 18× in §1 alone. Some offenses cannot even be *graded* without it — §1.1.49 at `02-...md:2687` says the offense is "elevated to a Class 1 felony **under Section 5.6 enhancements**." |
| **§9 Citizen Council** | `10-...md:1-499` | The bill's only enforcement engine independent of the existing prosecutor. Cited 22× in §1, 17× in §17, 19× in §2. |

`sections/18-...md:5` states the dependency for the whole of §17 in one sentence:

> "The criminal and civil mens rea framework of **Section 3** governs each offense in this Section.
> The penalty enhancements of **Section 5.6** apply in full. The **Citizen Council** activation,
> investigation, and prosecution mechanisms of **Section 9** apply without modification. The
> no-immunity rule of **Section 5.1** applies to every offense in this Section."

## 1.2 Dependency table — representative provisions

`FS` = free-standing (needs only §1.1.1 + a Utah penalty class). `D` = dependent.
Every row implicitly requires §1.1.1 and the §0.1 penalty remap; those are not counted as
dependencies because they are one-time global fixes.

| Provision | §1.1.1 | §3 | §5.1 | §5.6 | §9 | Verdict | Evidence |
|---|:--:|:--:|:--:|:--:|:--:|---|---|
| §2.8.2 Badge Display Failure | ✓ | — | — | — | — | **FS** | Self-contained elements + own classification, `03-...md:858-871` |
| §2.8.3 Unrecorded Enforcement Contact | ✓ | — | — | — | — | **FS** | `03-...md:873-887` |
| §2.8.3A Mandatory Recording | ✓ | — | — | — | — | **FS** | Entity-level penalty stated inline, `03-...md:889-920` |
| §2.8.4 Custodial Medical Abandonment | ✓ | — | — | — | — | **FS** | `03-...md:922-930` |
| §2.13.4 Entity Training Liability | ✓ | — | — | — | — | **FS** | `03-...md:1626-1630` |
| §17.9A Complaint Intake Refusal | ✓ | — | — | — | — | **FS** | `18-...md:348-368` |
| §17.9B Policy Shield Statement | ✓ | — | — | — | — | **FS** | `18-...md:370-389` |
| §17.9D Recording-Right Interference | ✓ | — | — | — | — | **FS** | Own 4-tier classification, `18-...md:447-453` |
| §17.9E Revenue Extraction | ✓ | — | — | — | — | **FS** | `18-...md:471-475` |
| §17.9F Property Punishment w/o Conviction | ✓ | — | — | — | — | **FS** | `18-...md:481-486` |
| §17.9G Protected-Speech Suppression | ✓ | — | — | — | — | **FS** | `18-...md:492-496` |
| §17.15C Rights Dismissal Infraction | ✓ | — | — | — | — | **FS** | `18-...md:659-665` |
| §17.15D False Authority Gesture | ✓ | — | — | — | — | **FS** | `18-...md:668-674` |
| §17.20 Budget Concealment | ✓ | — | — | — | — | **FS** | `18-...md:740-747` |
| §17.21 Preferential Contracting | ✓ | — | — | — | — | **FS** | `18-...md:750-756` |
| §17.24E Eminent-Domain Valuation | ✓ | — | — | ~ | — | **FS** | Own elements + rule, `18-...md:870-899`; §5.6 only for aggravation |
| §11.4.1 POST Decertification | ✓ | — | — | — | ~ | **FS** | `12-...md:36-45`; §9 only for the capture backstop at §11.4.5 |
| §1.1.49 Unlawful Arrest by Warrant | ✓ | ~ | — | **✓** | — | **D** | Grading requires §5.6, `02-...md:2687` |
| §1.1.50 Trespass (Gov't Context) | ✓ | ~ | — | ✓ | — | **D** | `02-...md:2743-2755` |
| §1.1.51 General Warrant | ✓ | ~ | — | ✓ | — | **D** | `02-...md:2917-2938` |
| §1.1.53 Gov't Gang Activity | ✓ | ~ | — | ✓ | — | **D** | `02-...md:3114-3128`; best code anchor in the bill (76-9-802) |
| §1.1.1 Government Actor | — | — | — | — | — | **root** | `02-...md:9` |
| §1.1.16 Mental-State Terms | — | **✓** | — | — | — | **D** | Pure referral to §§3–4, `02-...md:917-920` |
| §1.1.44 Corruption | ✓ | ✓ | — | — | — | **D** | Umbrella definition, **no penalty at all**, `02-...md:1985-2021` |
| §1.1.45 Non-Republican Gov't Act | ✓ | ✓ | — | ✓ | **✓** | **D** | Citizen Council is the **trier of fact**, `02-...md:2039` — unadjudicable without §9 |
| §1.1.48 Arbitrary Action | ✓ | ✓ | — | — | ~ | **D** | Evidentiary rule with **no offense of its own**; operates only through 10 enumerated offenses at `02-...md:2586-2594` |
| §2.5.3 Juror Crimes | ✓ | ✓ | — | ✓ | — | **D** | Routes through §1.1.1.1, §1.1.3, §1.1.4, §12.1 — `03-...md:336-361` |
| §2.7.1.4 Judicial Duty | ✓ | **✓** | **✓** | — | **✓** | **D** | Densest node in the bill: cites §3, §5.1, §9, §9.5 in four consecutive lines, `03-...md:742-745` |
| §2.11.8 Caseload / State Liability | ✓ | — | ✓ | — | ✓ | **D** | **No penalty of its own**; pure cross-reference shell, `03-...md:1456-1465` |
| §2.11.9 Parity of Arms | ✓ | — | — | — | — | **D** | No classification; remedy is presumptive vacatur, `03-...md:1513-1516` |
| §17.1 Civic Breach of Trust | ✓ | **✓** | — | ✓ | — | **D** | Penalty **is** the §3.3/3.4/3.5 cross-reference, `18-...md:36-40` |
| §17.5 Gross Dereliction | ✓ | **✓** | — | ✓ | — | **D** | `18-...md:223-225` |
| §17.13 Investigative Negligence | ✓ | **✓** | — | ✓ | — | **D** | `18-...md:623-625` |
| §17.26 Penalty Structure | — | **✓** | — | — | — | **D** | Pure cross-reference, `18-...md:1119-1130` |
| §17.27 Aggravating Factors | — | — | — | **✓** | — | **D** | Pure cross-reference to §5.6, `18-...md:1132-1144` |
| §16 Nullity | ✓ | — | ✓ | — | **✓** | **D** | §16.4 makes the Council a determiner of nullity, `17-...md:137` |
| §15 Const. Amendment | ✓ | — | ✓ | — | **✓** | **D** | Entrenchment protects §9 by name, `16-...md:26` |

## 1.3 Headline dependency findings

1. **~30 of 54 §17 offenses and ~20 of 45 penalty-bearing §2 provisions are structurally
   free-standing.** They carry their own elements and their own stated classification. Once the
   penalty grammar is remapped (§0.1) and §1.1.1 travels with them as a definitions section, they
   can be lifted out individually as ordinary Utah code amendments. **This is the single most
   important structural fact for the split strategy.**

2. **The §1.1 umbrella offenses are the *least* severable part of the bill**, which is the inverse
   of what their prominence suggests. Only 7 of 41 penalty-bearing subsections state "government
   actor" as a numbered element pointing to §1.1.1 (`02-...md:447, 603, 631, 2743, 2917, 3013,
   3114`); the other ~34 rely on it implicitly. Their grading is unresolvable without §5.6, and the
   "-ism" offenses (§§1.1.26–1.1.43) are 18 near-identical Class 2→Class 1→capital ladders
   distinguished only by narrative definition. They cannot be carried individually.

3. **§1.1.1 is a genuine, well-drafted, reusable definitions section** — and it is the one piece
   every bill in the split needs. `02-...md:11-65` covers federal/law-enforcement/judicial/
   executive/regulatory/education plus a delegation anti-evasion clause at `:65` that is the
   strongest single paragraph in the Act. **Exception:** `02-...md:90` lists the **"Federal
   government and the United States as an entity"** as a government actor. That clause alone makes
   §1.1.1 unenactable as written and must be struck (see Tier D-6).

4. **§9 is the load-bearing enforcement engine and simultaneously the hardest thing in the bill to
   enact.** Every provision that depends on §9 inherits §9's tier. Provisions that do *not* depend
   on §9 are free to move years earlier. Sorting by §9-dependency is the cleanest available cut line
   for sequencing.

5. **Three provisions have no operative penalty at all** and cannot be enacted as offenses in any
   form: §1.1.44 Corruption (`02-...md:1985`), §1.1.48 Arbitrary Action (`02-...md:2534`), and
   §2.11.8 (`03-...md:1410`). §1.1.48 is best re-cast as what it actually is — an **evidentiary
   presumption**, which is independently enactable and useful.

---

# 2. SEVERABILITY TIERS

Universal precondition for every tier: the §0.1 penalty remap and the §0.4 reference sweep.

## TIER A — Enactable now, standalone statute, no constitutional amendment, plausible R sponsor

| # | Provision | Source | Utah Code target |
|---|---|---|---|
| A1 | §17.9D Recording-Right Interference | `18-...md:426-459` | New section, Title 76 Ch 8 |
| A2 | §17.9F Property Punishment Without Conviction | `18-...md:477-486` | Title 24 (Forfeiture) |
| A3 | §2.8.2 Badge Display Failure | `03-...md:858-871` | New section, Title 77 Ch 7 |
| A4 | §17.24E Eminent-Domain Valuation Manipulation | `18-...md:864-899` | Title 78B Ch 6 Pt 5 |
| A5 | §11.4.1 POST Automatic Decertification Referral | `12-...md:36-45` | § 53-6-211 |
| A6 | §17.9E Revenue Extraction Under Color of Law | `18-...md:461-475` | New section + Title 10/17 |
| A7 | §17.9A Complaint Intake Refusal | `18-...md:348-368` | New section, Title 76 Ch 8 |
| A8 | §1.1.49 Unlawful Arrest — Failure to Produce Warrant | `02-...md:2617-2704` | § 77-7-6 |
| A9 | §17.20 Budget Concealment / §17.21 Preferential Contracting | `18-...md:740-757` | Title 63G Ch 6a |
| A10 | §17.9B Policy Shield Statement | `18-...md:370-389` | New section, Title 76 Ch 8 |
| A11 | §17.15D False Authority Gesture | `18-...md:668-674` | New section, Title 76 Ch 8 |
| A12 | §17.8 Oath Verification Citation | `18-...md:298-328` | New section, Title 52 |
| A13 | §1.1.1 Government Actor (as a definitions section) | `02-...md:9-229` | Definitions section for each carrier bill — **minus `:90`** |
| A14 | §1.1.48 Arbitrary Action, re-cast as evidentiary presumption | `02-...md:2534-2616` | Title 78B Ch 1 or per-bill |
| A15 | §17.9C Status-Based Survival Enforcement | `18-...md:391-424` | New section, Title 76 Ch 8 |

**Why these qualify:** each carries its own elements and its own stated penalty tier; each regulates
conduct rather than restructuring an institution; none requires §9; none creates an appropriation;
none reaches a federal actor; none purports to override a court rule.

## TIER B — Enactable as statute, but needs redrafting for Utah Code conventions, preemption, or separation of powers

| # | Provision | Source | Obstacle | Redraft |
|---|---|---|---|---|
| B1 | §5.1 immunity abrogation — **state-law portion only** | `06-...md:5-64` | Statute must operate *on* the Utah Governmental Immunity Act, Title 63G Ch 7, which the bill never cites. As written it also purports to abrogate 11th Amendment and federal immunities (Tier D). | Draft as an express amendment to § 63G-7-301 waiving immunity for a **new state cause of action**, plus a statutory declaration that the federal "clearly established law" test does not apply to that state claim. This is the *Spackman* / Colorado SB 20-217 pattern and is squarely within legislative power. |
| B2 | §5.8 No statute of limitations | `06-...md:179-212` | Legislature has plenary SOL authority (Title 76 Ch 1 Pt 3), so this is enactable — but a blanket no-SOL rule extending to negligence-level infractions will not survive committee. The bill **already handles the ex post facto problem correctly** at `06-...md:193-194` via *Stogner v. California*. | Narrow to the top two felony tiers; leave ordinary SOL for the rest. |
| B3 | §10 Retroactive civil applicability | `11-...md:1-37` | Retroactive civil liability against the State with no limitations period is an unbounded exposure; reviving already-expired claims raises due-process problems the bill acknowledges on the criminal side but not the civil. | Prospective-only cause of action + a defined lookback window (e.g. 6 years) + claim-notice under § 63G-7-401. |
| B4 | §2.8.3A Mandatory Recording | `03-...md:889-920` | **Utah already has Title 77 Chapter 7a (body-worn cameras)** — the bill does not cite it. 7-year retention + cryptographic integrity + felony liability against agencies that fail to fund it. | Amend Ch 7a. Keep the citizen-access right and the 10-day fulfillment clock; drop entity criminal liability to civil penalty; phase retention. |
| B5 | §11.1 Pension forfeiture | `12-...md:5-13` | Vested pension rights implicate Utah Const. Art. I §18 and Title 49 contract expectations; URS actuarial note. | Apply to **service credit earned after the effective date only**; retain full forfeiture of contracts, grants, and future public funds (which have no vested-rights problem). |
| B6 | §11.2 Permanent ineligibility — **appointed/certified positions** | `12-...md:15-23` | Fine for appointed and licensed roles. The **elected-office** bar is Tier C. | Split the provision. |
| B7 | §2.5.1 / §2.5.2 Jury provisions | `03-...md:164-309` | Overrides Rules of Criminal Procedure. **Utah Const. Art. VIII §4 permits the Legislature to amend Supreme Court rules by a 2/3 vote of both houses** — so this is statutorily reachable, at a high bar. Convictions void without juror writings (`03-...md:274`) creates a retroactive vacatur wave. | Carry as a 2/3 rules-amendment bill; make juror writings prospective and non-jurisdictional (failure = reviewable error, not automatic vacatur). |
| B8 | §2.9 Constitutional Objection Duty | `03-...md:1087-1125` | Sound concept; depends on §16.4/§16.5 and §9.14 for its definitions. | Self-contain the definitions; drop the §9 route. |
| B9 | §17.23 / §17.24 / §17.24F Regulatory & Emergency Power Abuse | `18-...md:771-792, 901-953` | Overlaps **Utah's 2021 SB 195** emergency-powers limits, which the bill does not cite. | Draft as amendments to Title 53 Ch 2a. Strong political fit — Utah has already legislated here. |
| B10 | §1.1.53 Government Gang Activity | `02-...md:3054-3149` | Structurally the closest to ready in the entire bill — it imports § 76-9-802 deliberately. Needs the predicate "pattern of unlawful activity" list conformed to § 76-10-1602, and the fictional "Springvale Police Department" hypothetical at `:3075` struck. | Amend Title 76 Ch 9 Pt 8 directly. |
| B11 | §2.11.8 / §2.11.9 Public defense caseload & parity | `03-...md:1410-1528` | Enactable in form (Utah has the Indigent Defense Commission, Title 78B Ch 22) but carries the largest fiscal note in the bill by an order of magnitude. See §4.3. | Caseload **standards + reporting** first; parity as an aspirational finding with a study. Funding follows data in Utah, not the reverse. |
| B12 | §17.4 / §17.4A / §17.4B Record distortion, spoliation, forensic corruption | `18-...md:143-195` | Overlaps existing § 76-8-511 (falsification of government record) and § 76-8-510.5. | Draft as amendments to those sections rather than new offenses. |
| B13 | §2.6.2 Prosecutorial offenses | `03-...md:492-651` | Eight new felonies aimed at charging decisions. Survivable if tied to objectively verifiable conduct (suppression, false representation to a court) rather than charging judgment. | Keep §2.6.2.3 and §2.6.2.4; convert §2.6.2.1/.2 (charging without PC, overcharging) to civil/disciplinary. |
| B14 | §12.4 Other resulting deaths | `13-...md:22` | Sound; just needs routing. | Cross-reference Title 76 Ch 5 + § 76-3-203.1 official-capacity aggravator. |

## TIER C — Requires a Utah constitutional amendment (Art. XXIII §1: 2/3 of both chambers + majority popular vote)

| # | Provision | Source | Constitutional collision |
|---|---|---|---|
| C1 | §9.3 / §9.11 Joint Declaration with **indictment effect** | `10-...md:21-32, 226-239` | Utah Const. **Art. I §13** governs commencement of prosecutions by information or indictment; a private body cannot commence a criminal action. |
| C2 | §9.8.2 / §9.8.3 Council-issued **warrants and arrests** | `10-...md:117-147` | Utah Const. **Art. I §14** requires warrants issue upon probable cause supported by oath — and by neutral magistrate. §9.8.2 keeps a judge in the loop (good), but §9.8.1 does not. |
| C3 | §9.8.1 Declaration of Production **without judicial process**, Sheriff-enforced | `10-...md:82-116` | Compulsory process without judicial authorization; **Art. I §14** and Art. VIII. |
| C4 | §9.4 No judicial gatekeeping / §9.5 mandatory prosecution | `10-...md:34-58` | **Art. VIII §1** vests judicial power in the courts; stripping courts of authority to quash a charging instrument, and eliminating prosecutorial discretion, restructures two branches. |
| C5 | §9.14 Logical Consistency Review — court **must** convene and may not decline | `10-...md:342-391` | Compels the exercise of judicial power on a private body's motion; **Art. VIII**. |
| C6 | §9.15 **Conviction Review** — 18 citizens nullify convictions, spare death sentences, restore rights | `10-...md:393-445` | This is the **pardon and commutation power**, vested exclusively in the Board of Pardons and Parole by Utah Const. **Art. VII §12**. Amendable, but only by amendment. |
| C7 | §11.2 Permanent ineligibility for **elected** office | `12-...md:22` | Utah Const. **Art. IV §6** fixes officeholder disqualification (treason / crimes against the elective franchise, until restored). A broader statutory permanent bar needs an amendment. |
| C8 | §15.1 "shall operate as an amendment to the Constitution of the State of Utah" | `16-...md:5` | A statute cannot amend the constitution by declaring that it does. Must go through **Art. XXIII §1**. |
| C9 | §16.1 / §16.4 Citizen Council determines instruments "null and void," binding statewide | `17-...md:5-11, 132-140` | Judicial review is **Art. VIII** power. (Federal instruments = Tier D.) |
| C10 | §2.3.8 Criminal liability for one-way hearsay rulings | `03-...md:134-147` | Criminalizing a judge's evidentiary ruling; **Art. VIII §4** rulemaking + judicial-power collision. |
| C11 | §5.1 abrogation of **judicial immunity for Utah state judges, criminal side** | `06-...md:19-32` | Civil abrogation is arguably B1. Criminal liability for the act of ruling is an Art. VIII structural change. |

**Sequencing note:** C1–C5 and C9 are one coherent amendment ("citizen oversight authority"). C6 is a
separate amendment (pardon power). C7 is a third and is small enough to ride alone. Utah has amended
its constitution frequently; a narrow, well-drafted single-subject amendment is a realistic ask. A
combined amendment carrying all of §9 is not.

## TIER D — Structurally unenactable by a state legislature as written

### D1 — §17.25 / §17.25A / §17.25B: state felonies for conduct of members of Congress and their staff
`sections/18-...md:1001-1118`

**What it does:** makes it a Class 2 felony (escalating to "capital offense") to give "a materially
misleading statement" or "an evasive non-answer" to the U.S. Congress (`:1011`), expressly applying
"without regard to... whether the person was under oath" (`:1077`) and where testimony was given in
Washington, D.C. (`:1067`); §17.25A criminalizes a **sitting U.S. Senator's or Representative's**
handling of a constituent complaint (`:1083`).

**Why structurally blocked:**
1. **U.S. Const. Art. I §6 (Speech or Debate Clause)** — absolute federal immunity for legislative
   acts. A state cannot abrogate a federal constitutional immunity; `:1058`'s attempt to "abrogate"
   *In re Neagle* is a nullity.
2. **Supremacy Clause / intergovernmental immunity** — *In re Neagle*, 135 U.S. 1 (1890);
   *Tennessee v. Davis*, 100 U.S. 257 (1880). A state may not criminalize the performance of federal
   office. Federal-officer removal, 28 U.S.C. § 1442, moves any such prosecution to federal court
   where it will be dismissed.
3. **Extraterritoriality** — Utah Code § 76-1-201 limits Utah's criminal jurisdiction to conduct or
   result within the state. `:1067` expressly disclaims that limit.

**Nearest enactable thing preserving the objective** ("officials must not lie to the people's
representatives, and must not bury constituent complaints"):
- A state offense for **false or misleading sworn testimony to a Utah legislative committee or Utah
  state agency** — squarely within state power, and parallel to existing Utah Code § 76-8-502
  (false statement) / § 76-8-503 (inconsistent statements). Utah legislative committees have
  subpoena power under Title 36 Ch 12; this gives it teeth.
- A **statutory constituent-response duty with a civil penalty for Utah state and local officials**
  (which §17.9H already drafts well at `18-...md:498-507`).
- A **public reporting requirement**: the Utah AG publishes an annual register of referrals made to
  federal authorities and their disposition. Creates the accountability record without the
  jurisdictional defect.

### D2 — Abrogation of federal-officer and federal-judicial immunity; the phantom §14.7
`sections/16-...md:83-128`; `06-...md:261-263`; `12-...md:38, 49`; `18-...md:996`

**What it does:** §15.7 declares a federal judge who nullifies the Act without identifying a
preemptive federal provision to be chargeable under Utah law as Anarchy, Cabalism, Racketeering, or
Treason (`16-...md:87-93`), "personally liable, civilly and criminally" (`:97`), with judicial
immunity abrogated (`:128`). §5.9.6 subjects federal officers to Utah pretrial-release conditions.
§11.4.1/.2 refer federal officers and federal attorneys for state decertification and disbarment.
All five hang on **§14.7, which does not exist.**

**Why structurally blocked:** Supremacy Clause; intergovernmental immunity; *In re Neagle*;
28 U.S.C. § 1442 removal; and a state statute purporting to "abrogate" a federal immunity has no
operative effect on a federal court. The dual-sovereignty cases cited at `16-...md:118-122`
(*Lanza*, *Abbate*, *Bartkus*, *Heath*, *Gamble*) establish that both sovereigns *may* prosecute the
same **conduct** — they do not establish that a state may prosecute a federal officer for the
**performance of federal duty**, which is the opposite proposition.

**Nearest enactable thing preserving the objective** ("federal actors operating in Utah must be
accountable to Utahns"):
- **Anti-commandeering runs both ways** (*Printz v. United States*, 521 U.S. 898 (1997)): Utah may
  categorically **withhold state and local personnel, facilities, data, and funds** from federal
  enforcement activity that would violate the Act's standards. This is the strongest lever a state
  actually has, and Utah has used the pattern before.
- **POST-certification conditions**: any Utah-certified officer deputized to a federal task force
  must comply with Utah standards (recording, warrant production, use of force) **as a condition of
  retaining Utah certification**. This reaches ~all the joint-task-force conduct the author cares
  about, through a lever no federal court can strip.
- A **state civil cause of action against Utah state and local actors** who knowingly assist federal
  conduct that would be unlawful if performed by a Utah officer.
- A **state-court declaratory action** on whether a federal instrument is enforceable *by Utah
  officers*, which is a question of Utah law.

### D3 — §15.2 Entrenchment
`sections/16-...md:19-33`

**What it does:** provides that the Act "shall not be amended, altered, repealed, narrowed, or
interpreted" adversely on nine enumerated grounds, and that any such amendment is "void ab initio"
(`:33`); §15.4 gives every citizen standing to void it (`:50-55`); §15.5 makes sponsoring such an
amendment chargeable as Racketeering or Treason (`:55`).

**Why structurally blocked:** a legislature cannot bind a successor legislature — the most settled
proposition in Anglo-American legislative practice. Enacted as a statute it is void on adoption.
Enacted as a constitutional amendment it remains amendable by the same Art. XXIII §1 process that
created it; a constitutional provision purporting to make itself unamendable is unenforceable by the
body it purports to bind. §15.5, which criminalizes **legislating**, additionally collides with the
Utah legislative-immunity provision (Utah Const. Art. VI §8) and with the First Amendment rights of
sponsors and voters.

**Nearest enactable thing preserving the objective** ("this cannot be quietly gutted later"):
1. **Put the core protections in the constitution** via Art. XXIII §1. This *is* the entrenchment —
   it raises the repeal bar from a simple majority to 2/3 of both chambers plus a popular vote.
   Functionally that is very strong protection; most statutes have none.
2. **A binding rule of construction** directed at courts — "this chapter shall be liberally
   construed in favor of the citizen; no provision shall be construed to restore any immunity
   abrogated herein absent express repeal" — is fully enforceable and delivers most of §15.2(c)'s
   objective. The bill already writes this well at `16-...md:63-69`.
3. **A non-severability clause on the immunity core** — if a court strikes the immunity waiver, the
   accompanying grants of authority fall with it. That makes gutting costly rather than free.
4. **A mandatory sunset-review-and-report** rather than a repeal ban: forces any future narrowing
   onto the public record. Political entrenchment, which is the only durable kind.

### D4 — All 109 "capital offense" classifications
Detailed at §0.2 above. Blocked by *Kennedy v. Louisiana*. Fix: remap to first degree felony; route
actual deaths to Title 76 Ch 5 with an official-capacity aggravator.

### D5 — §2.5.3 Criminal liability of jurors, including federal jurors
`sections/03-...md:310-364`

**What it does:** a juror who participates in a wrongful conviction commits Battery, a Class 2
felony (`:342`); two or more convicting jurors "shall be charged as a conspiracy" (`:336`); it
reaches "state **and federal** grand juries... **and federal** petit juries" (`:324`); "a federal
forum... does not immunize a juror" (`:332`); and **FRE 606(b) "shall not bar" prosecution** (`:353`).

**Why structurally blocked:** (a) a state cannot override the Federal Rules of Evidence or reach
federal jurors — Supremacy Clause; (b) criminalizing a juror's verdict eliminates the jury as an
institution, since no rational person would serve, which collides with the Art. I §10 jury guarantee
the Act elsewhere relies on; (c) juror deliberation privilege is embedded in Utah R. Evid. 606(b),
amendable only by 2/3 under Art. VIII §4.

**Nearest enactable thing preserving the objective** ("jurors must be able to deliberate honestly
and must not be steered into a wrongful conviction"): the bill's own §2.5.1 already contains the
enactable version. Carry the **juror rights** — written instructions on request, the right to ask
questions, the right to adequate deliberation time, access to the trial record — as a Title 78B
Ch 1 amendment (2/3 rules vote), plus a **new offense aimed at the officials** who mislead a jury
(which §2.5.2 at `03-...md:291` already drafts: the judge who seats a non-documenting juror). Point
the criminal liability at the state actor, not at the citizen in the jury box. This preserves the
author's actual target and removes the structural defect.

### D6 — §1.1.1.2 listing the federal government as a liable entity
`sections/02-...md:90`

Lists "**Federal government** and the United States as an entity" and "**Federal departments,
agencies, bureaus...** (e.g., Justice, Treasury, HHS, DHS)" as government actors subject to Utah
criminal prosecution, entity fines, forfeiture, and at `:140` **"dissolution, restructuring, or
receivership."** Blocked by sovereign immunity of the United States and the Supremacy Clause. A
state court cannot place a federal agency in receivership.

**Fix:** strike the federal entity bullets from `02-...md:90-97`. Retain the entire state, county,
municipal, special-district, and school-district apparatus, which is where nearly all of the
conduct the Act targets actually occurs, and which Utah may regulate freely. **This is a two-line
deletion that converts §1.1.1 from unenactable to enactable**, and §1.1.1 is the definitions section
every bill in the split needs.

### D7 — §16.1 nullity of **federal** instruments
`sections/17-...md:5-11` declares federal government instruments "null and void... within the State
of Utah." Blocked by the Supremacy Clause. **Fix:** limit §16 to **state and local** instruments,
where the doctrine is ordinary Utah administrative law (Title 63G Ch 3), and add a **fast-track
declaratory judgment action** in state district court with fee waiver and a decision deadline — the
constitutionally viable version of citizen-initiated nullification.

### D8 — §9.10 Council direction of federal grand jury practice
`sections/10-...md:199` directs Joint Declarations to the U.S. Attorney "for presentation to a
federal grand jury," and where the U.S. Attorney declines, "filed directly for grand-jury
presentation." No such private route exists under federal law; a state statute cannot create one.
**Fix:** a state **referral mechanism** — the Utah AG must receive, log, forward, and publicly report
the disposition of citizen referrals alleging federal offenses. Creates the accountability record
within state competence.

### D9 — §9.12 mandatory distribution of the full statute to every inmate within 24 hours
`sections/10-...md:258-271`. Not legally blocked — **operationally** blocked, and it makes the
criminal penalty at `:271` (Class 2 felony for failure to distribute) unenforceable in practice. The
Act is ~130,000 words / ~900KB, roughly 500 printed pages, and must reach every inmate of "every
federal, state, county, or municipal" facility within 24 hours of intake, in translation, plus the
federal facilities Utah cannot bind. **Fix:** require a **plain-language rights summary** (2 pages)
at intake plus full-text access in the law library and on the facility tablet system. Preserves the
objective at ~1% of the cost and removes the federal-facility defect.

---

# 3. DRAFTING-CONVENTION GAP LIST (OLRGC format)

Utah bills drafted by the Office of Legislative Research and General Counsel carry a fixed
front-end. Measured presence in this draft:

| Required OLRGC component | Present? | Evidence |
|---|:--:|---|
| Long title | **No** | `sections/00-front-matter.md:1-10` is a project title block with three alternate working titles |
| General Description | **No** | 0 occurrences repo-wide |
| Highlighted Provisions | **No** | 0 occurrences |
| Money Appropriated in this Bill | **No** | 0 occurrences |
| Other Special Clauses | **No** | 0 occurrences |
| Utah Code Sections Affected (AMENDS/ENACTS/REPEALS AND REENACTS) | **No** | 0 occurrences of any of the three keywords |
| `Be it enacted by the Legislature of the state of Utah:` | **No** | 0 occurrences |
| Numbered code sections in strikeout/underline | **No** | 0 occurrences of `is amended to read` / `is enacted to read` |
| Effective date | **Placeholder** | `sections/15-section-14-effective-date.md:3` reads literally `[DATE TO BE DETERMINED]` |
| Appropriation | **No** | `appropriat*` appears 13× repo-wide, never as an appropriation clause, despite §§2.8.3A, 2.11.9, 2.13 mandating statewide spending |

**Score: 0 of 8 mandatory front-end components; effective date is an unfilled placeholder.**

## Specific divergences with citations

**1. Narrative preamble presented as operative text (44KB / 339 lines).**
`sections/01-statement-of-intent.md` carries headings including "Why It Is Called 'Checkmate'"
(`:15`), "The wall" (`:134`), "The Moral Line" (`:307`). It is not severable decoration — it is
**incorporated by reference as binding**: "Binding Rule of Construction" (`:319`), and provisions
throughout defer to it (`02-...md:2611` defines the "abundance of care" standard *only* by reference
to it; `16-...md:67` and `17-...md:170` make it a rule of construction). **Fix:** convert to
"General Description" + legislative findings section (Utah drafting does permit a findings section;
it does not permit 44KB of narrative).

**2. Rhetorical section headings.** OLRGC headings are nouns describing content. The bill uses verbs
describing the drafter's project: "Fixing the Immunity Gap" (`06-...md:5`), "Fixing the Personal
Accountability Gap" (`:66`), "Fixing the Official-Capacity Rights Gap" (`:71`), "Fixing the
Private-Capacity Jurisdiction Gap" (`:84`), "Fixing the Equal-Application Gap" (`:93`), "Fixing the
Penalty Gap" (`:110`), "Fixing the Business and Employee Reachability Gap" (`:140`) — **7 in one
file.** Also "The Accountability Gap This Act Closes" (`:60`).

**3. Definitions that argue rather than define.**
- `02-...md:3077`: "**No person should be committing crimes to benefit government actors or
  government institutions. That is gang activity.**" — normative assertion inside an offense's
  operative premise.
- `02-...md:1460`: "Operation Checkmate is, at its constitutional foundation, an **anti-aristocratic
  instrument**." — the bill characterizing itself inside §1.1.31's definitional text.
- `02-...md:1840`: "Kleptocracy is the practice of treating the government as a theft enterprise..."
  followed by the penalty stated in narrative voice.
- `06-...md:64`: "...where a judge can sterilize a child without due process... and answer to no
  one, while a citizen who jaywalks... is fully liable."
- `06-...md:26`: "**ENDS HERE**" as operative statutory text.

**4. Worked hypotheticals and rebuttal-style prose inside operative provisions.**
- `02-...md:3075`: "Consider, for illustration, a fictional **Springvale Police Department**" — a
  fictional department inside the operative premise of a top-tier felony.
- `02-...md:280`: "This Act does not create a 'damned if you do, damned if you don't' exposure...
  The supposed catch-22 is illusory" — the drafter answering an anticipated objection in statutory
  text.
- Quoted colloquial speech as statutory text: `02-...md:2678` ("dispatch told me there was a
  warrant"), `:2681` ("this is how we always do it"), `:3135` ("This is how the department
  operates"), `18-...md:457` ("no filming," "officer safety," "court decorum").
- `sections/17-...md:46-99`: a **54-line essay on motor-vehicle insurance** inside §16.1A's
  definitions, including analysis of the Restatement (Second) of Contracts, *Lochner*, *Coppage*,
  and the Thirteenth Amendment.

**5. Undefined terms doing operative work.**

| Term | Uses | Defined? |
|---|---|---|
| `Class 1 / 2 / 3 felony` | 228 | **No** — nowhere in the repository |
| `capital offense` | 109 | **No** |
| `citizen` | 486 | **No** — the class the entire Act protects has no definition |
| `operative reality` | 24 | **No** — yet it is the load-bearing test at `02-...md:252` and `:3058` |
| `abundance of care` | 10 | Only by reference to the non-operative Statement of Intent (`02-...md:2611`) |
| `protected right` | 15 | §1.1.5 gives illustrations (`02-...md:389`), no closed definition |

**6. Missing code anchors.** 12 unique real Utah Code sections in ~130,000 words, zero as amendment
targets (see §0.3). The bill never states where in the Utah Code any of its ~140 new offenses would
be codified.

**7. Penalty levels not tied to § 76-3-203/204.** 392 designations, 0 in Utah grammar (see §0.1).

**8. Dangling internal cross-references.** At least 8 families (see §0.4).

**9. Blockquote markup as the operative-text marker.** The bill uses Markdown `>` throughout to mark
its most important operative rules (e.g. `06-...md:7`, `10-...md:5`, `11-...md:5`, `16-...md:5`).
This has no legal meaning and does not survive conversion to Utah bill format; the operative/
explanatory distinction it is carrying will be lost unless restructured into numbered subsections.

**10. Non-sequential and missing section numbers.** Sections 6, 7, 8 absent; §17 missing Subparts C
and F and §§17.15A/B, 17.16; `03-...md:1584` places §2.10.7 *after* §2.12.3, and the §2.10 sequence
runs 2.10.6 → 2.10.8.

**11. No fiscal note, no appropriation, no funding source** despite statewide equipment, storage,
training, jury-facility, and public-defense parity mandates (see §4).

**12. A `[DATE TO BE DETERMINED]` placeholder** in the effective-date section
(`sections/15-...md:3`).

---

# 4. PENALTY & FISCAL SURFACE

## 4.1 Complete penalty inventory

**Criminal.** ~140 distinct new offenses: 41 in §1.1, 54 in §17, ~45 penalty-bearing in §2, plus
§9.9 (Class 2 felony for Council interference, `10-...md:164`) and §12.1 (capital, `13-...md:5`).
392 penalty designations, all in an invented taxonomy (§0.1). Note the **default felony floor** at
`03-...md:25`: any unclassified affirmative duty in §2 defaults to a Class 3 felony.

**Fines.** Up to $1,000 (§17.7, `18-...md:294`); mandatory $300 to a "citizen-rights education fund
(or successor account designated by statute)" that is **never created, named, or capitalized**
(§17.8, `18-...md:314`); up to $5,000 per violation (§17.9, `18-...md:344`).

**Civil.** Compensatory damages, restitution, attorney fees, injunctive and declaratory relief
(§5.7.1–5.7.2, `06-...md:150, 158`); independent employee standing (`06-...md:154`); retroactive
civil action with no limitations period (§10, `11-...md:5, 15`).

**Forfeiture (§11).** Pensions and retirement benefits, state health/welfare benefits, service
credits, honors, existing government contracts, **future eligibility** for any contract/grant/
subsidy/license, subcontracting and consulting relationships (`12-...md:5-13`).

**Disqualification.** Permanent ineligibility for any law-enforcement, judicial, prosecutorial,
regulatory, or **elected** office (§11.2, `12-...md:17-23`).

**Professional.** Automatic POST decertification on 90-day agency inaction (`12-...md:43`);
presumption of disbarment (`12-...md:52`); automatic recommendation of judicial removal
(`12-...md:65`); interstate transmission to the National Decertification Index and ABA data bank
(`12-...md:44, 55`).

**Entity-level.** Fines and forfeiture from general funds, disqualification from contracts,
court-ordered structural reform and monitorships, and **"dissolution, restructuring, or
receivership"** (`02-...md:136-140`); **absolute bar on indemnification** notwithstanding any
contract, CBA, statute, or policy (`02-...md:144`).

**Employment.** Unpaid administrative leave pretrial (`06-...md:251`); surrender of badge,
credentials, and firearms (`06-...md:226, 257`); rebuttable presumption of pretrial detention for
top-tier offenses (`06-...md:239`).

## 4.2 Provisions that draw a six- or seven-figure (or indeterminate) fiscal note

Ranked by note size. In Utah, an **"indeterminate but potentially significant"** note is frequently
more fatal than a large but bounded one, because it cannot be budgeted around.

**1. §2.11.9 Parity of Arms — the single largest item in the bill.** `03-...md:1487-1528`.
Requires that "the **aggregate funding for public defense within a jurisdiction shall be no less
than the aggregate funding for prosecution** within that jurisdiction" (`:1505`), plus equal
attorneys, investigators, expert funding, forensic capacity, and paralegal support (`:1499-1504`).
`:1522` forecloses the obvious defense: "'Resource constraints' is not a defense; if the State
cannot fund parity at the current charging volume, the State must reduce charging volume,
reallocate funds, or accept the dismissal of cases." Combined with §2.11.8's caseload caps
(`:1431`) and court-ordered funding of additional counsel (`:1447`), and non-parity convictions
"presumptively subject to vacatur" (`:1514`). This is a **structural reallocation of the entire
state and county criminal-justice budget**. It will not receive a note; it will receive a refusal to
score. **Carrying this in the same bill as anything else kills that bill.**

**2. §2.8.3A Mandatory Recording.** `03-...md:889-920`. Universal recording equipment for every
actor authorized to detain, search, cite, arrest, use force, intake complaints, or remove children —
expressly including **code-enforcement officers, school resource officers, and school officials**
(`:891`), with the State, every municipality, county, and agency required to fund it (`:895`);
**7-year minimum retention** (`:902`) in "unalterable format with cryptographic integrity
verification" (`:903`); citizen fulfillment within 10 business days without fee (`:908`); in-camera
judicial review on request with the agency bearing the burden per redaction (`:911`). Storage and
fulfillment staffing alone are seven figures annually statewide. `:915-916` then makes an agency's
**failure to fund it** a felony.

**3. §2.5.1 / §2.5.2 Jury administration.** `03-...md:201-202` requires "a **separate room...
available for every juror** who requests one"; `:267` gives each juror "as much time as required...
**no matter how long it takes**"; `:269` requires per-juror access to trial transcripts and exhibits
during trial; `:274` makes convictions lacking full juror writings "not legitimate, is not
enforceable, and shall be **vacated on direct or collateral review**," tied at `:276` to §10
retroactivity with no limitations period. Courthouse capital cost + daily transcript production +
an open-ended retroactive vacatur and retrial wave.

**4. §5.1 + §1.1.1.2 + §10 — unbounded state liability exposure.** Sovereign immunity waived
(`06-...md:56`), entity liability separate and cumulative (`02-...md:130`), no indemnification
(`02-...md:144`), retroactive civil liability (`11-...md:5`) with **no statute of limitations**
(`11-...md:15`), and `03-...md:1480` "A claim of fiscal constraint is not a defense." Utah's Risk
Management Fund would require repricing against an unbounded, unlimited-lookback exposure.
**Indeterminate — the most dangerous kind of note.**

**5. §2.13 Training mandates.** `03-...md:1594-1636`. 8 hours annually (`:1617`) for **every
government actor subject to the Act** — which under §1.1.1 is most of the state and local workforce.
Providers must be independent, "not an organ of the employing agency, not financially controlled by
the employing agency" (`:1618`), which **forecloses in-house POST delivery** and forces procurement;
approved by a new roster function in the Office of the Governor (`:1634`); non-completing actors are
"**temporarily incapacitated** from exercising the powers of the actor's office" (`:1622`) — a direct
workforce-availability cost. Failure to provide is a felony (`:1630`).

**6. §9 Citizen Council operations.** Mandatory prosecution with discretion limited to conflict or
facial insufficiency (`10-...md:53-58`); AG obligation within 30 days (`10-...md:470`);
adjacent-county prosecution (`:471`); Council-appointed special prosecutors paid "from forfeited
funds... or such other funding source as the Act designates" — **which the Act never designates**
(`:482`); Governor's Office annual report (`10-...md:69`); Utah Supreme Court emergency assignment
(`10-...md:495`). Uncapped new prosecution volume, uncapped new defense volume (each prosecuted
official is entitled to counsel), and uncapped court time.

**7. §9.12 Inmate distribution.** `10-...md:258-267`. ~500 printed pages to every inmate of every
facility within 24 hours of intake, in translation, maintained in every facility library. Utah books
well over 100,000 jail admissions annually. Genuine six-figure recurring print cost for a
requirement whose objective can be met for ~1% of that (see D9).

**8. §11.1 Pension forfeiture.** `12-...md:7`. Utah Retirement Systems actuarial note; vested-rights
litigation exposure.

**9. §2.6.1.3 Prosecutor-arranged independent forensic testing.** `03-...md:466` — DNA, ballistics,
fingerprint, toxicology, digital forensics, latent-print re-examination "where the available science
could exonerate," enforced by a default Class 3 felony (`:481`). State crime lab capacity.

## 4.3 Fiscally cheap — fast to pass

Zero or near-zero state cost. These are the fast lane:

| Provision | Source | Cost |
|---|---|---|
| §2.8.2 Badge Display Failure | `03-...md:858` | **Zero** — pure conduct rule |
| §17.9D Recording-Right Interference | `18-...md:426` | **Zero** — prohibition only |
| §17.9B Policy Shield Statement | `18-...md:370` | **Zero** |
| §17.15D False Authority Gesture | `18-...md:668` | **Zero** |
| §17.9A Complaint Intake Refusal | `18-...md:348` | Minimal — logging duty |
| §11.4.1 POST 90-day clock | `12-...md:36` | Minimal — POST already exists and already decertifies |
| §17.8 Oath Verification Citation | `18-...md:298` | Revenue-positive, but **must create the fund** it names at `:314` |
| §17.20 / §17.21 Budget & contracting | `18-...md:740, 750` | Minimal |
| §1.1.49 Warrant production at arrest | `02-...md:2617` | **Zero** |
| §17.9G Protected-Speech Suppression | `18-...md:488` | **Zero** |

**Distinguish fiscal cost from revenue impact — different opposition, different committee.**
§17.9E Revenue Extraction (`18-...md:461`) and §17.9F Property Punishment Without Conviction
(`18-...md:477`) cost the *State* nothing but reduce municipal and agency revenue. Their opponent is
the Utah League of Cities and Towns and sheriffs' associations, not the fiscal analyst. §17.24E
Eminent-Domain Valuation (`18-...md:864`) raises condemnation awards paid by UDOT and
redevelopment agencies — a moderate, bounded note, and a fight with agencies rather than with the
budget.

---

# 5. THE STRONGEST 10

Ranked by probability of passing the 2027 General Session substantially as-is, after the §0.1
penalty remap. Ranking weighs: fiscal note size, §9-independence, existing Utah statutory hook,
whether Utah has legislated in the area before, and breadth of the coalition.

### 1. §17.9D — Recording-Right Interference
`sections/18-section-17-role-specific-public-official-offenses.md:426-459`
**What it does:** establishes a citizen's right to record government actors performing public
duties, and makes it an offense for an official to stop, detain, cite, seize a device from, or
retaliate against a citizen for recording.
**Why a Utah Republican votes for it:** transparency and First Amendment framing with a
zero-dollar note; the Tenth Circuit's *Frasier v. Evans*, 992 F.3d 1003 (2021) held the right was
not clearly established and granted qualified immunity — which is the cleanest possible argument
that **the Legislature must supply the remedy the courts declined to recognize.** Libertas-aligned,
and it draws a genuine left-right coalition, which matters for floor time.
**Amends:** new section in **Utah Code Title 76, Chapter 8** (Offenses Against the Administration of
Government).
**Trim before filing:** drop the judge/court-recording subsection at `:441-452` into a separate
bill — it collides with Utah R. Jud. Admin. 4-401.01 and needs the Art. VIII §4 2/3 vote.

### 2. §17.9F — Property Punishment Without Conviction
`sections/18-...md:477-486`
**What it does:** bars seizure, retention, or forfeiture of property, and imposition of impound/
storage/release costs, absent a criminal conviction tied to the property or clear proof it is
contraband or a direct instrumentality.
**Why a Utah Republican votes for it:** Utah voters passed **Initiative B in 2000** on exactly this
premise; conviction-required forfeiture is the acknowledged next step and has been carried by
Republican sponsors in a majority of states. Property rights are core Utah R territory.
**Amends:** **Utah Code Title 24** (Forfeiture and Disposition of Property), the chapter Initiative B
built.
**Obstacle:** sheriffs' and prosecutors' associations on revenue, not ideology. Budget for that
fight; it is winnable and has been won elsewhere.

### 3. §2.8.2 — Badge Display Failure
`sections/03-section-2-due-process.md:858-871`
**What it does:** requires an officer, on request during non-undercover public enforcement, to give
name, badge or employee number, agency, and chain of command. Infraction; class A misdemeanor on a
second violation within 24 months.
**Why a Utah Republican votes for it:** the smallest possible ask in the entire bill. Zero fiscal
note, infraction-level, and the principle — *you may know who is exercising power over you* — is
difficult to vote against on the record. It already contains its own undercover and life-safety
carve-outs at `:870-871`, which is what kills bills like this elsewhere.
**Amends:** new section in **Utah Code Title 77, Chapter 7** (Arrest, by Whom and How Made).
**Strategic value:** the ideal freshman-legislator vehicle and the ideal proof-of-concept for the
whole series.

### 4. §17.24E — Eminent-Domain Valuation Manipulation
`sections/18-...md:864-899`
**What it does:** makes it an offense to use blight designation, permit denial, project
announcement, code enforcement, or utility withholding to depress a property's value before
condemning it, and requires just compensation to be computed **as if the government-created burden
had not occurred** (`:889`).
**Why a Utah Republican votes for it:** property rights, anti-*Kelo* sentiment, and a specific rural
and agricultural grievance about condemnation-adjacent blight games. The just-compensation rule at
`:889` is a clean, quotable statement of a principle Utah conservatives already hold.
**Amends:** **Utah Code Title 78B, Chapter 6, Part 5** (Eminent Domain).
**Trim before filing:** the classification ladder at `:895-897` escalates to "capital offense" for
coordination with a developer. Remap to first/second degree felony per §0.2. The substantive rule
survives intact.

### 5. §11.4.1 — Automatic POST Decertification Referral
`sections/12-section-11-forfeiture-of-state-benefits-and-office.md:36-45`
**What it does:** 30-day mandatory referral of a qualifying conviction to POST; presumption of
decertification; POST must act within 90 days or issue a public written explanation; **failure to
act operates as automatic decertification on the ninety-first day**; transmission to the National
Decertification Index.
**Why a Utah Republican votes for it:** framed as "a decertified officer should not be able to move
to the next county and pin the badge back on," this is law-and-order-compatible rather than
law-and-order-adverse. Utah already decertifies; this adds a clock and an anti-capture default. Near
zero fiscal note.
**Amends:** **Utah Code § 53-6-211** (suspension or revocation of certification).
**Trim:** strike "federal officer reachable under §14.7" at `:38` — phantom cross-reference and Tier
D reach.

### 6. §17.9E — Revenue Extraction Under Color of Law
`sections/18-...md:461-475`
**What it does:** makes it an offense to use citations, fines, fees, surcharges, probation costs,
impound fees, or court debt **primarily to generate revenue** rather than to remedy harm or serve
public safety; expressly reaches cascading warrants and suspensions arising from inability to pay.
**Why a Utah Republican votes for it:** "policing for profit" is a settled conservative critique
post-Ferguson; the anti-quota and anti-fee-dependence framing at `:467` maps directly onto Utah's
fiscal-conservative and limited-government instincts. No state fiscal cost.
**Amends:** new section in **Title 76 Chapter 8**, with conforming amendments to **Title 10** (cities)
and **Title 17** (counties) on fine-revenue budgeting.
**Obstacle:** Utah League of Cities and Towns. Pair with a municipal-revenue transparency reporting
requirement to soften it.

### 7. §17.9A — Complaint Intake Refusal
`sections/18-...md:348-368`
**What it does:** makes it an offense for an agency to refuse to accept, log, or process a citizen
complaint against a government actor.
**Why a Utah Republican votes for it:** a procedural, cheap, hard-to-oppose accountability floor —
the complaint must at minimum be *taken*. Costs nothing, changes agency behavior, and creates the
data record that every later bill in the series will need to justify itself.
**Amends:** new section in **Title 76 Chapter 8**, with a records duty under **Title 63G Chapter 2**
(GRAMA).
**Strategic value:** the complaint log it creates is the evidentiary foundation for the 2028 and
2029 bills. File this early even though it is not the flashiest.

### 8. §1.1.49 — Unlawful Arrest by Warrant: Failure to Produce the Warrant
`sections/02-section-1-definitions.md:2617-2704`
**What it does:** requires an arresting officer to produce the warrant, or state its substance and
the issuing court, at or promptly after arrest; forecloses the "dispatch told me there was a
warrant" defense (`:2678`) and the "this is how we always do it" defense (`:2681`).
**Why a Utah Republican votes for it:** modest, procedural, sympathetic, and it maps onto a real and
recurring failure mode (arrests on stale, recalled, or misidentified warrants). Zero fiscal note.
**Amends:** **Utah Code § 77-7-6** (method of arrest) and § 77-7-8.
**Trim:** carry only the failure-to-produce rule. The pre-issuance notice requirement in the same
subsection is a much larger ask and belongs in a later bill.

### 9. §17.20 / §17.21 — Deliberate Budget Concealment and Preferential Contracting Abuse
`sections/18-...md:740-757`
**What it does:** §17.20 makes it an offense to conceal material budget information from the public
or the governing body; §17.21 makes it an offense to steer contracts to a favored bidder.
**Why a Utah Republican votes for it:** fiscal-conservative, anti-cronyism framing with no
appropriation attached. Utah's procurement code is already detailed; this adds a criminal backstop
for the conduct it already prohibits administratively.
**Amends:** **Utah Code Title 63G, Chapter 6a** (Utah Procurement Code) and **Title 51** (public
funds).
**Trim:** §17.21's "capital offense" tier for contracts over $100,000 (`:756`) must be remapped
(§0.2).

### 10. §1.1.53 — Government Gang Activity
`sections/02-...md:3054-3149`
**What it does:** applies the operative structure of Utah's criminal-street-gang law to a group of
government actors engaged in a pattern of unlawful activity under color of law.
**Why a Utah Republican votes for it:** the equal-application argument in its purest form — *if
three people on a corner doing this is a gang, three people with badges doing it is a gang.* This is
the bill's single most rhetorically effective provision, and it is **the most code-anchored
provision in the entire draft**: it cites § 76-9-802 six times (`:3058, 3068, 3091, 3095, 3133,
3140`) and § 76-9-803 (`:3141`), and was clearly drafted with the real statute open.
**Amends:** **Utah Code Title 76, Chapter 9, Part 8** (criminal street gangs) — directly.
**Trim before filing:** strike the fictional "Springvale Police Department" hypothetical at `:3075`
and the normative assertion at `:3077`; conform the predicate offense list to § 76-10-1602
("pattern of unlawful activity"); remap the capital tier at `:3126`.
**Ranked tenth despite its quality** because it is politically the hardest of these ten — it applies
gang law to police — not because it is structurally weaker. Structurally it is the most ready thing
in the bill. Consider it the flagship for a later session once the first five have passed.

### Honorable mentions (strong, just outside the ten)

- **§17.24F Public Health Emergency Authority Abuse** (`18-...md:901-953`) — Utah already passed
  emergency-powers limits in **2021 SB 195**; demonstrated appetite. Held out of the ten only
  because it needs conforming to Title 53 Ch 2a, which the draft does not cite.
- **§2.9 Constitutional Objection Duty** (`03-...md:1087-1125`) — excellent concept; needs its §16
  and §9.14 dependencies self-contained first.
- **§17.9G Protected-Speech Suppression** (`18-...md:488-496`) — zero cost, natural companion bill
  to §17.9D; pair them.
- **§17.9H Constructive Denial Under Color of Office** (`18-...md:498-507`) — the enactable
  substitute for the Tier D federal-representative provisions (see D1).

---

# 6. WHAT THIS MEANS FOR THE SPLIT STRATEGY

Three findings drive the sequencing more than anything else in this document:

1. **Two mechanical fixes unlock roughly a third of the bill:** the penalty remap (§0.1/§0.2) and
   the reference sweep (§0.4). Together perhaps two days of work. Nothing can be filed before them;
   after them, ~30 §17 offenses and ~20 §2 provisions are individually liftable.

2. **The natural cut line is §9-dependency, not subject matter.** Provisions that do not touch the
   Citizen Council are Tier A/B and can move in 2027. Provisions that do touch it inherit its
   constitutional-amendment timeline and cannot. Sorting by this one variable produces the session
   sequence almost automatically.

3. **The Tier D items are concentrated and few.** Essentially all of the structurally unenactable
   material sits in five places: §15 (entrenchment and federal reach), §17 Subpart E (federal
   representatives), §2.5.3 (juror liability), the "capital offense" label, and two federal-entity
   bullets in §1.1.1.2 at `02-...md:90`. The other ~95% of the bill is Tier A, B, or C. **Removing
   `02-...md:90` — two bullet points — converts the bill's most reusable asset, the §1.1.1
   Government Actor definition, from unenactable to enactable.** That is the highest
   leverage-per-keystroke edit available.
