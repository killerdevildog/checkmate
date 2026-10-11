# Operation Checkmate — Utah Enactment Restructure Plan

**Prepared:** August 2026 · **Target:** 2027 Utah General Session and beyond
**Scope:** mechanics of passage only. Not a critique of the Act's substance, aims, or moral premises.

---

## 0. The one-sentence finding

**The material is not too radical to pass. It is in the wrong containers.**

Nothing in this plan asks the author to want less. Every recommendation below is about *routing* — putting each piece of Operation Checkmate into the legal vehicle that can actually carry it, in the order that makes each next piece easier. The Act currently tries to do six different jobs (criminal code, civil remedy, immunity reform, institutional design, constitutional amendment, and public argument) inside one document addressed to no particular part of Utah law. Sorted into the right vehicles, roughly 95% of it is enactable. Left as one document, 0% of it is.

---

## 1. What is already strong

These are assets. Do not weaken them in the restructure.

| Asset | Why it matters |
|---|---|
| **§1.1.1 Government Actor** (`sections/02-section-1-definitions.md:9-229`) | A genuinely well-drafted, reusable definitions block covering law-enforcement, judicial, executive, regulatory, and education actors, with a delegation anti-evasion clause at `:65` that is the single strongest paragraph in the Act. Every bill in the series needs this. |
| **§1.1.53 Government Gang Activity** (`:3054-3149`) | The most code-anchored provision in the draft — cites Utah Code § 76-9-802 six times and was clearly drafted with the real statute open. Rhetorically unanswerable: *"I did not write this test. The Legislature did. I only changed who it applies to."* |
| **§17.9D Recording-Right Interference** | Zero fiscal note, First Amendment framing, and the Tenth Circuit's *Frasier v. Evans*, 992 F.3d 1003 (2021) granted qualified immunity because the right was not clearly established — the cleanest possible argument that the Legislature must supply what the courts declined to. |
| **§17.9E Revenue Extraction Under Color of Law** | "Policing for profit" is settled conservative critique. Costs the State nothing. |
| **§17.24E Eminent-Domain Valuation Manipulation** | The just-compensation rule at `:889` is a clean, quotable statement of a principle Utah conservatives already hold. |
| **§1.1.48 Arbitrary Action** | Government must be able to state the authority for its action and the citizen may interrogate it. Unites libertarian and civil-liberties constituencies. |
| **The `why/` corpus** | 36 documents preserving design rationale. Correct instinct — legislative history is what courts read later. See §8 for the one thing that must be fixed first. |
| **Statement of Intent** | Excellent persuasive writing. It is a *sponsor memo and floor speech*, not statutory text. Reclassify, don't discard. |

---

## 2. The blocking defects — mechanical, each with a fix

These are not objections to the content. They are reasons OLRGC cannot process the draft and a clerk cannot file it.

### 2.1 The penalty taxonomy does not exist in Utah law — **fix first, unblocks everything**

The Act classifies offenses as "Class 1/2/3 felony," "Class 1 misdemeanor," and "capital offense" — **392 designations in a grammar Utah does not use, defined nowhere in the repository.**

Measured across the section files:

| The Act uses | Count | | Utah actually uses | Count |
|---|---|---|---|---|
| `capital offense` | 109 | | `first/second/third degree felony` | **0** |
| `Class 2 felony` | 125 | | `class A / class B misdemeanor` | **0** |
| `Class 3 felony` | 64 | | `76-3-203` / `76-3-204` | **0** |
| `Class 1 felony` | 39 | | `class C misdemeanor` | 2 |
| `Class 1 misdemeanor` | 29 | | | |

Utah Code § 76-3-203 grades felonies **first / second / third degree**; § 76-3-204 grades misdemeanors **class A / B / C**.

**Fix (about one day):** global remap — `Class 3 felony → third degree felony`, `Class 2 → second degree`, `Class 1 → first degree`, `Class 1 misdemeanor → class A misdemeanor`, `infraction → infraction` (already correct).

**On the 109 "capital offense" labels:** these are foreclosed by *Kennedy v. Louisiana*, 554 U.S. 407 (2008) and *Coker v. Georgia*, 433 U.S. 584 (1977) — the Eighth Amendment categorically bars capital punishment for crimes against an individual not resulting in death. This is a federal ceiling, not a Utah political problem. Remap to **first degree felony** (§ 76-3-203(1): five years to life — Utah's real maximum short of aggravated murder). Where a citizen actually dies, route to Title 76 Chapter 5 and add an **official-capacity aggravating factor** under § 76-3-203.1. The word "capital" is lost; nothing else is.

### 2.2 Offenses defined inside a Definitions section are unchargeable

A charging document must cite a code section containing **all elements** of the offense. As drafted, §1 is captioned "Definitions" and the 53 umbrella offenses live inside it. **This produces zero prosecutable offenses regardless of how good the content is.** Two independent analyses reached this conclusion separately.

**Fix:** apply a four-way sorting test to every subsection of §1, distinguished by opening words — is this a **definition** ("'Government actor' means…"), a **rule of construction** ("This chapter shall be construed…"), an **evidentiary presumption** ("Proof of X establishes a rebuttable presumption of Y"), or an **offense** ("A government actor who knowingly… is guilty of…")? Definitions stay in §1. Offenses move to a substantive part with elements, mental state, defenses, and a graded penalty. §1.1.48 Arbitrary Action is the clearest case — it is an evidentiary presumption with no offense of its own, and is independently enactable and useful once labeled correctly.

### 2.3 The draft floats free of the Utah Code

Across ~130,000 words the Act cites **12 unique real Utah Code sections, none as amendment targets.** Zero repo-wide hits for `is amended to read`, `is enacted to read`, `Be it enacted`, `63G-7` (the Governmental Immunity Act §5.1 purports to override), or `76-8-` (offenses against the administration of government, where most of these offenses would actually be codified).

**OLRGC front-end components present: 0 of 8.** No long title, General Description, Highlighted Provisions, Money Appropriated, Other Special Clauses, Utah Code Sections Affected, enacting clause, or strikeout/underline sections. The effective date is the literal placeholder `[DATE TO BE DETERMINED]` (`sections/15-section-14-effective-date.md:3`).

### 2.4 Dangling cross-references — at least 8 families

Internal numbering drifted across versions without a re-sweep. The worst:

- **§14.7 "Federal Officer Status Not a Shield" is cited 5 times as the sole authority for reaching federal officers — and does not exist.** Section 14 is a three-line effective-date section.
- Sections 6, 7, and 8 do not exist at all; the Act numbers itself 1,2,3,4,5,9,10,…
- §17 contains **54** offenses, not ~70, with no Subpart C or F — yet `:1144` applies enhancements across "Subparts A through F."
- References to §§1.3, 1.4, 1.6–1.11 (Section 1 has only §1.1 and §1.2); §§11.3, 10.4–10.10 (stale pre-renumber); §4.1.2 (§4 has none).

**OLRGC will not process a draft with dangling internal citations.** Half a day of work, and it must precede any bill-file request.

### 2.5 The highest-leverage two-line edit in the document

`sections/02-section-1-definitions.md:90` and `:97` list the **"Federal government and the United States as an entity"** and federal departments as government actors subject to Utah criminal prosecution, entity fines, and — at `:140` — **"dissolution, restructuring, or receivership."** A state court cannot place a federal agency in receivership; this is barred by federal sovereign immunity and the Supremacy Clause.

**Striking those two bullets converts §1.1.1 — the definitions block every bill in the series needs — from unenactable to enactable.** It retains the entire state, county, municipal, special-district, and school-district apparatus, which is where nearly all the conduct the Act targets actually occurs. Highest leverage per keystroke available.

**Necessary but not sufficient — one added sentence.** The catch-all at `:116` sweeps in "any other body… that **exercises state power**, **issues binding decisions affecting citizens**, [or] **performs a traditionally governmental function**," reinforced at `:118` by a rule that "the form, name, organizational chart, or budget line of an entity does **not** determine whether it is a government actor." A court reading that catch-all re-imports federal agencies the same day the two bullets come out. Pair the strike with an express exclusion:

> *This section does not include the United States, its departments, agencies, or officers acting under federal authority.*

One deleted bullet pair, one added sentence. Without the second half, the definitions block that every downstream bill depends on carries a latent Supremacy Clause defect. (Credit: Kimi — see §12.2.)

---

## 3. The container thesis

I tested and **rejected** the argument that the omnibus violates Utah's single-subject rule. It does not, and using that argument would fail publicly.

*Gregory v. Shurtleff*, 2013 UT 18 upheld a bill bundling **fourteen** separate education measures plus appropriations, several already defeated on the floor. The Court held the rule is "liberally construed in favor of upholding a law" and that "there is no constitutional restriction as to the scope or magnitude of the single subject." Utah's only two invalidations (*Ritchie v. Richards*, 1896; *Carter v. State Tax Comm'n*, 1939) involved total incongruity — the Court's own example is "pet licenses, mining regulation and beekeeping."

**The real container problem is §15.** A statute cannot amend a constitution by declaring that it does. But Utah Const. **Art. XXIII § 1 ¶2** (verified verbatim) provides:

> "The revision or amendment of an entire article or **the addition of a new article** to this Constitution may be proposed as a single amendment and may be submitted to the electors as a single question or proposition. **Such amendment may relate to one subject, or any number of subjects**, and may modify, or repeal provisions contained in other articles of the Constitution, if such provisions are germane…"

**Utah wrote a breadth exemption into its amendment power that does not exist for bills.** The structural core of Operation Checkmate belongs in a proposed **new Article of the Utah Constitution**, where unlimited subjects are expressly permitted — not in a statute pretending to be one.

This also makes §15.2's entrenchment clause unnecessary. A legislature cannot bind its successors, so as a statute the entrenchment is void on adoption. But placing the core in the constitution *is* the entrenchment: it raises the repeal bar from a simple majority to two-thirds of both chambers plus a popular vote. That is real protection; most statutes have none.

**Timing note:** Art. XXIII § 1's publication requirement changes **1/1/2027** — from "one newspaper in every county for two months" to "in a manner provided by statute, for 60 calendar days."

---

## 4. The bill series

Sorting variable: **§9 (Citizen Council) dependency**, not subject matter. Provisions that don't touch the Council are statute-level and can move in 2027. Provisions that do inherit a constitutional-amendment timeline. That one variable generates the sequence almost automatically.

### Wave 1 — 2027 General Session (three bills, all zero or near-zero fiscal note)

| # | Working title | Source | Amends | Why it passes |
|---|---|---|---|---|
| **1** | **Citizen Recording and Official Identification Act** | §17.9D + §17.9G + §2.8.2 | New section, Title 76 Ch 8; Title 77 Ch 7 | Zero cost. *Frasier* gap. Libertas already passed SB 239 (2017) on recording rights. **Its real cargo is the §1.1.1 definitions** — `government actor`, `color of law` — which every later bill then merely amends. |
| **2** | **Utah Constitutional Remedy Clarification Act** | §5 (narrowed) | Title 78B | Three pages. See §5 below. Highest substance-to-cost ratio in the entire document. |
| **3** | **Government Accountability Transparency Act** | §17.9A Complaint Intake Refusal + §17.20/§17.21 | Title 76 Ch 8; Title 63G Ch 6a; GRAMA | Cheap, procedurally unarguable, and **the complaint log it creates is the evidentiary foundation every later bill needs.** |

### Wave 2 — 2028

4. **Property Protection Act** — §17.9F (conviction-required forfeiture, Title 24) + §17.24E (eminent-domain valuation, Title 78B Ch 6 Pt 5). Utah voters passed Initiative B in 2000 on exactly this premise.
5. **Peace Officer Accountability and Certification Act** — §11.4.1 POST decertification clock (§ 53-6-211) + §1.1.49 warrant production at arrest (§ 77-7-6). Frame: *"a decertified officer should not move to the next county and pin the badge back on."*
6. **Emergency and Regulatory Authority Limits** — §17.23, §17.24, §17.24F, drafted as amendments to Title 53 Ch 2a. Utah already legislated here in 2021 (SB 195).

### Wave 3 — 2029

7. **Public Integrity Grand Jury Act** — the §9 rewrite. See §6 below.
8. **Government Gang Activity** — §1.1.53, amending Title 76 Ch 9 Pt 8 directly. Politically the hardest of the strong provisions; run it once the earlier wins exist.

### Wave 4 — Joint Resolution

9. **A new Article of the Utah Constitution** carrying the structural core: the citizen's enforceable remedy, the immunity framework, and the accountability principles. Art. XXIII § 1 expressly permits any number of subjects. Two-thirds of both chambers, then the voters.

### Not enactable as written — and the nearest thing that is

| Blocked | Why | Route instead |
|---|---|---|
| §17.25/A/B — state felonies for conduct of members of Congress | U.S. Const. Art. I §6 Speech or Debate; *In re Neagle*, 135 U.S. 1 (1890); 28 U.S.C. § 1442 removal; Utah Code § 76-1-201 territorial limit | State offense for false sworn testimony to a **Utah** legislative committee (parallel to § 76-8-502/503); a constituent-response duty with civil penalty (§17.9H already drafts this well) |
| §15.7 / §14.7 — abrogating federal-officer and federal-judicial immunity | Supremacy Clause; a state statute "abrogating" a federal immunity has no operative effect | **Anti-commandeering runs both ways** (*Printz v. United States*, 521 U.S. 898 (1997)): Utah may withhold state personnel, facilities, data, and funds from federal activity violating the Act's standards. Plus **POST-certification conditions** on any Utah-certified officer deputized to a federal task force — a lever no federal court can strip. |
| §15.2 entrenchment | No legislature binds a successor | Put the core in the constitution (§3 above); add a binding rule of construction and a non-severability clause on the immunity core |
| §2.5.3 juror criminal liability | Cannot reach federal jurors or override FRE 606(b); criminalizing verdicts eliminates the jury | Carry the **juror rights** in §2.5.1, and point criminal liability at the **officials** who mislead a jury — §2.5.2 already drafts this |
| §16.1 nullity of **federal** instruments | Supremacy Clause | Limit §16 to state and local instruments (ordinary Title 63G Ch 3 administrative law) plus a fast-track declaratory action with fee waiver |
| §9.12 full-text distribution to every inmate in 24 hours | Operationally impossible — ~500 printed pages, 100,000+ annual jail admissions | Two-page plain-language rights summary at intake + full text in the law library and on facility tablets. Same objective, ~1% of cost |

### The single bill-killer

**§2.11.9 Parity of Arms** (`sections/03-section-2-due-process.md:1487-1528`) requires aggregate public-defense funding to equal aggregate prosecution funding, and forecloses the obvious defense at `:1522`: *"'Resource constraints' is not a defense."* This is a structural reallocation of the entire state and county criminal-justice budget. It will not receive a fiscal note; it will receive a refusal to score. **It cannot share a bill with anything else.** Run caseload standards and reporting first — in Utah, funding follows data, not the reverse.

---

## 5. The cheapest high-value provision: statutorily defining *Spackman*

Under ***Spackman ex rel. Spackman v. Board of Education*, 2000 UT 87**, damages are available for a Utah constitutional violation only where the provision is self-executing, the violation was **"flagrant,"** existing remedies don't redress the injury, and equitable relief is inadequate. Utah courts have construed "flagrant" to require violation of **"clearly established" rights "of which a reasonable person would have known"** — Utah has imported a qualified-immunity-style standard into its own state constitutional damages remedy **by judicial construction**.

**Because "flagrant" is a judicial gloss and not a constitutional command, the Legislature can define it by statute.**

A three-page bill providing that, for an enumerated category of conduct — knowing falsification of a government record; knowing use of false evidence; a search or seizure conducted without articulable lawful authority — **the violation is flagrant as a matter of law** accomplishes a large fraction of §5's purpose while:

- carrying **no fiscal note of consequence** (doesn't touch the UGIA caps, notice-of-claim period, or limitations period)
- creating **no new crime**
- never using the phrase "qualified immunity"
- framed as **restoring** the remedy the Utah Constitution's framers assumed — the *Spackman* court itself grounded it in common-law history
- defensible to a conservative committee as **judicial-activism correction**

**This should be the author's first substantive bill.**

---

## 6. The §9 rewrite — from liability to best-precedented section

Do not create the Citizen Council. **Amend the statute Utah already calls "Grand Jury Reform."**

**Utah Code Title 77, Chapter 10a** is literally titled *Grand Jury Reform*. Verified verbatim from the statute:

- **§ 77-10a-2(1)(a)** — a five-judge panel shall "hear in secret **all persons** claiming to have information that would justify the calling of a grand jury." *A citizen pathway already exists in Utah law.*
- **§ 77-10a-2(2)(a)** — citizen route: on good cause, the panel "shall make its findings in writing and **may** order a grand jury to be summoned."
- **§ 77-10a-2(3)** — prosecutor route: on good cause, the panel "**shall** order a grand jury to be summoned."

**The asymmetry:** on identical findings, a prosecutor gets a mandatory grand jury; a citizen gets a discretionary one. **`may` → `shall` is a one-word amendment** and the most surgical reform available in this entire project.

Already in the statute, and already doing what §9 builds from scratch:

- **§ 77-10a-2(2)(b)** — the panel may refer to a prosecutor, who **must report back within 120 days**; "If the panel is not satisfied with the action" it may order a grand jury. *A judicially supervised answer to prosecutorial refusal, without the separation-of-powers problem.*
- **§ 77-10a-2(4)** — good cause considers "whether a grand jury is needed to help maintain **public confidence in the impartiality of the criminal justice process.**" *The Act's thesis, already enacted, in the author's favor.*
- **§ 77-10a-10** — the grand jury must be informed of "its **independent right** to call and interrogate witnesses" and to request documents including exculpatory evidence.
- **§ 77-10a-12** — the supervising judge appoints a **special prosecutor** on a written conflict-of-interest finding. *Exactly the §9 use case.*

**Two other states have already enacted the rest:**

- **Kansas, K.S.A. 22-3001** — citizens petition the district court with signatures equal to 100 + 2% of the county's last gubernatorial vote; if the petition is in proper form, "**a grand jury shall be ordered to be summoned.**" Citizen-initiated, mandatory, enacted law.
- **Wisconsin, Wis. Stat. § 968.26** — judge-supervised John Doe proceeding investigating "any conduct prohibited by state law," with subpoena power. The annotation answers the objection §9 will draw: "**This section does not violate the constitutional separation of powers doctrine.**"

**Power-by-power translation:**

| §9 as drafted | Under the reframe |
|---|---|
| Declare prosecution / mandatory prosecution | Grand jury returns a true bill; if the prosecutor doesn't act in a fixed window, the supervising judge appoints a **special prosecutor** under existing § 77-10a-12 |
| Compel production | The grand jury's existing subpoena duces tecum, issued through the court |
| Issue warrants / arrest | Grand jury **indicts**; the **judge** signs; the **sheriff** executes. *This single change defeats the Art. VIII objection.* |
| Review convictions | Conviction-integrity presentment triggering Post-Conviction Remedies Act review |
| Review statutes | Annual report to the Legislature (California civil grand jury model) |
| Inmate investigation | Statutory jail inspection power with unannounced entry and private interviews — routine and uncontroversial in California |

**Rename it.** "Citizen Council" pattern-matches to "common law grand jury" and sounds novel. Use **Public Integrity Grand Jury**. Avoid the phrase "civilian review board" entirely — it codes as progressive urban police reform and will be labeled anti-police in the first hearing.

**The new pitch:** *"Utah should give its citizens what Kansas citizens already have, using the chapter Utah already calls Grand Jury Reform."*

---

## 7. Legislator targeting

> **Status note:** the dedicated legislator-research node was stopped before it reported. What follows is built from the **Utah Legislature's official legislator dataset** (104 members) plus verified news reporting. It is a starting frame, not the finished grid. What's missing is flagged in §11.

### 7.1 Composition (current body, from official data)

| Chamber | Seats | R | D |
|---|---|---|---|
| Senate | 29 | 22 | 6 |
| House | 75 | 61 | 14 |

**This is not the 2027 body.** All 75 House seats and half the Senate are on the ballot November 2026, and three incumbents already lost June 2026 primaries.

### 7.2 The November 2026 shake-up — verified

- **Senate President J. Stuart Adams lost his GOP primary June 23, 2026** to Stephanie Hollist (43.3% – 35%). First sitting Utah Senate President unseated since 2002.
- **Sen. Dan McCay** and **Rep. Trevor Lee** also defeated.

Two consequences pulling opposite directions:

- **Cost:** McCay sponsored **SB 262 (2026)**, the Libertas-backed police-accountability bill. The most proven Republican carrier for this kind of legislation won't be in the 2027 Senate.
- **Opening:** the Senate President who presided over the 2025 GRAMA rollback and the HB 267 debacle is gone. **Leadership will be new in January 2027 with no ownership of that record.** New leadership is the single best moment to introduce a reform agenda.

### 7.3 Members whose profession bears directly on this bill (official data)

Attorneys are the members who will actually read the draft; the prosecutor is both the most informed potential ally and the most credible potential opponent.

| Seat | Party | Name | Profession |
|---|---|---|---|
| S 8 | R | Todd Weiler | Attorney |
| S 19 | R | Kirk A. Cullimore | Attorney |
| S 21 | R | Brady Brammer | Attorney |
| S 24 | R | Keven J. Stratton | Attorney, Businessman, Farmer |
| S 25 | R | Michael K. McKell | Attorney; Title Officer |
| H 27 | R | Anthony E. Loubet | Chief Legal Officer / General Counsel |
| H 39 | R | Ken Ivory | Attorney |
| H 44 | R | Jordan D. Teuscher | Attorney |
| H 57 | R | Nelson T. Abbott | Attorney |
| H 33 | D | Doug Owens | Attorney |
| **H 40** | **D** | **Andrew Stoddard** | **City Prosecutor** |

Note **Rep. Jordan Teuscher (R, H44)** sponsored HB 267 and, after the referendum, framed repeal as needing "to lower the temperature, and to create space for a clearer and more constructive conversation" — a member with fresh, direct experience of what organized citizen pressure does.

**Sen. Todd Weiler (R, S8)** voted **against** the HB 267 repeal specifically because he believed constituents deserved their ballot decision — a documented instance of a Republican senator siding with the voters' right to decide over his caucus's convenience.

### 7.4 How to pitch, by member type

| Type | Lead with | Never say |
|---|---|---|
| Republican attorney | *Spackman* remedy clarification as judicial-activism correction; "the Legislature defines the standard, not the courts" | "qualified immunity," "police accountability" |
| Fiscal conservative | §17.9E revenue extraction; §17.20/21 budget concealment and contracting; zero fiscal note | anything with an appropriation |
| Property-rights / rural | §17.9F conviction-required forfeiture; §17.24E eminent-domain valuation; Initiative B (2000) passed with ~70% | federal-anything |
| Post-COVID emergency-powers | §17.24/§17.24F, framed as finishing what SB 195 (2021) started | "public health" as an enemy |
| Democrat / criminal justice | §17.9A complaint intake; documentary-integrity offenses; wrongful convictions | the ~120 new felonies (see §9.2) |
| New 2027 leadership | "You didn't break GRAMA in 2025. You get to be the ones who fixed accountability in 2027." | anything blaming the institution |

---

## 8. Utah case law foundation

> The dedicated case-law node was stopped before reporting. These are verified; the fuller research is flagged in §11.

| Authority | Use |
|---|---|
| ***Spackman v. Board of Education*, 2000 UT 87** | **The crown jewel.** Utah recognizes a damages action **directly under the Utah Constitution** — one of very few states that does. The Act's core civil-remedy premise is already Utah law in embryo. The "flagrant" element is a judicial gloss the Legislature can define. See §5. |
| **Utah Const. Art. XXIII § 1 ¶2** | A proposed **new article** may relate to "one subject, **or any number of subjects**." The vehicle for the structural core. |
| **Utah Const. Art. I § 2, § 7, § 11, § 14, § 27** | §2 (all political power inherent in the people) and §27 (frequent recurrence to fundamental principles) are the Act's own thesis in the state's founding text. |
| **Utah Const. Art. VIII § 4** | The Legislature **may amend Rules of Criminal Procedure by a two-thirds vote of both houses.** This makes several §2 jury and evidence provisions statutorily reachable — at a high bar, but reachable. |
| ***Gregory v. Shurtleff*, 2013 UT 18** | Single-subject rule is liberally construed; a 14-measure bundle was upheld. **Do not argue the omnibus is unconstitutional on single-subject grounds — it isn't, and the argument will fail publicly.** |
| **Utah Code § 77-10a (Grand Jury Reform)** | The §9 vehicle. See §6. |
| **Utah Code § 76-9-802** | The §1.1.53 anchor — the Act imports Utah's own gang statute structure. |
| ***Frasier v. Evans*, 992 F.3d 1003 (10th Cir. 2021)** | Qualified immunity granted because the right to record police wasn't clearly established. The argument for §17.9D: the Legislature must supply what the courts declined to. |
| ***Kennedy v. Louisiana*, 554 U.S. 407 (2008)**; ***Coker v. Georgia*, 433 U.S. 584 (1977)** | Why the 109 "capital offense" labels must be remapped. |
| ***Printz v. United States*, 521 U.S. 898 (1997)** | Anti-commandeering runs both ways — the enactable substitute for the federal-reach provisions. |
| ***In re Neagle*, 135 U.S. 1 (1890)**; **28 U.S.C. § 1442** | Why state prosecution of federal officers for federal duty fails. Route around, don't fight. |
| ***League of Women Voters v. Utah State Legislature* (Utah 2024)** | The initiative right is constitutionally protected against legislative nullification. **The most favorable environment for citizen lawmaking in modern Utah history.** |

---

## 9. Coalition, opposition, and the two structural insights

### 9.1 Utah law enforcement opposes through one body

The **Utah Law Enforcement Legislative Committee (ULELC)** — nine member organizations including the Chiefs, Sheriffs, SWAP, UPOA, the AG's Office, DPS, Corrections, and DNR — meets **Mondays at 10:00 a.m.** to adopt a consolidated position.

You will not face eight opponents making eight arguments. You will face **one position adopted in a Monday meeting**, delivered by whichever member is most sympathetic to the committee hearing the bill.

**Every drafting decision should be tested against one question: does this split the ULELC or unify it?** Operation Checkmate as drafted unifies it perfectly, because §1, §2, §5, §11 and §17 hit all nine members simultaneously.

### 9.2 The criminal track splits the coalition; the civil track unites it

The Act's theory does not actually require ~120 new felonies. Nearly every core wrong it targets is **already** a Utah crime — falsifying a government record, tampering with evidence, perjury, official misconduct. What's missing isn't a *prohibition*. It's **a remedy the citizen can invoke and an immunity doctrine that doesn't swallow it.**

Convert the enumerated offenses into: (1) a **civil cause of action** with defined elements, (2) **mandatory professional consequence** — POST decertification, Bar referral, disqualification, (3) a **mandatory-referral duty** to an independent prosecutor for conduct already criminal, and (4) **the Act's existing no-indemnification clause, preserved intact and treated as non-negotiable.**

That fourth element is not optional, and an earlier draft of this plan was wrong to omit it. A civil cause of action paid by the employer is **not** a deterrent to the individual actor — it is a cost transfer to the taxpayer. The evidence is in §11 of this document: governments pay **99.98%** of police-misconduct dollars. The Act already solves this at `sections/02-section-1-definitions.md:144`:

> "Under no circumstances may a government body's funds, insurance, or other resources be used to **indemnify, reimburse, or pay legal fees** of any individual government actor found liable under this title. This prohibition applies notwithstanding any contrary provision in any contract, collective-bargaining agreement, statute, ordinance, or policy."

**That clause is the deterrent — not the felony label.** The author's theory never actually required *new felonies*; it required *personal consequence*. Personal financial exposure that cannot be indemnified, plus career termination, plus referral for crimes already on the books, survives the civil conversion and delivers what the criminal track was carrying. Drop the no-indemnification clause and the civil track really does become the toothless thing the author fears.

With that correction, the conversion:

- gains the ACLU (no new carceral apparatus)
- gains Libertas (no overcriminalization — they've written against exactly this)
- shrinks the fiscal note by an order of magnitude
- removes the FOP's most sympathetic talking point: *"you are making my members felons for paperwork"*
- and **keeps the personal-consequence floor the author actually cares about**

**This single restructuring does more for passage probability than everything else in this document combined** — provided the no-indemnification clause rides with it.

**Read `why/why_criminal_not_just_civil.md` before accepting this.** The author has already written his own argument for the criminal track, and this recommendation is a direct challenge to it. The answer above — *personal consequence was always the operative mechanism; the felony label was one delivery vehicle for it, and not the only one* — is meant to engage that document, not bypass it. If the author reads that argument and still wants the criminal track, the fallback is to keep criminal liability for the **documentary-integrity** offenses only (falsification, evidence tampering, forensic corruption), where the conduct is deliberate, provable, and draws the least sympathy.

### 9.3 The coalition

**Libertas Institute + Utah League of Cities and Towns.** Not the intuitive pairing:

- **Libertas** supplies what money can't buy in a 61R House: a credible Republican sponsor and conservative intellectual cover, backed by an eleven-bill police-reform record (SB 239 recording rights, SB 154 quota ban, HB 57 data privacy).
- **ULCT** supplies the disappearance of the fiscal note. As long as ULCT is opposed, the bill carries a catastrophic local-government note and never reaches a floor vote.

The third leg is **ULELC neutrality** — not support, neutrality. That is the actual hard work, and it is purchased with drafting.

Bring the **ACLU of Utah** in as a named supporter at the floor stage and for left-flank press — not as the bill's public face.

### 9.4 The two proof cases

**SB 262 (2026) — the sobering one.** Republican sponsor (McCay), Libertas-endorsed, sympathetic constituent story, passed Senate Judiciary 6–1 — a bill about **unmarked car paint** — and organized law enforcement killed it on the Senate floor five months ago.

> *In Utah, a police-accountability bill passes if and only if organized law enforcement is neutral. Neutrality is the product, and it is purchased with drafting.*

**HB 267 (2025) — the encouraging one, and it's eight months old.** The public-sector collective bargaining ban. Protect Utah Workers — **including the Utah Fraternal Order of Police** — gathered **320,000+ signatures in 30 days**, more than double the requirement and the largest successful referendum petition in Utah history. **Qualification alone automatically suspended the law before it took effect.** In a December 2025 special session, the Republican supermajority repealed its own bill **60–9** in the House and **26–1** in the Senate rather than face voters.

Two lessons: **the FOP is not a monolith that always sides with the state**, and **legislators will trade an entire bill to avoid a referendum.** The referendum threat — 140,748 signatures across 15 of 29 Senate districts, in a 30/40-day window — is the credible enforcement mechanism behind every legislative ask. (The initiative path's 26-of-29-district requirement is close to prohibitive for a citizen effort.)

**Also live:** the Legislature gutted GRAMA in 2025 (SB 277 abolished the State Records Committee; HB 69 stripped attorney-fee recovery) and received SPJ's **2025 Black Hole Award**. The Utah press corps is currently aggrieved about precisely this subject.

---

## 10. Immediate actions

### Before anything else — about three days of work

1. Global penalty remap to Utah grammar (§2.1)
2. Strike `02-section-1-definitions.md:90` and `:97` (§2.5)
3. Sweep all dangling cross-references, starting with the phantom §14.7 (§2.4)
4. **Fix the `why/` folder.** The bill text is clean (341 uses of "operative" in 131,832 words). The rationale documents are not: they run **21–29% "operative" by word count** — `why_the_performed_duty_with_an_abundance_of_care_standard.md` uses it **1,240 times in 4,258 words**. Any staffer who opens one stops reading and draws a conclusion about where the project came from. This is a text-generation artifact and it is mechanically fixable.

### August – December 2026

5. Sort §1 with the four-way test (§2.2) and draft **Bill #1** and the ***Spackman* bill** (§5) as real Utah bill drafts
6. Approach **Libertas Institute** with the *Spackman* bill — three pages, not 7,900 lines
7. Watch the **Judiciary, Law Enforcement and Criminal Justice Interim Committee** (May–November) — the venue where an unknown citizen can actually be heard before a session
8. After November 2026, rebuild the legislator grid against the **new** membership and new Senate leadership
9. Consider commissioning **the first Utah poll on government accountability** — none exists, and a credible number would itself be news to the outlets in §9.4

### January 2027

10. Bill-file requests open; fiscal notes are built from agency contact in **December** — engage ULCT before then, not after

---

## 11. What is not yet researched

Four nodes were stopped before reporting. Honest gaps:

- **The full legislator grid** — committee rosters (Senate Judiciary/Law Enforcement/Criminal Justice; House Judiciary; House Law Enforcement), chairs and vice-chairs, Rules Committee chairs in both chambers, and sponsorship histories. §7 is a frame, not the finished product. **Rebuild after November 2026 anyway** — the current roster is not the 2027 body.
- **Precise 2027 session mechanics** — one node reported the session convenes **Jan 19** and adjourns **Mar 5, 2027**, with a bill-request deadline of **Jan 29 noon** and fiscal notes over $20k landing on day 44. **Unverified — confirm at le.utah.gov before relying on any of it.**
- **The full Utah case law survey** — particularly the post-*Spackman* line (*Jensen v. Cunningham*, 2011 UT 17; *Kuchcinski v. Box Elder County*, 2019 UT 21), the Open Courts Clause line (*Berry v. Beech Aircraft*, 1985), Utah's independent state-constitutional interpretation cases, current Governmental Immunity Act damage caps, and **verified Utah-specific abuse cases**. The Statement of Intent currently leans almost entirely on out-of-state examples; replacing Ferguson and Baltimore with **Utah** facts is a major upgrade.
- **Utah precedent acts** — the full inventory of prior Utah legislation to cite as "this is just an extension of what you already did."

### Two claims to stop making

- **The body-camera "59%" figure** (Rialto, 2012) — the 2,224-officer DC randomized trial found a null result.
- **"The sky didn't fall in Colorado/New Mexico"** — no dataset supports it either way. The defensible number is Schwartz: **governments pay 99.98%** of police-misconduct dollars, and officers never satisfied a punitive award even where indemnification was legally barred.

---

## 12. Independent review — Kimi

Kimi (Moonshot) was given this plan and the repository and asked for an adversarial second opinion, with explicit instructions **not** to advise moderating the author's goals. It read the actual source files rather than working from a summary — it independently verified the federal-entity bullets, the `why/` saturation, and §2.11.9, and it found two defects this plan had missed. Its factual claims below were re-verified against the repo before inclusion.

### 12.1 Where Kimi agrees

| Call | Kimi's added reasoning |
|---|---|
| **The container thesis** — "strongest call in the document" | Routing the core into a constitutional article isn't just about the breadth exemption. It's the only move that makes the entrenchment clause **honest**. As drafted, §15.2 promises the author protection it structurally cannot deliver. The constitutional route "delivers the actual thing the entrenchment clause was pretending to be — the difference between a real lock and a painted one." |
| **The *Spackman* bill first** | Adds a reason this plan didn't have: a live state constitutional remedy **creates standing for a future plaintiff class**. Utahns start suing and winning, and every won case generates the **Utah facts** §11 flags as missing from the Statement of Intent. "The bill isn't just cheap; it's a fact-generation machine for everything after it." Highest compounding return, not merely lowest cost. |
| **The mechanical fixes** | Agrees, but reorders the *reason*. Not "OLRGC can't process it" — that's secondary. The real reason is that **the author's credibility is the product**. A staffer seeing "Class 2 felony" doesn't think *wrong taxonomy*, they think *this person has never opened Title 76* — a judgment made in ninety seconds and never unmade. |
| **The ULELC / SB 262 analysis** | "'Neutrality is the product, and it is purchased with drafting' is the single truest sentence in the document." |

### 12.2 Where Kimi disagrees

**(a) The civil-track claim was wrong as originally written — and this plan's own evidence disproved it.**
Kimi caught that claiming civil conversion delivers the "same deterrent" is contradicted by the Schwartz figure cited in §11 (governments pay 99.98% of misconduct dollars). It found the **no-indemnification clause** at `02-section-1-definitions.md:144` and pointed out that *that clause*, not the felony label, is the actual deterrent. It also noted the plan never engaged `why/why_criminal_not_just_civil.md` — the author's own argument on precisely this question — and warned the author would reject §9.2 the moment he read it. **§9.2 has been corrected accordingly.** This was the single most valuable catch of the review.

**(b) The grand-jury reframe is right but oversold, and the ask is inverted.**
Kimi states the losses plainly, and they are real:
- **Gatekeeper independence.** The author's whole premise is that existing gatekeepers are the failure mode. Title 77-10a routes citizens through a **five-judge panel**. `may`→`shall` fixes the *output* of the gate but keeps the gate.
- **Permanence.** A grand jury empanels per matter and dissolves. The Council was a standing body with continuity and institutional memory. "The reframe trades an institution for a procedure."
- **Review jurisdiction.** Conviction review and statute review survive only as shadows.

It accepts the reframe anyway — "a procedure that exists beats an institution that doesn't" — but argues **this plan picked the wrong lead ask.** The **Kansas model (K.S.A. 22-3001)** is stronger, because citizen petition on proper form compels a grand jury **while bypassing the judicial panel entirely** — preserving the author's gatekeeper-independence principle. Kimi's recommendation: **lead with Kansas, hold `may`→`shall` as the fallback concession** the author "reluctantly accepts" in committee, which also hands the sponsor a negotiated win to claim. *I think this is correct and it supersedes §6's framing.*

**(c) The sequencing is right, but the plan sequences paper, not power.**
Kimi rejects the "squandering your one shot" objection outright — "an unknown citizen has no attention to squander; attention is earned by wins, not spent by them." But it identifies a real gap: §9.4 calls the referendum threat the enforcement mechanism behind every ask, then the entire bill series is sequenced **without building the organization that makes the threat credible.** 140,748 validated signatures in 30 days is a $1–2M operation or a pre-existing list. "Protect Utah Workers didn't conjure 320,000 signatures; unions had lists. The author has no list."
Second: Wave 1 must be introduced **as a named package with a published roadmap** — "this is step 1 of 9." Otherwise smallness reads as the ceiling and the author gets coded as a one-issue crank.

**(d) The constitutional article is mis-pitched.**
Kimi's sharpest structural disagreement. Art. XXIII ¶2's breadth exemption solves a problem that was never the obstacle. **The obstacle is getting 2/3 of both chambers to refer an amendment stripping the immunity of people adjacent to the voters.** The popular vote is the *easy* half — Utahns would likely ratify. The supermajority referral is the wall, and §9.4 proves it: HB 267 took 320,000 signatures and a suspended law to move a *simple* majority.
Conclusion: the article is a **2030+ project contingent on Waves 1–3 first building the pressure**. It should receive **zero drafting hours before 2027**. And the ratification half should be pre-built — every Wave 1–3 campaign harvesting the contacts that become the ratification campaign later. "The plan treats the amendment as the final bill; it's actually the final *election*."

### 12.3 What Kimi says the plan misses

1. **No human infrastructure — "the largest blind spot."** The plan assigns roughly 40 hours/month for five years to one unnamed person, with no organizational form (PAC, 501(c)(4), coalition MOU), no budget, no staff. "The plan is a paper strategy for what is actually a personnel problem."
2. **The messenger problem.** A non-lawyer citizen carrying 130,000 words gets pattern-matched to sovereign-citizen in the first meeting — the repo's own `why_this_is_not_a_sovereign_citizen_project.md` shows the author knows. **The *Spackman* bill should be fronted by a Libertas attorney or a law professor; the author should be the drafter and the testimony, not the face.**
3. **Sponsor recruitment precedes drafting.** A citizen cannot open a bill file — only a legislator can. The drafting exists to **lower the sponsor's cost of saying yes**, not to be filed directly. The plan never states this implication.
4. **The November 2026 election is an action window, not just a data event.** Send **candidate questionnaires** in September–October on recording rights and the *Spackman* remedy. Challengers make public commitments *before* they're incumbents and arrive in January pre-committed. Free, and nobody does it to them in a contested primary.
5. **Municipal pilots.** A city can't grant remedies against state actors, but it can adopt complaint-intake, recording-affirmance, and POST-cooperation rules for its own police. Cheap, winnable in a friendly council, and it manufactures the Utah facts §11 says are missing. "A single city adoption converts the pitch from *trust me* to *Springville already does this*."
6. **Procedural kill vectors.** The plan maps opposition *positions* but not opposition *methods*: fiscal-note inflation, Rules Committee burial, strike-everything substitutes, late-session substitution. Only the fiscal-note counter is addressed.
7. **Law school clinics.** S.J. Quinney and BYU Law run legislative/constitutional clinics — free drafting review, a credibility stamp, and student labor. Unexamined.
8. **Expectation management.** If the real 2027 deliverable is "one three-page bill passed and one relationship with Libertas," that must be framed as **success now** — or a Wave-1-only outcome in March 2027 reads as failure and the multi-year campaign collapses at its first checkpoint.

### 12.4 Kimi's own recommendation

> **The one-sentence version:** "The plan is right about the containers and the sequence, wrong about the deterrent math and the grand-jury ask, and silent about the fact that bills don't move without an organization — so spend the fall building the humans, and let the paper ride on them."

**Aug–Sep 2026:** the three mechanical fixes (with the §2.5 strike upgraded to strike-plus-exclusion); clean the `why/` folder — non-negotiable; draft **only** the *Spackman* bill (3 pp.) and the recording-rights bill (10 pp.) in real Utah format. Nothing else gets drafted this year.

**Sep–Oct 2026:** take the *Spackman* bill to **Libertas**; if they bite, their attorney fronts it. Quiet technical input from ACLU of Utah — no public co-branding yet. Attend every Judiciary/Law Enforcement interim meeting and **say almost nothing** — learn names, meet staff. Send the two-question candidate questionnaire to every competitive race and publish the answers.

**Nov–Dec 2026:** rebuild the grid against actual winners; recruit one House and one Senate sponsor, prioritizing favorable questionnaire responders. Engage ULCT before the December fiscal-note window. **Stand up the organizational shell** — at minimum a name and an email list. Every hearing attendee becomes a contact.

**Jan 2027:** file two or three bills as **one named package with the nine-step roadmap attached**. Spend zero hours on the constitutional article, Parity of Arms, or the Citizen Council. The grand-jury bill's only 2027 job is one line in the roadmap: *"2029: give Utah citizens what Kansas citizens already have."*

### 12.5 My assessment of the disagreements

| Kimi's position | My call |
|---|---|
| No-indemnification clause is the real deterrent; §9.2 was wrong | **Accept.** Verified in the text. §9.2 corrected. |
| Strike `:90`/`:97` needs a companion exclusion clause | **Accept.** Verified — the `:116` catch-all does re-import federal agencies. §2.5 corrected. |
| Lead with the Kansas model, not `may`→`shall` | **Accept.** Better preserves the author's stated design premise and gives the sponsor a concession to trade. |
| Constitutional article gets zero hours before 2027 | **Accept.** The 2/3 referral, not the breadth rule, is the binding constraint. |
| The plan sequences paper, not power | **Accept** as the most important gap identified. |
| Messenger should not be the author | **Partially accept.** Right for the *Spackman* bill, where legal credibility carries it. But the author's personal account is an asset in testimony and press, and this is the one place where a citizen outranks a lobbyist. Front an attorney; keep the author visible. |

---

## 13. The bottom line

Operation Checkmate's problem was never ambition. It is that a 130,000-word document addressed to no part of the Utah Code cannot be filed, and that its most distinctive section asks Utah to build an institution Utah already has.

The path is: **fix three mechanical defects, then run the smallest, cheapest, most sympathetic pieces first** — recording rights, a three-page *Spackman* clarification, and a complaint-intake duty — while the definitions travel quietly inside them. Each win makes the next bill an amendment to an existing framework rather than a new idea. The Citizen Council becomes the Public Integrity Grand Jury, built on the chapter Utah already named *Grand Jury Reform*, with Kansas and Wisconsin as the precedent. The structural core goes to the voters as a new Article, where the constitution expressly permits any number of subjects.

The 130,000 words keep a real job: **the drafting source compendium.** Its audience was never a legislator. It is the OLRGC attorney who has to write the code, and the court that will later ask what the Legislature meant.
