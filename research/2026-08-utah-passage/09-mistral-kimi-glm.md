# Node 09 — Mistral + Kimi + GLM Consult

**Node role:** Mistral (civil-law codification perspective), Kimi (long-context campaign-design synthesis), GLM (communication artifacts / usable copy).

**Models actually reached:**
- `mistral-large-2512` via `mcp__mistral__consult_mistral` (first attempt resolved `magistral` → `magistral-small-latest`, a weaker model; re-run on `mistral-large-latest` is the version used here)
- `kimi` via `mcp__kimi__consult_kimi`, `thinking_effort: high`, 1800s timeout (first attempt at default 600s timed out). **Note: Kimi independently read the actual repository** — it cites `sections/02-section-1-definitions.md`, the `culture/` directory, and the README's AI-upload distribution method. Its answer is grounded in the real artifact, not just the briefing.
- `z-ai/glm-5.2` via `mcp__openrouter__consult_model`, `provider: blackbox` (OpenRouter direct failed — insufficient credits; blackbox timed out three times on large prompts and had to be split into three smaller calls with `builtin_tools: false`)

---

## 1. CONVERGENCE — where all three independently agree

These are the findings that survived three models with different framings and no shared context beyond the briefing. Treat them as the highest-confidence output of this node.

**C1. The omnibus cannot pass as an omnibus, and all three reached this without being asked to evaluate it.**
Mistral: "The author's material **cannot** be enacted as a single bill." Kimi: omnibus route probability "<1% per session," EV "near zero as a bill." GLM: "Never say 'omnibus'" — listed it as crank signal #1 to legislative staff. Convergent recommendation is decomposition into a sequenced multi-vehicle series, not abandonment.

**C2. Offenses defined inside a definitions section are structurally unchargeable.** Mistral is most precise: a prosecutor's charging document must cite a section number containing all elements; a jury instruction is drafted from those elements. A definition supplies meaning to operative provisions — it is not itself an operative provision. Courts will not treat §1.1.x as creating an offense. GLM independently flagged the same thing as a competence signal to staff. This is the single most consequential technical finding in the node: **§1 as currently structured produces zero prosecutable offenses regardless of its content.**

**C3. ~120 offenses must collapse to roughly 8–14 core offenses plus aggravating factors.** Mistral gives the actual consolidation table (reproduced below). Kimi arrives at the same place from the political side: "stage the list — 3–5 offenses per session, each tied to a named Utah case, rather than 123 at once." The mechanism differs (Mistral: merger/double-jeopardy/vagueness doctrine; Kimi: political digestibility) but the number is the same.

**C4. The Citizen Council (§9) as drafted is the highest-priority fix.** Mistral routes it to Title 77 (Criminal Procedure) as a procedural chapter with judicial review. Kimi calls it "the single kill shot" and gives the specific engineering fix: keep the 12-citizen Council and the "no prosecutor's permission needed" energy, but route every coercive act through a judge — Council findings trigger mandatory referral to an independent special prosecutor appointed by a judge from outside the jurisdiction. GLM lists it as crank signal #3. All three agree the *function* is preservable and the *form* is not.

**C5. The multi-vehicle split is: criminal offenses (Title 76) / immunity + civil remedy (Title 63G, 78B) / procedure (Title 77) / constitutional amendment (joint resolution).** Mistral built this explicitly. GLM's 20-page document outline assumes it ("Flag every provision that requires a constitutional amendment versus straight statute"). Kimi assumes it in the multi-bill sequencing.

**C6. Preemptive scope-limitation is the persuasion mechanic, not argument.** GLM's leave-behind makes "What the bill does NOT do" a required element. Kimi's wedge design is defined by what it excludes. Mistral's redrafts all carry explicit safe harbors. The convergent insight: for this subject matter, **the boundaries of the bill are more persuasive than its contents.**

**C7. The 130,000 words retain a real role — as a drafting source compendium, never as the ask.** GLM: its real audience is the OLRGC drafting attorney and fiscal analyst, "never shown to a member... You bring it to the OLRGC meeting, not the member meeting." Kimi: "Treat completeness as credibility, but never hand anyone the 130k words as the ask." Both convert the document's size from a liability into an asset by relocating its audience.

---

## 2. DISAGREEMENT — the real conflicts

**D1. What the wedge bill actually is. (Kimi vs. GLM — unresolved, and it matters.)**

- **Kimi's first choice: Recording-Right Interference**, drafted at ~4 pages with the definitional chassis embedded (`government actor`, `under color of law`, plus an express statutory denial of immunity for a personal civil claim). Kimi's argument is that the definitions are the smuggled cargo — once those terms plus one immunity waiver exist in the Utah Code, every later bill is a short *amendment to an existing framework*, which is procedurally and psychologically far easier than enacting a new edifice.
- **GLM's implied wedge: pension and office forfeiture on felony conviction** — it wrote the meeting scripts around this and treated it as the obvious narrow ask.

These are genuinely different theories of the wedge. Kimi optimizes for **definitional infrastructure** (what the statute lets you build next). GLM optimizes for **ease of passage** (what is hardest to vote against). Kimi explicitly anticipated and rejected the GLM-style logic for a different candidate, arguing that a wedge with no liability precedent "creates no liability precedent, so it's second, not first."

**Assessment:** Kimi's reasoning is stronger and is the one to carry forward — it is the only one that articulates a *mechanism of unlock* rather than just a probability of passage. But GLM's instinct is not wrong about relative difficulty: the recording bill contains an express immunity waiver, which is the fight Kimi elsewhere says to defer. The synthesis position: **run the recording bill as the wedge, and run pension/office forfeiture as the companion bill in the same session** — it is nearly free to add, it is the easier vote, and it gives the carrier a guaranteed win to bank if the recording bill stalls. GLM's leave-behind was written with swap instructions for exactly this, so both versions exist below.

**D2. Which civil-law model to copy. (Mistral internally inconsistent.)** Mistral recommends the **French** Chapter II structure as the cleanest template, then separately develops the **Italian art. 323** repeal as the most important comparative lesson — and the Italian lesson ("do not create a general 'abuse of office' offense") partially undercuts the French model, whose Section 2 is a general abuse-of-authority structure. The reconcilable reading: copy French *architecture* (separate harm-to-administration from harm-to-individuals from breach-of-probity; ~15 narrow articles) while heeding the Italian *warning* (no residual catch-all; every offense needs a specified predicate and a concrete harm).

**D3. Study resolution first, or go straight to a carrier?** GLM's meeting scripts assume direct carrier recruitment now. Kimi says run both in parallel and is explicit about why: "The two failure modes are opposite: a carrier without study cover gets a bill disapproved in Rules or massacred in committee; a study without a carrier produces a nice transcript and nothing else." Kimi's parallel-track answer is better reasoned and subsumes GLM's.

**D4. Whether the author should ever mention the full document in a legislator meeting.** GLM says the one thing that ends the meeting is revealing the 120-reform roadmap — it recategorizes the author from "prepared constituent" to "activist with an agenda I can't control." Kimi is less absolute, treating the completed instrument as a credibility asset. GLM's version is the safer operational rule and it supplies the exact replacement line (below).

---

## 3. THE BEST SINGLE IDEA FROM EACH

**Mistral — the four-way drafting signature test.** The author has conflated four distinct legal constructs, and Mistral gives a *mechanical* way to tell them apart by their opening words, so the 426KB definitions section can be triaged line by line without legal judgment:

| Construct | Drafting signature (how it starts) | Where it belongs |
|---|---|---|
| **Definition** | "As used in this chapter, 'X' means…" | General definitions section |
| **Rule of construction** | "For purposes of this chapter, X shall be construed as…" | General provisions |
| **Evidentiary presumption** | "A factfinder may presume that X if Y is proven…" | Evidence rules / procedure title |
| **Offense** | "A person commits [offense name] if…" | Numbered operative offense section |

This is the highest-leverage tool in the node. It converts an unbounded editorial problem into a sorting pass.

**Kimi — the wedge as definitional smuggling.** "Operation Checkmate's definitions section *is* the project." The wedge bill is not a compromise or a down payment; it is a delivery vehicle for `government actor`, `under color of law`, and one express immunity waiver. Once those exist in the Code attached to a single narrow claim, subsequent bills cite them instead of arguing for them, and Utah appellate courts start building the architecture on the author's terms in the course of ordinary litigation. This reframes decomposition from *losing most of the bill* to *installing the foundation first* — which is the only framing consistent with the author's fixed goal.

**GLM — "What the bill does NOT do" as a required section.** On a one-page leave-behind for a subject this politically loaded, the negative-space section does more work than the affirmative one. It preempts the objections in the legislator's head before they form, and it demonstrates that the author has thought about the limits of his own proposal — which is precisely the trait staff are screening for.

---

## 4. MISTRAL — CODIFICATION AND ARCHITECTURE

### 4.1 Codification principles violated

**Definitions vs. operative provisions.** What actually happens in court when an offense lives in a definitions section: the charge fails for lack of notice, because the charging document must cite a section number that contains all elements of the offense. Fix: every offense moves to its own numbered operative section. Terms used in only one offense get defined inside that offense section; only terms used across multiple sections go to general definitions.

**One offense per section.** Required for charging (a charging document cites one section), jury instructions (each offense needs a discrete element set), double jeopardy analysis (merger and lesser-included analysis needs clean section boundaries), and future amendment (a later legislature must be able to amend one offense without touching the other 52).

**The chargeable-section skeleton.** A section must contain: (1) the prohibited conduct (actus reus); (2) a mental state attached to each element; (3) attendant circumstances ("while acting under color of law"); (4) a result element if harm is required; (5) a penalty grade; (6) definitions of any new term used.

**Overlap, merger, double jeopardy.** With many offenses covering the same conduct, the *Blockburger* test, the merger doctrine, and the rule of lenity all bite. Four drafting fixes: (a) ensure each offense has at least one unique element; (b) use aggravating factors instead of separate offenses; (c) include express lesser-included provisions; (d) eliminate catch-all offenses.

### 4.2 The consolidation — ~120 offenses into 14 core offenses

| Core offense | Author's offenses folded in |
|---|---|
| **1. Abuse of Official Power** | Cabalism, Caesarism, Despotism, Authoritarianism, Aristocratism, Statism, Non-Republican Government Act, Government Racketeering, Official Intimidation, Badge Coercion, Escalation Misconduct, Algorithmic Authority Abuse, Emergency Power Abuse, Public Health Emergency Authority Abuse, Election Authority Abuse |
| **2. Corruption in Office** | Cronyism, Nepotism, Clientelism, Kleptocratism, Extractivism, Revenue Extraction Under Color of Law |
| **3. Obstruction of Justice** | Obstruction, Process-Stacking, Retaliatory Charge Fabrication, Record Distortion, Forensic Truth Corruption, Wrongful-Conviction Chain Liability, Malicious Prosecution, Judicial Imposter |
| **4. Unlawful Arrest or Detention** | Arbitrary Action, Unlawful Arrest by Warrant, Trespass, General Warrant, Inversion of Constitutional Sequence, Carceralism |
| **5. Pretextual Government Action** | Pretextualism, Proceduralism, Formalism, Legislating from the Bench |
| **6. Government Propaganda and Censorship** | Propagandism, Censorism |
| **7. Government Gang Activity** | Government Gang Activity |
| **8. Incompetence in Office** | Incompetence in Office, Oath Negligence, Failure of Transparency, Recording-Right Interference |
| **9. Treason Against the State** | Treason, Anarchy, Terrorism |
| **10. Assault or Battery by Official** | Assault, Battery, Reckless Force Deployment |
| **11. Theft or Misuse of Public Funds** | Embezzlement, Misappropriation, Eminent-Domain Valuation Manipulation |
| **12. Violation of Oath of Office** | Civic Breach of Trust, Oath Negligence |
| **13. Discrimination in Office** | Discrimination, Institutional Retaliation |
| **14. Invasion of Privacy by Official** | Recording-Right Interference (surveillance aspect) |

*(Node observation, not Mistral's: #8 and #12 overlap on Oath Negligence, and #8 and #14 both claim Recording-Right Interference. Also #9 duplicates existing Utah offenses — Mistral separately recommends dropping Treason/Anarchy/Terrorism as already covered. The table needs one dedup pass before use.)*

### 4.3 Multi-vehicle architecture

**Vehicle 1 — Title 76 (Criminal Code), Chapter 8 "Offenses Against the Administration of Government"**
- Part 1 General Provisions: definitions; rules of construction ("official position is not a defense," "orders are not a defense"); mens rea default; supervisor liability
- Part 2 Core Offenses: the 14 offenses above, one per section
- Part 3 Penalties and Forfeitures: grading and enhancements; forfeiture of benefits; limitations provisions

**Vehicle 2 — Title 63G Chapter 7 (Governmental Immunity Act):** abolition of sovereign immunity for criminal acts; qualified immunity limitation; personal liability

**Vehicle 3 — Title 77 (Criminal Procedure), new chapter:** Citizen Council restructured — establishment, powers, mandatory referral to prosecuting authority, judicial review of council actions; pretrial release rules for charged officials

**Vehicle 4 — Title 78B (Judicial Code):** evidentiary presumptions in official-misconduct cases; forfeiture procedures; the §12 death-of-a-citizen provision as a wrongful-death cause of action; retroactive civil applicability

**Vehicle 5 — Joint Resolution (constitutional amendment):** whatever genuinely cannot be done by statute

**Disposition of the author's blocks:**

| Author's block | Destination | Reason |
|---|---|---|
| Statement of Intent | Legislative findings / not enacted text | Preambles are not enforceable |
| §1 Definitions (53 offenses) | Split: true definitions → Part 1; offenses → Part 2 sections | Offenses cannot live in definitions |
| §2 Due Process | Split: evidence rules → 78B; procedural duties → 77 | Not criminal offenses |
| §3 Mens Rea | Title 76 rule of construction | Not an offense |
| §4 Knowing & cognate terms | General definitions | Not an offense |
| §5 Liability & Penalty | Split: immunities → 63G; pretrial rules → 77 | Not criminal offenses |
| §9 Citizen Council | Title 77, new chapter, judicial routing | Procedural, not substantive |
| §10 Retroactive civil applicability | Title 78B civil remedies | Not criminal |
| §11 Forfeiture | Split: criminal forfeiture → 76; civil → 78B | Dual-track liability |
| §12 Death of a citizen | Wrongful death (78B) | Tort, not crime |
| §15 Constitutional amendment | Joint resolution | Cannot be done by statute |
| §16 Nullity | Title 63G / APA, as declaratory judgment | Administrative, not criminal |
| §17 Role-Specific Offenses | Fold into the 14 core offenses | Avoid overlap and merger problems |
| Treason / Anarchy / Terrorism | **DROP** | Already covered by existing Utah offenses |
| Statism / Caesarism / Despotism | **DROP as offenses** | Too abstract; fold into Abuse of Power (Kimi: relocate to legislative findings) |

### 4.4 Civil-law comparative — the actually important lesson

**Italy, art. 323 c.p. (abuso d'ufficio) — the most valuable comparative data point available to this author.** Trajectory: enacted broadly in 1990 ("violation of laws or regulations"); narrowed 1997 to require intentional violation and concrete harm; narrowed again 2020 to require violation of specific conduct rules with no discretionary margin; **repealed entirely in 2024.** The stated reasons were overbreadth, unpredictable enforcement, and — critically — *paura della firma* ("fear of the signature"), the documented phenomenon of officials refusing to sign or decide anything for fear of prosecution.

The lesson, stated bluntly: **a broad abuse-of-office offense is not a stable equilibrium.** It gets narrowed, then repealed, and along the way it produces the opposite of accountability — paralysis rather than diligence. A drafter who wants durable official-accountability law must build it from specified predicates and concrete harms, not from a residual catch-all. This directly implicates the author's `Arbitrary Action`, `Non-Republican Government Act`, and the `-ism` offenses, which are structurally identical to pre-1997 art. 323.

**Germany, §339 StGB (Rechtsbeugung).** Narrow elements: a judge or official who, in conducting a legal matter, bends the law to the advantage or disadvantage of a party. Companion offenses: §340 Körperverletzung im Amt (bodily injury in office), §343 Aussageerpressung (coercing statements), §344 Verfolgung Unschuldiger (prosecution of the innocent), §345 Vollstreckung gegen Unschuldige (execution against the innocent).

**Correction to Mistral on the German point.** Mistral described the *Sperrwirkung* doctrine as meaning only intentional miscarriages qualify. That understates and partly inverts it. *Sperrwirkung* ("blocking effect") means that where a judge's conduct occurs through a judicial decision, the judge cannot be convicted of ancillary offenses (e.g., deprivation of liberty) **unless** §339 Rechtsbeugung itself is established. In practice §339 functions as a *shield* for the judiciary, and BGH standards for proving it are extremely demanding, making convictions vanishingly rare. **This is a cautionary model, not an aspirational one** — it is the outcome the author would get if a narrow judicial-misconduct offense were enacted without careful attention to how it interacts with other charges. Worth an explicit drafting instruction: any Utah judicial-misconduct offense should state expressly that it does not displace or preempt other applicable offenses.

**Spain, prevaricación.** Art. 404 CP (administrative) and art. 446 CP (judicial): an official who *a sabiendas* (knowingly) issues an *injusticia manifiesta* — manifestly unjust resolution. The transplantable element is the **"manifestly unjust" objective anchor combined with an actual-knowledge mental state** — it targets the official who knows the decision is wrong, not the one who is merely wrong, which is exactly the line the author's `Incompetence in Office` fails to draw. Mistral's stated penalty for art. 404 (imprisonment 6 months–2 years) is **incorrect** — art. 404 imposes disqualification (inhabilitación especial), not imprisonment. Flagged below.

**France, Code pénal Livre IV, Titre III, Chapitre II.** The transplantable feature is the three-section *architecture*, which is a genuinely better organizing principle than anything in the author's draft:
- **Section 1** — Abus d'autorité dirigés contre l'administration (abuse of authority against the administration itself)
- **Section 2** — Abus d'autorité commis contre les particuliers (abuse of authority against private persons): arbitrary detention, discrimination, violation of the home, violation of correspondence
- **Section 3** — Manquements au devoir de probité (breaches of the duty of probity): concussion, passive corruption, illegal taking of interest, favoritism in public contracts, misappropriation of public property

**Sorting official misconduct by whom it harms — the state, the individual, or the public trust — is the structural idea worth importing.** Mistral's specific article numbers are partly wrong; see flags below. Use the section structure, not the citations.

### 4.5 Vagueness-proofing techniques

| Technique | Mechanism |
|---|---|
| **Objective anchors** | Tie the offense to an external measurable standard ("without probable cause as defined in [cite]") |
| **"Clearly established" hooks** | Require violation of a right clearly established by a specific prior appellate decision — borrows the qualified-immunity standard and turns it into an element |
| **Pattern requirements** | Require multiple acts / a continuing course of conduct, not a single decision |
| **Predicate-act structures** | Require that the conduct violate an independently identified law |
| **Materiality / substantiality thresholds** | Require the conduct be material to an outcome |
| **Specified-harm requirements** | Require concrete harm (injury, dollar loss, wrongful conviction) — never "undermining public trust" |
| **Safe harbors** | Explicit exceptions for identified lawful conduct |

Why offenses aimed at officials are a special vagueness problem: the targeted conduct is typically **discretionary and facially lawful**, and courts are deferential to official discretion. The wrongfulness lives in the reason for the act, not the act — which is precisely what a vague statute cannot capture and a well-drafted one must.

### 4.6 The three redrafts (Mistral's enactable text)

> Section numbers below are placeholders. Real numbers must come from OLRGC — the ones shown collide with existing Utah Code sections.

**(a) Pretextual Government Action**

*Author's intent:* criminalize an official who states one reason for an action while acting on another.
*Failure mode:* no objective standard for "pretext"; no harm requirement; would reach any decision where stated and actual reasons diverge (a zoning vote whose stated reason is traffic and whose real reason is something else); severe arbitrary-enforcement risk — prosecutors could target political opponents.

```
76-8-xxx. Pretextual government action.
(1) A government actor commits pretextual government action if the actor,
    while acting under color of law, knowingly:
    (a) states a false reason for an official act in a public record or
        sworn statement;
    (b) takes the official act for a different reason than the one stated; and
    (c) the act deprives a person of a clearly established constitutional or
        statutory right.
(2) For purposes of this section:
    (a) "Clearly established constitutional or statutory right" means a right
        that is:
        (i) defined by the Utah Constitution, the United States Constitution,
            or a Utah statute; and
        (ii) recognized as such by a Utah appellate court decision issued
             before the date of the official act.
    (b) "Official act" means an exercise of governmental power that:
        (i) affects the legal rights, duties, or obligations of a person; and
        (ii) is not a ministerial act.
(3) Pretextual government action is a:
    (a) class A misdemeanor; or
    (b) third degree felony if the offense results in:
        (i) bodily injury;
        (ii) the loss of $10,000 or more in property or economic value; or
        (iii) the wrongful conviction or imprisonment of a person.
```

*(Mistral also drafted an affirmative defense keyed to advance disclosure to the Attorney General. Node assessment: that one is impractical — it would require officials to pre-clear reasoning with the AG, which no official would do and no AG could staff. Recommend dropping it and relying on the "clearly established" element to do the limiting work.)*

**(b) Government Gang Activity**

*Author's intent:* apply Utah Code 76-9-802's criminal-street-gang pattern provisions to government actors in concert.
*Failure mode:* no pattern requirement (two officials, one act); no predicate offense (reaches any coordinated action, including lawful); overlaps conspiracy (76-4-201) creating double-jeopardy problems.

```
76-8-xxx. Government gang activity.
(1) A government actor commits government gang activity if the actor, with
    two or more other government actors, knowingly:
    (a) engages in a pattern of abuse of official power; and
    (b) does so for the purpose of:
        (i) suppressing dissent or opposition to government policy; or
        (ii) circumventing a constitutional or statutory limitation on
             government power.
(2) For purposes of this section, "pattern of abuse of official power" means:
    (a) two or more acts of abuse of official power under Section 76-8-[core]; and
    (b) the acts are not isolated incidents but reflect a continuing course
        of conduct.
(3) Government gang activity is a second degree felony.
(4) This section does not apply to:
    (a) lawful collective bargaining by public employees; or
    (b) lawful joint action by government actors pursuant to a duly enacted
        statute or regulation.
```

**(c) Incompetence in Office**

*Author's intent:* criminalize an official who causes harm by failing to know or apply the law they are sworn to administer.
*Failure mode:* no mental state (reaches negligent mistakes); no harm requirement (reaches trivial error); duplicates civil malpractice liability. *(Kimi separately flags that the author's current version scales to a capital offense and identifies this as the pull-quote opponents will put on a flyer.)*

```
76-8-xxx. Incompetence in office.
(1) A government actor commits incompetence in office if the actor, while
    acting under color of law:
    (a) recklessly fails to know or apply a law that the actor is sworn to
        administer; and
    (b) the failure directly and proximately causes:
        (i) the death of a person;
        (ii) serious bodily injury to a person; or
        (iii) the loss of $50,000 or more in property or economic value.
(2) For purposes of this section, "recklessly" means that the actor:
    (a) was aware of a substantial and unjustifiable risk that the law applied
        to the actor's conduct; and
    (b) disregarded that risk in a manner that constitutes a gross deviation
        from the standard of care that a reasonable government actor would
        observe.
(3) Incompetence in office is a:
    (a) class A misdemeanor if the offense results in serious bodily injury or
        a loss of $50,000 or more; or
    (b) third degree felony if the offense results in the death of a person.
(4) This section does not apply to:
    (a) a good faith error of law or fact; or
    (b) an act or omission that is the subject of a final judicial
        determination that the act or omission was lawful.
```

---

## 5. KIMI — CAMPAIGN DESIGN

### 5.1 Route comparison

All probabilities are Kimi's estimates for eventual substantive enactment over 4–8 years, conditioned on this specific advocate.

| # | Route | Cost | Time to first win | P(enactment) | EV |
|---|---|---|---|---|---|
| 1 | Omnibus bill | ~$0 / 100 hrs | Never realistically | <1%/session | Near zero as a bill; high as a reference document |
| 2 | **Multi-bill series** | ~$0 / 800 hrs over 4 yrs | 12–20 months | 20–35% | **Highest** |
| 3 | Constitutional amendment first | ~$0 / 300 hrs | 2+ years | <5% | Low — a *higher* threshold than statute for content that mostly doesn't need constitutional cover |
| 4 | Citizen initiative | $1.5–3M / 5,000+ hrs | 18 months | 1–2% to qualify without money | Low as enactment; medium as organizing engine |
| 5 | Litigation-driven | ~$350 filing (waivable) / 1,000+ hrs | 2–5 yrs per doctrine | 10–20% | Medium; pairs well with route 2 |
| 6 | **Interim-committee study first** | ~$0 / 150 hrs | 6–12 months | Raises route 2 by est. +10 pts | **Highest per hour** |
| 7 | Administrative rulemaking | ~$0 / 100 hrs | 6–12 months | <5% | Low — agencies cannot create crimes or strip their own immunity |
| 8 | **Think-tank adoption** | ~$0 / 200 hrs | 12–15 months | est. 40–60% *if adopted* | **Second highest** |
| 9 | Carrier legislator, direct | ~$0 / 200 hrs | 12 months | est. ~10% alone | Medium; a component, not a strategy |
| 10 | Party-convention route *(Kimi added)* | ~$0 / 200 hrs | 8 months | est. +5–10 pts on route 2 | High for $0 |
| 11 | Elect/recruit the carrier *(Kimi added)* | ~$0 / 300 hrs | 14 months | Low to find, high value if found | Medium-high upside |

**Two routes Kimi added that were not in the brief and are worth attention:**
- **#10 Party convention.** Utah's caucus/convention system is one of the last places in the country where an unfunded citizen can generate real leverage over a supermajority legislature: pass resolutions at county GOP conventions, recruit delegates, make candidates answer for the issue.
- **#11 Recruit the carrier at the candidate stage.** All 75 House seats are up in November 2026. A legislator who owes their seat to the issue is worth ten lobbied incumbents. This window closes in November and does not reopen for two years.

**Recommendation:** primary = **route 2 (multi-bill series) opened by route 6 (interim study)**; hedge = **route 8 (think-tank adoption)**, pursued simultaneously because it is the same meetings either way. Hold the initiative as a *credible threat*, never actually file it. Do not open routes 1, 3, or 7.

Kimi's note on the initiative route deserves emphasis: even a successful Utah initiative is a statute the Legislature can amend or repeal by simple majority the following session (2018 Props 2 and 3 precedent). It is not a shortcut around the Legislature.

### 5.2 The wedge

**Concept:** the smallest operative statute that (a) passes because no one can afford to vote against it, (b) plants the load-bearing legal definitions into the Utah Code, and (c) manufactures the political assets the next bill needs.

**First choice — Recording-Right Interference.** ~4 pages:

```
§1  Definitions — "government actor," "under color of law,"
    "protected recording activity"          [the definitional chassis]
§2  A citizen may record any government actor performing public duties in a
    public place or a place the citizen has a right to be.
§3  Prohibited conduct — threatening, detaining, citing, seizing or deleting a
    device or data, or retaliating because of recording.
§4  Civil action for damages against the actor personally; qualified,
    governmental, and sovereign immunity are not a defense to this claim;
    attorney fees to a prevailing citizen.
§5  Knowing or reckless violation = class B misdemeanor.
§6  No preemption of other remedies.
```

*Why it's hardest to vote against:* "Do you oppose citizens filming the police?" unites the liberty delegate and the progressive voter. Colorado passed a recording-damages bill in 2015 (HB 15-1290). Police lobbies have difficulty going to the mat against *recording* specifically.

*Mechanism of unlock:* (i) **definitional precedent** — `government actor`, `color of law`, and an express immunity denial now exist in the Utah Code; bills 2 through 8 cite them instead of arguing for them; (ii) **doctrine** — real cases generate Utah appellate opinions interpreting the author's defined terms, so the courts build the architecture for him; (iii) **coalition** — co-sponsorable by a liberty Republican and a Salt Lake Democrat, and that photo is what makes the next bill credible; (iv) **champion** — whoever carries it owns the accountability lane and wants the sequel.

**Second choice — misconduct data-transparency and reporting mandate.** Mandatory reporting to POST and annual public reporting of decertifications, sustained misconduct findings, Brady/Giglio list counts by agency, recording-interference complaints, exonerations and causes. No new crimes, no liability. *Unlock:* an annual report is an annual news cycle and an annual legislative hook — every future bill gets to say "the state's own data show N incidents." Easiest vote on the list, but creates no liability precedent. **Run as the companion bill in the same session as the wedge.**

**Third choice — record distortion / evidence integrity (Michael Morton-style).** Criminalizes knowing falsification, alteration, concealment, or non-disclosure of evidence by a government actor. *Unlock:* first criminal statute aimed personally at prosecutors — breaks the hardest taboo in the project. Third because the county attorneys will fight it hardest, so it benefits from an existing champion and study hearing.

**Why the obvious candidates are wrong:**
- **Codifying/expanding *Spackman* (state constitutional damages, no qualified immunity):** the correct doctrinal core of §5, and homegrown to Utah — but as an *opener* it is the single biggest lobby fight available. Every city, county, and police association activates; an unknown author with no champion loses and spends his credibility. **Right target, wrong first move.** This is bill #2 or #3, run in 2028–2029 with a study transcript and coalition behind it.
- **Oath-violation prima facie rule:** a burden-of-proof rule with no victim story, no headline, and an easy demagogue line ("they want officials presumed guilty"). Procedural rules only pass as riders on sympathetic vehicles.
- **Retaliatory charge fabrication:** deeply sympathetic, but prosecutors will correctly say it's unprovable and chills charging decisions. Loses without a champion.
- **Wrongful-conviction chain liability:** chains of liability trigger the tort-reform reflex in a Republican supermajority. Later, and probably civil-only.
- **A standalone narrow "color of law" definition:** legislators do not file bills that define a term with no operative provision; Rules will disapprove it as pointless. **The definition must ride inside an operative bill** — which is exactly the first-choice design.

### 5.3 The study-resolution opening

**Verdict: yes for an unknown citizen — but run it in parallel with carrier recruitment, not instead of it.**

*What it buys:* legitimacy (you stop being "a guy with a PDF" and become "the citizen who brought the item the Judiciary Interim Committee heard in September" — a sentence that opens every subsequent office door); free professional analysis (OLRGC attorneys staff interim committees, so trained drafters work your text at zero cost and tell you what will draw a constitutional note); a quotable public record; opponent mapping (whoever testifies against you is your opposition list, identified early, on the record, for free); relationships (the two or three members who lean in during your hearing are your carrier shortlist).

*What it costs:* up to a year of latency; opponents organize too; real dilution risk — committees love to study a bill into a report that recommends nothing.

*Failure modes and mitigations:* (a) item never placed — wrong committee or asked too late; (b) placed but never scheduled — show up every month and ask publicly when it's calendared; (c) hostile witness stacking — bring your own three named witnesses; (d) study concludes "no action needed" — mitigate by making the ask a **specific bill draft**, not "study accountability."

*Conversion to a bill:* the committee can open a **committee bill file**, which gets priority treatment in session; or the championing member opens a numbered bill with OLRGC. Make the conversion ask on the record at the hearing's end — "Will the committee open a bill file, or will a member carry this?" — so the answer lands in the minutes.

*Mechanics of getting on an agenda as a private citizen:*
1. Target **Law Enforcement & Criminal Justice Interim** and **Judiciary Interim** (Government Operations Interim later, for amendment pieces). Membership changes after November 2026 — re-pull the roster in late November.
2. Interim committees adopt study agendas at their first post-session meetings in spring, with the master list approved by Legislative Management. Missing that window costs a year — for 2027 you are operating within the *existing* agenda, so the ask is to add an item or have a member sponsor the request.
3. **Only members place items.** Email and then *meet* the chair and liberty-streak members with a one-page study request (problem, proposed statute, three Utah facts, specific ask). Constituent status matters — your own district's members first.
4. Attend in person and use public comment. Two minutes, one-pager in hand, every month, same committee. **Attendance is the currency of the no-money advocate.**
5. Session-time conversion: if the wedge stalls in a standing committee in Jan–Feb 2027, ask a friendly member to **hold the bill and send it to interim study** — a standard face-saving move that converts a death into a study item.

### 5.4 Four-year success definition

**Year 1 (Aug 2026 – Mar 2027) — "Become a stakeholder of record."** Wedge drafted to 4 pages; ≥6 legislator meetings; ≥3 interim public comments; one formal study-item request; one meeting each with Libertas, ACLU of Utah, Rocky Mountain Innocence Center; one op-ed placed; wedge filed or formally promised by December 2026.
*Going well = a legislator's office calls **you** back once.*

**Year 2 (2027 session + interim) — "Get heard."** Wedge gets a standing-committee hearing (passage is upside, not the metric); if held, lands on an interim agenda by June 2027; transparency companion introduced; ≥3 co-sponsors including one cross-party name; 1,000+ sign-ons **in the carrier's district specifically**.
*Going well = a police association or county attorneys' lobbyist testifies against you. That's threat recognition, and it's measurable.*

**Year 3 (2028) — "First statute."** Wedge *or* transparency bill passes (either counts); first civil claim filed under it within 12 months; second offense package (record distortion + retaliatory fabrication) gets a hearing; a law student or professor writes it up.
*Going well = the annual report or first lawsuits produce a Utah news story with a legislator quoted saying "we should look at this."*

**Year 4 (2029–2030) — "Framework."** 3+ statutes sharing the §1 definitions; the *Spackman*-codification/immunity bill gets a real hearing; the Citizen Council successor (court-supervised special-prosecutor trigger) introduced; one other state copies a piece; supporter list ≥10,000 with county-level density.
*Going well = you are no longer the author in the room; a think tank and a carrier are advancing it and you are a witness.*

**Leading indicators (real):** OLRGC drafting requests opened; committee agenda placements; co-sponsors; fiscal note requested; lobbyists registering against; staff attorneys emailing you questions; **your defined terms appearing in other people's bill drafts**; interim committee opening a bill file.

**Vanity metrics (fake):** GitHub stars, PDF downloads, AI-chat uploads, total petition counts unmapped to districts, social shares, friendly op-eds with no legislator follow-up, "great meeting!" with no next step, endorsements from organizations that don't lobby at the Utah Capitol, website traffic. *"None of these has ever moved a bill out of Rules."*

### 5.5 Next 30 days (2026-08-01 → 2026-08-31)

**Week 1 (Aug 1–7) — Build the wedge.**
1. Draft the Recording-Right Interference bill to ~4 pages, pulling definitions verbatim from `sections/02-section-1-definitions.md` so wedge and omnibus share DNA.
2. Write the one-page leave-behind: problem (3 sentences), bill (5 bullets), Utah hook (1–2 in-state recording incidents), the ask ("will you request a draft from OLRGC?").
3. Look up your own House/Senate members (le.utah.gov district lookup). Request in-district meetings by email *and* phone: "I'm a constituent with a drafted bill."
4. Email meeting requests to Libertas Institute policy staff, ACLU of Utah, and the Rocky Mountain Innocence Center. **Attach the one-pager, not the 130k-word bill.**

**Week 2 (Aug 8–14) — Show up.**
5. Pull the August interim calendar (verify date on le.utah.gov). Plan to attend Judiciary Interim and Law Enforcement & Criminal Justice Interim.
6. Assemble 2–3 Utah-specific facts: Utah recording incidents, POST decertification counts, any Utah exoneration timeline. GRAMA request if needed — cheap, and the request itself is a story.
7. Write the 2-minute public comment and rehearse to 110 seconds.

**Week 3 (Aug 15–21) — The Capitol.**
8. Attend both interim meetings. Sign up for public comment. Deliver the 2 minutes. Hand the one-pager to **committee staff** — the staffer, not the member, is the real audience. Collect cards.
9. Hold the week-1 meetings. Same concrete ask every time: "Will you carry this, or do you know who would?" At Libertas: **"What would you change to make this yours?"**
10. Email the Law Enforcement Interim chair and vice chair the formal one-page study-item request for the fall agenda.

**Week 4 (Aug 22–31) — Second ring + checkpoint.**
11. Request meetings with 3 more members — liberty-streak Republicans on the two target committees (verify current roster; look for sponsors of federalism, forfeiture, or data-privacy bills).
12. Recruit 3 named Utahns with recording-interference or retaliation stories for future testimony. **One real face is worth 10,000 petition emails.**
13. Draft a 550-word op-ed pegged to a recent Utah incident; submit to Salt Lake Tribune guest commentary and Deseret News.
14. **Aug 31 go/no-go checkpoint.** If you have a carrier commitment → they request the OLRGC draft in September and you shift to building the testimony bench. If not → file the study-item request with both committee chairs, ask Libertas to co-brand, and prepare the November post-election roster refresh (new members = new carrier candidates; meet winning 2026 candidates in December, before session).

### 5.6 Unrecognized assets

1. **A finished, versioned, public instrument.** Almost every citizen advocate arrives with a grievance; this one arrives with a drafted statute under release versioning. OLRGC staff and think-tank counsel can mark up real text immediately, collapsing the usual six-month "what exactly do you want?" phase. The AI-uploadable distribution method in the README is genuinely novel constituent lobbying — a legislator's intern can interrogate the bill in five minutes.
2. **A pre-built cross-ideological coalition map.** The `culture/` directory (BLM, libertarian right, financial hardship, public servants, LGBTQ, religious communities) is the bridge document set campaigns pay consultants five figures to produce. Government unaccountability is one of maybe three issues where Utah's left and its liberty right genuinely overlap — the HB 57 electronic-data-privacy coalition proves it. **The author already speaks every room's language.**
3. **Utah-specific terrain that already agrees with him.** *Spackman* means Utah courts have already accepted a self-executing constitutional damages remedy — the §5 "radicalism" is doctrinally an extension of homegrown Utah law, not an import. The caucus/convention system gives a broke citizen cheap leverage over a supermajority. Interim committees take public comment from anyone who shows up. And the Legislature is small enough (104 members) that one persistent human can personally meet a quarter of it.

### 5.7 Structurally fatal in current form — with fixes

**F1. Citizen Councils with arrest, warrant, and indictment powers, plus immunity for refusing to comply with §16-null instruments.** *The single kill shot.* Politically, one lobbyist's thirty seconds — "this bill creates armed citizen arrest squads and lets people declare laws void" — ends the omnibus regardless of disclaimers. Legally, delegating coercive state power to self-convened private bodies runs into private-nondelegation doctrine, and the refusal-to-comply immunity is the exact textual signature of sovereign-citizen theory the FAQ correctly disavows.
**Fix:** keep the 12-citizen Council, the name, and the "no prosecutor's permission needed" energy — but route every coercive act through a judge. Council findings → mandatory referral to an independent special prosecutor appointed by a judge from outside the jurisdiction (**Kansas's citizen-petition grand jury and Wisconsin's John Doe proceeding are the working American precedents — cite them, they exist and function**); subpoenas and warrants issued by the court on Council petition; conviction review reframed as a statutory innocence-commission referral with defined legal effect. **Delete the refusal-to-comply immunity entirely**; make §16 a declaratory-judgment action. *Nothing of substance is lost — the point was enforcement that doesn't depend on the accused's colleagues, and a judge-triggered special prosecutor delivers exactly that.*

**F2. §15 supremacy-over-federal-law and entrenchment; §10 blanket retroactivity with no limitations period.** Three separate constitutional defects, each of which earns a hostile legislative constitutional-review note — which is how staff quietly kill bills. Federal supremacy within Utah is dead on arrival; preemption is not arguable. Entrenchment cannot bind future legislatures and reads as anti-democratic. Retroactive criminal exposure and revival of time-barred claims hit *Stogner v. California* ex post facto limits.
**Fix:** reframe supremacy as a **more-protective state floor** — Utah may be more protective under its own constitution than the federal floor; that's ordinary dual sovereignty and completely defensible. Replace entrenchment with standard severability plus a hortatory statement of legislative intent (all entrenchment could ever legally be anyway). Make no-limitations **prospective only**; make retroactivity **civil-only with a defined lookback window** (the New York Child Victims Act model — enacted, litigated, survived). *These are drafting changes, not concessions of substance.*

**F3. Vagueness and overcriminalization across ~123 named offenses.** "Assault" defined as causing a citizen to feel they must defend their rights; "Incompetence in Office" scaling to a capital offense; the `-isms` (Statism, Censorism, Cabalism, Propagandism) as criminal offenses. Every undefined-emotion element is void-for-vagueness exposure, and **the capital-incompetence provision is the pull-quote opponents will put on a flyer.**
**Fix:** tighten every offense to objective elements (act + breached defined duty + recklessness-or-higher mens rea + concrete harm); cap penalties at felony levels proportionate to harm; **move the `-isms` to legislative findings and the Statement of Intent, where they do rhetorical work without creating charging exposure**; stage the list at 3–5 offenses per session, each tied to a named Utah case. The omnibus stays on GitHub as the north star; the Utah Code gets it in slices it can digest.

**F4 (meta, not in the text). The author is the project's single point of failure.** By end of year 2 the goal is that a think tank, a carrier, and three witnesses can each advance a piece without him in the room. *"A movement of one is a hobby; build the bench from week 1."*

---

## 6. GLM — COMMUNICATION ARTIFACTS

### 6.1 The three documents that must exist

**ONE-PAGE.** *Audience:* a legislator, 15-minute meeting or Zoom; they give the page **90 seconds**. *Job:* produce exactly one sentence — "Have your staff look at this and get back to me." A second meeting. Nothing more.

| Section | Length | Contents |
|---|---|---|
| §1 The Problem | 4 lines | One Utah-specific fact pattern. A real case, audit finding, or gap in Utah Code. **No adjectives.** |
| §2 The Solution | 6 lines | Four bullets. Each is one mechanism the bill creates. Plain English, one verb each. |
| §3 The Cost | 2 lines | One number, or "revenue neutral — no new agency." If unknown: "fiscal note pending — designed to be cost-neutral." |
| §4 The Support | 3 lines | Two or three named allies. If none: "seeking interim committee referral." |
| §5 The Ask | 2 lines | "Will you review the 5-page summary with your staff? I'll deliver it to your office by Thursday." |

*Failure mode:* reads like a manifesto — "For too long, the people of Utah have suffered under a corrupt system…" The member nods, says "fascinating," and your call goes to voicemail forever. **It must read like a staffer wrote it for a member, not like a citizen wrote it for the world.**

**FIVE-PAGE.** *Audience:* the sponsor's chief of staff or legislative aide, and committee staff; **15–20 minutes**. *Job:* "This is worth a bill file" — staff tells the member to request OLRGC drafting time, or asks to place it on an interim workgroup agenda.

| Section | Length | Contents |
|---|---|---|
| §1 Problem With Evidence | 1 p. | 3–5 Utah-specific facts, each with a source (audit report, AG opinion, missing Code section, dated news investigation). End with: "The gap is [Utah Code Title __, Chapter __]." |
| §2 Solution — Numbered Provisions | 1.5 p. | 5–7 provisions. Each: what it does, which Title it amends or creates, one sentence on why that mechanism and not another. |
| §3 How It Works — One Scenario | 0.5 p. | A single concrete hypothetical walked end to end, so a staffer can picture it operating. |
| §4 Fiscal and Constitutional Issues | 1 p. | Fiscal impact with methodology in two sentences. Flag every provision needing a constitutional amendment vs. straight statute; note the 2/3 requirement; say which provisions move as statute alone. |
| §5 Path and Stakeholders | 1 p. | Which standing committee, which interim committee. Who supports, who opposes, **the opposition's main argument stated fairly, then answered in one sentence.** |

*Failure mode:* still argumentative, no Code citations, no fiscal estimate. Staff concludes the author doesn't understand how bills become law in Utah and buries it; the member never hears about it again.

**TWENTY-PAGE.** *Audience:* the OLRGC drafting attorney, a fiscal analyst, interim committee staff analyst; also a coalition partner vetting mechanics; **1–2 hours**. *Job:* "We can draft from this."

| Section | Length | Contents |
|---|---|---|
| §1 Legislative Intent and Severability | 1.5 p. | Plain-language purpose, draft intent clause, severability keyed to Utah's general severability provision |
| §2 Section-by-Section Statutory Analysis | 7 p. | Half-page per provision: (a) Code section amended/created, cited precisely; (b) what it does, 2 sentences; (c) policy rationale, 2 sentences; (d) **drafting notes for OLRGC** ("conform to style of §63G-2-101"). Model bill language for at least the five most important provisions. |
| §3 Constitutional Amendment Track | 2 p. | Exact proposed constitutional text; article and section amended; draft ballot title; 2/3 path analysis; voter approval; earliest possible ballot. Flag any provision that cannot survive as statute alone and explain why. |
| §4 Fiscal Note Methodology | 2 p. | What the analyst needs, by category. Comparisons to analogous programs in other states. **State assumptions explicitly so the analyst can adjust them.** |
| §5 Implementation Timeline | 1.5 p. | Effective dates by provision; rulemaking required and by which agency; transition provisions for cases pending at enactment. |
| §6 Conflicts and Cross-References | 1 p. | Every Utah Code provision that conflicts, is superseded, or needs conforming amendment. Grouped by title. |
| §7 Stakeholder Map | 1.5 p. | Support, opposition, undecided. Opposition's argument in their own terms, then the response in one sentence. Named Utah organizations. |
| §8 Drafting Instructions to OLRGC | 1.5 p. | A numbered list the member's office hands directly to the drafter. "Open bill file: [short title]. Amend Title 63G, Chapter __. Create new chapter __." |

*Failure mode:* still a white paper — narrative policy argument with no model statutory language and no cross-references. **The drafter can't work from it because there's nothing to edit.** It comes back with "please provide bill language" and stalls for months. It must look like a drafting brief a lobbying firm would produce — structured around code sections, not around grievances.

### 6.2 What the 130,000 words are for, and how to say it

*Role:* the **drafting source compendium** — full statutory text, research behind each offense, model language for every provision. Its real audience is the OLRGC drafting attorney, the fiscal analyst, and interim committee staff who need to pull specific language when building bill files. **It is never shown to a member.** It sits behind the 20-page version as the reference shelf. You bring it to the OLRGC meeting, not the member meeting.

*The exact sentence to say out loud:*

> "I did the full drafting work — model statutory language for every provision, mapped to existing Utah Code — so legislative counsel can edit rather than start from a blank page; it's a reference compendium, and the one-pager is the ask."

### 6.3 The three crank signals to legislative staff, and the fixes

1. **"Omnibus" with 120 offenses, statute and constitutional amendment in one vehicle.** Staff sees someone who doesn't know that bills move one topic at a time and that amendments are separate resolutions. **Fix:** break into 3–5 standalone bills plus one joint resolution; lead with the single most viable statutory provision; present the rest as a multi-session roadmap. **Never say "omnibus."**
2. **No Utah Code citations, no "BE IT ENACTED" format, no cross-references to statutes being amended.** Staff sees a pamphlet, not a bill. **Fix:** format the lead bill in Utah legislative style — title, purpose clause, "Be it enacted by the Legislature of the state of Utah," section-by-section with Code references. The OLRGC bill drafting manual is public. Even rough statutory formatting signals competence.
3. **Abolishing immunity, citizen prosecution councils, bypassing the AG — provisions that collide with Utah's constitutional structure without acknowledging it.** Staff sees someone who hasn't read the Utah Constitution. **Fix:** for every provision touching constitutional structure, include a short paragraph naming the issue, the specific article implicated, and the amendment pathway. Say: "This provision requires a constitutional amendment because [Article __, Section __]." **Don't pretend statute alone gets you there. Staff respects someone who knows the limits.**

### 6.4 THE ONE-PAGE LEAVE-BEHIND (full text, ready to print)

---

> # UTAH GOVERNMENT TRANSPARENCY ACT
> ### A narrow, limited-government bill to protect every Utahn's right to record public officials performing public duties in public.
>
> **WHY THIS BILL**
>
> Government officials performing public duties in public have no reasonable expectation of privacy. When those officials threaten, detain, or seize the phones of citizens who are recording lawful public activity, Utah taxpayers pay the settlement bills. This bill shifts accountability to the individual official. It does not expand government, create a new agency, or appropriate funds. It puts the burden of lawful conduct on the people who draw a public paycheck — exactly where limited-government principles say it belongs.
>
> Utah has led the nation before: first-in-nation civil asset forfeiture reform, the first state electronic data privacy law, the first free-range parenting statute. This is that same tradition — individual liberty, government restraint, Utah first.
>
> **WHAT THE BILL DOES**
>
> - **Establishes a right to record.** A citizen may record a government official performing public duties in a public space.
> - **Prohibits official retaliation.** No official may threaten, detain, cite, arrest, seize, or damage a recording device, or delete or destroy a recording, because of lawful recording activity.
> - **Creates a personal civil action.** A citizen whose rights are violated may sue the official **personally**.
> - **Strips immunity.** Qualified immunity and any other official immunity are **expressly unavailable** as a defense. The official answers in their individual capacity.
> - **Creates criminal accountability.** A knowing violation is a class B misdemeanor.
>
> **WHAT THE BILL DOES NOT DO**
>
> - **Does not apply to private spaces.** The right covers public duties performed in public. Private residences, private property, and non-public internal areas are excluded.
> - **Does not protect interference.** Recording that physically obstructs an official in the performance of duties is not protected.
> - **Does not apply to private citizens.** This bill governs the conduct of government officials only.
> - **Does not create a new agency, commission, or oversight body.** Zero new bureaucracy.
> - **Does not touch active investigations or protected records.** It does not override any existing statutory protection for sensitive law-enforcement operations, evidence, or classified information.
>
> **FISCAL NOTE**
>
> No general fund appropriation required. No new state positions. By shifting liability to the individual wrongdoer, the bill is expected to **reduce** settlement costs currently borne by Utah taxpayers.
>
> **UTAH PRECEDENT**
>
> Utah led the nation on civil asset forfeiture reform, electronic data privacy, and free-range parenting. This is the next first-in-nation reform in that line.
>
> ---
>
> **THE ASK: Will you carry the Utah Government Transparency Act in the 2027 General Session?**
>
> **CONTACT**
> [NAME] · [PHONE] · [EMAIL]
> [CITY / DISTRICT]

---

**SWAP BLOCK — if running the pension & office forfeiture bill instead.** Replace these sections; everything else stays.

*SUBHEAD:*
> A narrow, limited-government bill to ensure public officials convicted of felonies committed in the course of official duty forfeit taxpayer-funded pensions and are permanently barred from state office.

*WHY THIS BILL, second paragraph:*
> When a public official commits a felony in the course of their official duties, Utah taxpayers should not fund that official's retirement. This bill closes a gap in current law: an official who abuses the public trust for personal gain and is convicted of a felony forfeits the state-funded portion of their pension and is permanently ineligible for any state office.

*WHAT THE BILL DOES:*
> - **Forfeits taxpayer-funded pension.** A public official convicted of a felony committed in the course of official duty forfeits the state-funded portion of their pension. Personal contributions are returned to the official; the taxpayer-funded portion is forfeited.
> - **Permanent office ineligibility.** Permanently barred from holding any state office or state employment.
> - **Conviction is the trigger.** Forfeiture attaches upon a final felony conviction. No administrative process, no discretionary review. The court's verdict is the mechanism.
> - **Narrow scope.** Applies only to felonies committed in the course of official duty. Does not touch personal conduct unrelated to public office.

*WHAT THE BILL DOES NOT DO:*
> - **Does not apply to misdemeanors or off-duty conduct.**
> - **Does not touch personal contributions.** Money the official paid in from their own paycheck is returned.
> - **Does not create a new agency or oversight body.** Forfeiture is automatic upon conviction.
> - **Does not apply retroactively.** Applies to convictions occurring on or after the effective date.
> - **Does not alter existing criminal statutes or penalties.** It adds a consequence to an existing conviction, not a new crime.

*FISCAL NOTE:*
> No general fund appropriation required. No new state positions. Expected to produce a marginal savings to the state retirement system by terminating taxpayer-funded pension obligations for convicted felons.

> ⚠️ **Before using the swap block, verify what Utah's public pension forfeiture law already does.** The "closes a gap in current law" claim is unverified — see flags §7.

### 6.5 THE EMAILS (full text)

**Email 1 — initial meeting request**

> **Subject:** Constituent in [DISTRICT] — 15-min meeting request, narrow accountability bill
>
> Dear Senator [LAST NAME],
>
> I live in [CITY], in your district. I've spent the last year researching government-accountability reforms that fit Utah's existing legal framework, and I'd like to ask you to carry a narrow, focused bill in the 2027 General Session.
>
> The bill does one thing: [ONE-SENTENCE DESCRIPTION OF THE WEDGE]. It's about six pages, it amends existing Utah statute, and it requires no new spending. It aligns with the limited-government principles you've consistently supported.
>
> I'm not asking you to carry a package or a constitutional amendment. I'm asking you to carry one clean bill. I've drafted the language, a section-by-section summary, and a list of likely opposition arguments. I'll bring copies and keep it to 15 minutes. I can meet wherever is convenient for you in the district.
>
> Can I put 15 minutes on your calendar in the next few weeks?
>
> Thank you,
>
> [FULL NAME]
> [PHONE]
> [EMAIL]
> [HOME ADDRESS]

**Email 2 — follow-up, 10 days later, no reply**

> **Subject:** Re: Constituent in [DISTRICT] — 15-min meeting request
>
> Dear Senator [LAST NAME],
>
> I know your inbox is full, so I'll be brief. I'm following up on my request for a 15-minute meeting about a narrow government-accountability bill for the 2027 session.
>
> One new thing since I last wrote: I've compiled a one-page list of Utah-specific cases where this exact problem has occurred. All Utah, no national stuff. Happy to send it ahead if that would help you decide whether the meeting is worth your time.
>
> If a sit-down is tough to schedule, I can send the bill draft and summary to your office for staff review and follow up by phone. Whatever's easiest for you.
>
> Just reply with a yes, no, or "send me the one-pager" and I'll work with whatever you say.
>
> Best,
>
> [FULL NAME]
> [PHONE]

*Design notes:* the subject line establishes constituent status, scope, and time cost in eight words. "I'm not asking you to carry a package or a constitutional amendment" preempts the largest fear before it forms. The follow-up adds new value rather than repeating the ask, and its closing line makes replying cheaper than ignoring — a three-word reply is a valid response.

### 6.6 THE MEETING — the three expected questions

**Q1. "So what exactly do you want me to run?"**
*Why:* they need to know whether this is a scoped bill or a wish list, and whether you understand the difference between an idea and a bill.

> "Senator, I'm asking you to run a single, narrow bill. It does one thing — [ONE-SENTENCE MECHANISM]. The bill is about six pages. It amends existing statute — it doesn't create a new system, a new agency, or a new fund. I've drafted the language. I'm not asking you to touch immunity broadly, not asking you for a constitutional amendment, not asking you to do a hundred things. This is step one. One bill, one policy change."

**Q2. "Who else is with you on this? Is this just you?"**
*Why:* political risk assessment. A lone constituent with a personal grievance is a liability; an organized group is an opportunity. They need to know which is sitting across from them.

> "It's me. I'm not a lawyer, I don't have a PAC, I don't have a Twitter following, and I'm not going to pretend I have a coalition when I don't. What I have is a year of research and a clean draft, and I'm starting to talk to other people in the district about it. Here's where I'm being honest with you: I can't build a real coalition without a bill number. Once there's a bill, I can go to liberty groups, I can talk to county party leadership, I can do the grassroots work — I'm willing to do all of that. But I need a sponsor first. I know that's a chicken-and-egg problem, and I know it's an ask. I'm asking you to be the egg."

**Q3. "What's the pushback going to look like?"**
*Why:* every legislator who has ever carried a bill has been surprised by opposition they didn't see coming. They want to know you've thought past "I have a good idea."

> "The main opposition will come from [THE RELEVANT ASSOCIATION]. Their argument will be [THEIR BEST ARGUMENT, STATED FAIRLY]. My response is [THE ANSWER, ONE SENTENCE]. The second pushback will be 'this is a solution in search of a problem.' My answer to that is the Utah-specific case list I brought — real cases, not hypotheticals. I'm not going to sit here and tell you there's no opposition. I'm going to tell you the opposition has a weak argument, I've already prepped the responses, and I'll be standing next to you when they make it."

### 6.7 THE MEETING — three questions he will not expect

**U1. "Have you talked to Representative [NAME] or Senator [NAME] about this yet?"**
*Why it comes:* two checks at once — are you shopping this behind my back (trust and turf), and is there another member who'd be a more natural fit (which saves them the risk of being first)? **Never lie; legislators talk to each other and will find out.**

> "I haven't. I wanted to start with you because you're my senator and because your record on [SPECIFIC BILL OR VOTE] told me you take accountability seriously. If you'd rather I talk to other members first and come back to you, I'm happy to do that. I just didn't want to go around you in your own district."

**U2. "Is this about something that happened to you personally?"**
*Why it comes:* screening for a personal vendetta dressed as public policy. Grievance bills are radioactive — hard to defend, attract hostile media, make the sponsor look like they're carrying someone's private fight. **If the answer is yes and you can't pivot, the meeting is functionally over.** If there is a personal story, give it **one sentence** and redirect.

> "No, nothing happened to me personally. I got into this because I was reading about [SPECIFIC UTAH CASE] and I was genuinely surprised there was no consequence. That sent me down a research road, and here I am. This isn't about one official or one case. It's about closing a gap that I think most Utahns would be shocked to learn is still open."

**U3. "If I carry this, are you going to be at every hearing, lining up witnesses, making calls — or are you handing me this and disappearing?"**
*Why it comes:* they've been burned. Constituents pitch with passion and vanish when session starts and the real work begins, leaving the legislator to defend the bill alone. **Commit specifically. Don't overpromise. Name the one thing you won't do.**

> "I'll be at every hearing. I'll testify if you want me to. I'll line up witnesses — I already have a short list. I'll make constituent calls to committee members. I'll be in the hallway talking to other members, and I'll prep you with a one-page brief before every hearing. The one thing I won't do is speak for you on strategy — that's your call, you're the one putting your name on it. But I will do the work. You will not be carrying this alone."

### 6.8 THE ONE THING HE MUST NOT SAY

> ❌ **"This is just the first piece — I've got 120 reforms and a constitutional amendment ready to go after this one passes."**

*Why it ends the meeting:* the senator instantly recategorizes him from "prepared constituent with a focused ask" to "activist with an agenda I can't control." Every alarm fires at once: *If I carry this, I'll be pressured to carry the next piece and the next. My name gets attached to a movement I didn't sign up for. This person will never be satisfied with one bill. They'll be back every session and resent me when I won't carry the rest.* The meeting is over because the risk-reward calculation has become all risk.

*Replacement line:*

> ✅ "I've done extensive research on broader accountability reform — well over a hundred thousand words — and I'm happy to share any of it with you if you're ever interested. But what I'm asking you to carry today is this one bill. What comes next, if anything, is a separate conversation for a separate day. Right now, this is six pages and one policy change, and that's the whole ask."

### 6.9 THE CLOSING SENTENCE

> "Senator, I'll leave the draft and the one-pager with you today — can I follow up with your office in two weeks for a yes or no on carrying this, and I'll bring whatever revisions your staff suggests to the next conversation?"

*It does three things: leaves a physical artifact, sets a specific follow-up date so the next contact is expected rather than intrusive, and pre-commits to accepting staff edits — which signals he is workable, the single most important thing a first-time carrier needs to believe.*

---

## 7. VERIFICATION FLAGS

### 7.1 Known errors in model output — corrected above, do not propagate

| Claim | Source | Status |
|---|---|---|
| French Code pénal art. 432-1 = *prise illégale d'intérêts*; 432-2 = *favoritisme*; 432-5 = *discrimination*; 432-6 = *inviolabilité du domicile*; 432-7 = *secret des correspondances* | Mistral | **WRONG.** Art. 432-1 is abuse of authority against the administration (measures to defeat the law). The individual-harm offenses run roughly 432-4 (arbitrary detention), 432-7 (discrimination), 432-8 (violation of the home), 432-9 (correspondence); probity offenses run 432-10 (concussion) through 432-15 (misappropriation). **Mistral self-flagged 432-1 as unverified and its second-run Section 3 numbers are closer than its first-run table. Use the three-section architecture; verify every article number against Légifrance before citing.** |
| Spain art. 404 CP penalty = "imprisonment 6 months–2 years plus disqualification 6–10 years" | Mistral | **WRONG.** Art. 404 imposes *inhabilitación especial* (disqualification), not imprisonment. The transplantable element is the *a sabiendas* + *injusticia manifiesta* standard, not the penalty. |
| German *Sperrwirkung* = "only intentional miscarriages qualify" | Mistral | **MISLEADING.** *Sperrwirkung* means §339 **blocks** conviction for ancillary offenses arising from a judicial decision unless Rechtsbeugung itself is proven — it functions as a judicial shield. This is a cautionary model, not aspirational. Corrected in §4.4. |
| Utah severability is at "76-1-301 or Title 68 Ch. 3" | GLM | **PARTLY WRONG.** Utah's general severability provision is in Title 68 Chapter 3; 76-1-301 is not it. Verify the exact section. |
| "Earliest possible ballot November 2026" for a constitutional amendment | GLM | **WRONG given the timeline.** A resolution passed in the 2027 session cannot reach a November 2026 ballot. Verify the actual next available general-election ballot. |
| Section numbers `76-8-201`, `76-8-207`, etc. | Mistral | **Format is valid Utah style, but these numbers collide with existing Utah Code sections in Title 76 Chapter 8.** Real numbers must be assigned by OLRGC. Treat all section numbers in §4 as placeholders. |
| Email 1: "I've had an attorney friend do a quick formatting review" | GLM | **Removed from the version above.** Do not make this claim unless it is true — it is exactly the kind of small fabrication that destroys credibility when tested. |
| "Utah forfeits pensions in other contexts — we already do this" / "an official convicted of corruption can still collect their full pension" | GLM | **UNVERIFIED.** Both halves of the pension-forfeiture pitch depend on what Utah's public retirement statutes already provide. Verify before the swap block is used or the claim is spoken in a meeting. |
| Debra Brown as "first Utah DNA exoneree" | Kimi | **UNVERIFIED / likely imprecise.** Believed to be the first person exonerated under Utah's factual innocence statute, which is not the same as a DNA exoneration. Verify before use in testimony. |

### 7.2 Utah-specific claims this node could not verify

- Utah initiative thresholds — Kimi states ~8% of active voters statewide **and** in 26 of 29 Senate districts (~140–150k signatures) and self-flagged it for verification with the Lt. Governor's office. Kimi's related claim that **Utah has no citizen-initiated constitutional amendment** (initiative power is statutory only) is consistent with my understanding but should be confirmed.
- That the Legislature can amend or repeal an initiative-enacted statute by simple majority the next session (Kimi cites the 2018 Props 2 and 3 precedent). Directionally right; confirm the mechanics.
- Interim committee meeting cadence ("roughly the third Wednesday," Aug 19 2026) — Kimi flagged this for verification on le.utah.gov.
- Whether interim study agendas for 2026 are already locked, and whether an item can still be added in August. This determines whether the 30-day plan's step 10 is viable or already foreclosed.
- Current membership of Law Enforcement & Criminal Justice Interim and Judiciary Interim — and note Kimi's point that **rosters change after November 2026**, so any grid built now needs a late-November refresh.
- Whether a Utah interim committee can open a **committee bill file** with priority treatment in session (Kimi asserts this).
- Existence and current content of a public OLRGC bill drafting manual (GLM asserts it is public).
- Whether Utah currently has any right-to-record statute, and what Utah POST reports publicly on decertifications — both are load-bearing for the wedge's "gap in current law" framing.

### 7.3 Non-Utah claims worth confirming before citing

- Colorado HB 15-1290 (2015) right-to-record damages bill — Kimi's characterization is consistent with my understanding.
- Colorado SB 20-217 (2020) and the New Mexico Civil Rights Act (2021) as the state-constitutional-damages / immunity-waiver models — both real and correctly characterized.
- Texas Michael Morton Act (2013) — real, correctly characterized.
- Kansas citizen-petition grand jury and Wisconsin John Doe proceedings as working American precedents for citizen-initiated investigation routed through a judge — **this is the single most valuable citation in the node for fixing the Citizen Council, and it should be verified first.** If both exist as described, §9 becomes defensible by analogy to enacted American law rather than novel theory.
- Italy: art. 323 c.p. narrowed 1997 and 2020, repealed 2024. Consistent with my understanding; the repeal is recent enough to warrant a source check.
- *Stogner v. California* (2003) — real, and correctly limited to criminal ex post facto revival. The New York Child Victims Act as the civil-lookback-window model is also correctly characterized.
