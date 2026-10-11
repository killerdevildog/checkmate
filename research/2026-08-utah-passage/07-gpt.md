# 07 — GPT-FAMILY CONSULT NODE
## Operation Checkmate / Utah passage strategy

**Node:** GPT-family (OpenAI models only)
**Date run:** 2026-08-01
**Output:** synthesis of three consults, with a Utah-accuracy audit

---

## 0. PROVENANCE AND CAVEATS — READ FIRST

Three consults were run as tasked, but model routing degraded and the parent should
weight the results accordingly.

| # | Intended | Actually ran | Notes |
|---|---|---|---|
| 1 | GPT via OpenRouter, effort high, web-enabled | **GPT-5.4** via Blackbox gateway, 4 web searches | OpenRouter account is at **-$0.20** (no credits). GPT-5.5-Pro is **403 policy-blocked** on the Blackbox gateway. GPT-5.4-Pro **timed out** at high effort. GPT-5.4 has **no reasoning support** — the `effort` parameter was silently ignored. |
| 2 | Codex, reasoning_effort high | **Codex, high** — ran clean | Best output of the three by a wide margin. |
| 3 | GPT adversarial war-game | **GPT-5.4** via Blackbox, 4 web searches | First attempt was **content-filtered** by Azure (violence filter, medium) on the words "war game / brutal / kills the bill / attack." Re-run with neutral framing succeeded. |

**Implication:** Consults 1 and 3 come from a *non-reasoning* mid-tier GPT with a thin
search budget. Consult 2 (Codex) is the only high-effort reasoning output in this node.
Where Codex and the GPT-5.4 runs disagree, **Codex should generally be trusted on
mechanics** and the GPT runs treated as a politics/rhetoric layer only.

**Also:** my own WebSearch budget for the session was exhausted (200/200) before I could
independently verify most Utah specifics. I verified what I could by direct fetch. The
audit in §5 is therefore *incomplete* — treat every unverified item as unverified.

---

## 1. CONVERGENCE — HIGHEST CONFIDENCE

These points were reached independently by all three consults. Treat as the node's
firm findings.

### 1.1 The 130,000-word document is a specification, not a bill
All three, unprompted, reached the same metaphor. Codex: "a source specification from
which OLRGC-ready modules are compiled." GPT-1: "a source code repository" / "the
private constitution of the campaign." The document's function is to be the authoritative
record of intent that individual bills are *compiled from* — it is never introduced.

Codex adds the operational form: a **traceability ledger** giving every provision a
permanent source ID (`OC-1.1.13-E4`) and a crosswalk to bill / proposed Code section /
disposition / dependency / status. Nothing is ever deleted from the ledger merely because
it doesn't belong in statutory text. This directly serves the author's interest — it means
decomposition is *lossless*, not a surrender.

### 1.2 The narrative preamble does not go in the bill
Unanimous. Codex grounds it: the Utah drafting manual discourages legislative
findings/intent and directs drafters to express the rule through operative provisions,
suggesting some intent statements go in the **legislative journal** rather than getting
statutory force. Codex's split — sponsor memo / committee packet / journal statement /
narrow codified findings tied to a specific operative section — is the usable version.

Codex's single best line here: replace "It is the intent of the Legislature that this
offense be construed narrowly" with **"A court shall construe this section narrowly."**
Same effect, operative form.

### 1.3 The abstract `-ism` offense names cannot survive as statutory text
**Three-way convergence, strongest finding in this node.** Every consult independently
identified the `-ism` vocabulary as the primary failure point, for three different reasons:

- Codex (drafting): definitions aren't enforceable and abstract nouns don't elementize.
- GPT-1 (politics): the vocabulary is coded and makes Utah Republicans stop listening.
- GPT-3 (opposition): it is the vagueness attack, and it is the one the sponsor
  **cannot win rhetorically**.

Critically, all three agree the *concepts survive* — only the labels die. Codex shows the
mechanism concretely:

| Author's term | Statutory offense name | Method |
|---|---|---|
| Pretextualism | **Pretextual official action** | closed list of official actions + stated-basis/actual-basis divergence + materiality + knowledge |
| Formalism | **Knowing false certification of procedural compliance** | identified legal duty + certification + substantive event didn't occur + knowledge + materiality to a denial |
| Government Gang Activity | coordinated official misconduct / corruption conspiracy under color of office | — |
| Carceralism | overcriminalization / coercive plea leverage / unaccountable detention power | — |
| Kleptocratism | theft under color of office / misuse of public funds / self-dealing | — |
| Statism | abuse of state power / government overreach without accountability | — |
| Caesarism | concentration of unchecked executive power | — |
| Proceduralism | abuse of process / process used as punishment | — |

Codex's anti-vagueness toolkit is the actionable part: `means` not `includes` in the core
conduct element (Utah Code § 68-3-12 makes `includes` nonexclusive [UNVERIFIED cite]);
no "and other conduct of a similar nature"; tie unlawfulness to a *cited* statute/
constitutional provision/court order; attach a mental state to every material element;
materiality thresholds; specified causation; examples moved to commentary.

### 1.4 The Citizen Council as drafted is the single biggest tripwire
Unanimous, and each consult independently ranked it the #1 obstacle. GPT-3 ranks
"strip Citizen Councils of coercive criminal-process powers" as the **top vote-buying
amendment** and assesses its substantive cost to the author as "very high."

The three consults converge on the same replacement ladder, in the same order:

1. citizen complaint review panel
2. mandatory public-integrity referral duties
3. citizen petition for appointment of a **special prosecutor** through existing courts
4. **judicially supervised citizen grand-jury petition process**
5. independent public-integrity office with audit + court-issued subpoena power
6. only then the broader structural question

The powers that must come out at step 1 are: issuing warrants, arresting, indicting, and
compelling prosecution. The powers that survive: complaint intake, hearings, publication,
court-approved compulsory process, and referral to AG / county attorney / POST / JPEC /
bar counsel / state auditor.

Codex routes this differently and better: the Council isn't "conceded," it's **classified
`C1` — effective only after constitutional amendment approval** — and moved into a
separate contingent package. That keeps the full-strength version alive as a later
contingent enactment rather than trading it away in year one.

### 1.5 Immunity: carve-out first, abolition later
Unanimous against leading with wholesale abolition. The convergent first step is a
targeted waiver for **intentional / knowing / corrupt** conduct — fabrication, perjury,
Brady suppression, fraud on the court, retaliation, theft, self-dealing — with good-faith
discretionary acts protected. Then expand to reckless disregard. Then constitutionalize.

### 1.6 The constitutional amendment must be a separate joint resolution and must go last
Unanimous. Codex is emphatic on the mechanics: it must be an **H.J.R. or S.J.R.**, not
"Section 15" of an ordinary bill. Implementing statutes then carry contingent effective
dates keyed to voter approval. GPT-1 puts it in 2030, after a three-year statutory record
exists to defend it.

Both also converge that the **entrenchment clause** should entrench *principles*, not the
whole Act — GPT-3 recommends removing it outright as it invites maximum institutional
opposition at once and is the cleanest "these drafters know this can't survive normal
checks and balances" attack line.

### 1.7 Mens rea is the universal solvent
Both the drafting node and the opposition node land on the same fix: a scienter floor
("knowingly and with corrupt purpose") simultaneously defeats (a) the vagueness attack,
(b) the recruitment-and-retention attack, (c) the "makes the job undoable" attack, and
(d) the volunteer-planning-commissioner attack. One amendment, four opposition points
neutralized. This is the highest-leverage single change identified in this node.

Note this collides with the author's §4 — see §6.1 below.

### 1.8 Bill #1 must be small, dependency-free, and independently useful
Codex states the governing rule most sharply: **"Every enacted bill must remain useful if
no later Checkmate bill passes."** Combined with his dependency classes (`D0` = works
under existing law with no other Checkmate provision), this gives an objective test for
what may be in Bill #1.

Page budget (Codex, engineering targets, no statutory maximum): 6–15 pages preferred for
one offense/remedy/procedure; 10–25 pages the target for maximum enacted substance;
over 35 pages, divide.

---

## 2. CONTESTED — FLAG FOR THE PARENT

### 2.1 What Bill #1 actually is — THE CENTRAL DISAGREEMENT

This is a genuine strategic fork and the nodes split cleanly on it.

**Codex (engineering-optimal): a criminal offense.**
`76-19-201 Official coercion` — the coercive core extracted from §1.1.13 Official
Intimidation: using threatened official action to obtain compliance the actor knows the
law doesn't authorize. Rationale: fewest dependencies; needs no Citizen Council, no
constitutional amendment, no immunity change; fits directly in Title 76; conventional
intent/knowledge; closed conduct categories; and there is an **existing-law symmetry** —
Utah already criminalizes threats intended to influence a public servant as a class A
misdemeanor (§ 76-8-104 [UNVERIFIED]). The bill is a mirror of a statute Utah already has,
which is a powerful committee argument.

**GPT-1 (politically-optimal): a reporting mandate.**
"Utah Public Integrity and Constitutional Violations Reporting Act" — statewide mandatory
reporting and public dashboard for substantiated misconduct findings, Brady/Giglio issues,
warrant-affidavit defects, dismissals for constitutional violations, discipline referrals,
decertification referrals, and **taxpayer-funded settlement payouts** including
indemnification and outside-counsel fees.

GPT-1's mechanism argument is the strongest single strategic idea in this node: the bill
is an **evidence-manufacturing machine**. It converts the campaign's opening line from
"here are some internet stories" into "under Utah's own reporting law there were X
substantiated dishonesty findings and Y taxpayer-funded payouts last year — here is the
county-by-county map." It creates an annual report that becomes the standing committee
exhibit for bills 2–N, localizes the issue to each legislator's own district, and builds a
coalition (taxpayer hawks + transparency + civil liberties) that no single offense bill can.
It also creates a vote-trap: legislators who vote yes on *counting* misconduct are exposed
if they later oppose *acting* on it.

**Assessment:** these are not mutually exclusive and the disagreement may be false. The
reporting bill has a near-zero fiscal note in its narrow form, attracts a different
opposition set (municipal recordkeeping burden, not sheriffs), and can be routed to a
different committee than the offense bill. **Running both in 2027 is likely correct** —
the offense bill establishes the substantive precedent, the reporting bill builds the
evidence base. If only one can run, the tiebreak is whether a sponsor already exists:
a reporting bill is far easier to get a first-time sponsor to carry.

### 2.2 Retroactivity — three different answers
- **GPT-3 (adversarial):** eliminate it. Prospective only. Ranked amendment #4.
- **GPT-1 (strategy):** preserve it narrowly as a **civil revival window** tied to
  *concealed* misconduct, suppressed evidence, fraud on the court, or falsified records.
- **Codex (engineering):** keep it, but **architect it as separately severable** so an
  ex post facto ruling isolates to that provision and cannot take down the prospective act.

**Codex's answer is strictly better** and the parent should adopt it. It's the only one
that preserves the author's substance *and* survives. The specific rule: criminal offenses
apply only prospectively; any retrospective civil application lives in its own subsection
or its own bill, identifies the exact past conduct and claim period, and carries an express
non-linkage clause. Utah Code § 68-3-3 presumes non-retroactivity absent express
declaration [UNVERIFIED cite].

### 2.3 Definitions-first shell — Codex says no, and only Codex addressed it
The task assumed a possible "enact the definitions chapter first as a shell" strategy.
**Codex explicitly rejects it:** a definitions-only chapter regulates no conduct, delivers
no protection, and creates an amendment target before it delivers anything defensible.
Bundle the stable core definitions with their first consuming offense. Never enact an
unconsumed placeholder definition.

His stub-and-extend pattern: define locally when a term has one consumer; **promote** it
into the chapter definitions section only when a second offense needs it, and amend the
first offense's reference in the same bill. Uncontested but unreviewed by the other nodes.

### 2.4 Statute of limitations
GPT-1 phases it (tolling for concealment → no SOL for enumerated corruption offenses →
broader). GPT-3 says restore a standard SOL entirely. Codex treats SOL as a separately
severable component. Contested; Codex's severability framing again dominates.

### 2.5 The name
GPT-1 says do not use "Operation Checkmate" as the public-facing brand and do not make
legislators own the phrase. Codex notes the short title **must be neutral and is assigned
by OLRGC anyway** — so this is decided by process, not choice. The author should know the
title does not survive into the bill regardless. It survives as the campaign's internal
name and the ledger's namespace.

---

## 3. SINGLE BEST IDEA FROM EACH CONSULT

### From Codex — the ratchet-down severability architecture
The most valuable idea in this node, and it is *pro-author*, not a concession.

Ordinary severability asks a court to strike a provision and leave a hole. Codex's
alternative: **enact the narrower fallback as actual contingent law**, so invalidation
steps *down* a ladder rather than deleting the provision.

```
Penalty ratchet:
  If a court holds the second degree felony classification invalid,
  the offense is a third degree felony if that classification is valid;
  if that is also invalid, the offense is a class A misdemeanor.

Immunity ratchet:
  Tier A: no immunity for the defined claim.
  Tier B: if Tier A is finally held invalid as to a defined class of
          judicial acts, the cause of action applies only to acts outside
          adjudicative jurisdiction, or to prospective relief.
  Tier C: if damages are unavailable, declaratory and prospective
          injunctive relief remain available.
```

Each fallback needs an objective trigger, the deciding court, whether the judgment must be
final, the affected class, the replacement rule, and an effective date. Codex's governing
instruction: *"Do not merely instruct a court to invent a narrower law. Enact the narrower
fallback as actual contingent law."*

This is the mechanism by which the author gets to draft at full strength and still lose
nothing to partial invalidation. It should be the spine of the whole series. Paired with
his severability *schedule* (a ranked survival order — unaffected applications survive,
valid conduct alternatives survive invalid ones, prospective survives retrospective, base
offense survives invalid aggravators, civil survives invalid criminal and vice versa), it
is a substantially stronger §13 than the current draft.

Also from Codex, worth carrying: the requirement that Title 76 offenses be stand-alone
sections structured as (1) definitions, (2) offense name + all elements, (3) penalties
only, (4)+ exceptions/limitations/defenses. That is a mechanical template the author can
apply to all 53 umbrella offenses immediately.

### From GPT-1 — Bill #1 as evidence manufacturing
Covered in §2.1. The reframe is: the first bill's job is not to prohibit anything, it is to
**produce the legislative record that makes bills 2–N evidence-based rather than
anecdote-based**, and to localize the problem to every legislator's own county. The
"county-by-county map" is the specific tactical artifact.

Second-best from GPT-1: the six-bucket reclassification of the 120 offenses into
Utah-legible families — (1) false process / fraud on process, (2) retaliation / coercion,
(3) corruption / self-dealing, (4) rights violations by force or seizure, (5) evidence and
court integrity, (6) patterned misconduct / organized abuse. Buckets become bills. This is
a cleaner decomposition axis than Codex's Part structure and the two should be reconciled.

### From GPT-3 — the pre-computed concession ladder
"The five amendments that buy the most votes," ranked, each with the constituency it peels
off and the explicit substantive cost:

1. **Strip Citizen Councils of coercive criminal-process powers** → peels prosecutors,
   sheriffs, judiciary, rule-of-law Republicans, municipal attorneys. Cost: very high.
2. **Replace abstract offenses with concrete intent-based crimes** → peels prosecutors,
   defense bar, judges, legislative attorneys, Republican lawyers. Cost: high.
3. **Safe harbor for good-faith discretionary acts; waive immunity only for intentional
   corrupt misconduct** → peels prosecutors, cities, counties, sheriffs, volunteer
   officials. Cost: very high philosophically, but most likely to keep the bill alive.
4. **Eliminate retroactivity, restore a defined SOL** → peels municipal lobby, risk pools,
   fiscal conservatives, pension stakeholders. Cost: moderate-high.
5. **Remove automatic collateral consequences; substitute mandatory review with due
   process** → peels law enforcement, bar/judiciary, due-process conservatives.
   Cost: moderate.

The value is that it's a **manager's-amendment script prepared in advance** — the sponsor
walks in knowing exactly what she can trade, in what order, for which votes, at what cost.
GPT-3's other genuinely useful move is naming which attacks are unwinnable on rhetoric
(vagueness; separation of powers on Council warrant/arrest powers; unfunded mandate;
retroactivity/due process) and supplying language rather than talking points for those.

Its most quotable sponsor lines: *"Protect discretion in good faith. Punish corruption in
bad faith."* / *"Accountability is not anti-government; it is what makes constitutional
government legitimate."* / *"You do not protect victims by protecting dirty cases."* /
*"If the state raises the bar, the state should hand local officials the ladder."*

The opposition testimony itself is realistic and worth reading in full for the specific
attack sequencing — the prosecutor's rural-DV-screening anecdote and the municipal
lobbyist's volunteer-planning-commissioner anecdote are the two that actually move Utah
Republicans, and the author should have rehearsed answers to both.

---

## 4. WHAT I ASSESS AS WRONG OR MISDIRECTED

### 4.1 Both GPT runs drifted into "narrow it" despite the constraint
The task and the briefing both forbid "too broad" critique. GPT-3's output is
*structurally* a recommendation to concede the four things the author cares most about
(Citizen Council, immunity abolition, retroactivity, entrenchment). That is defensible as
an adversarial exercise — I asked it to model the opposition — but the parent should not
read GPT-3's "five amendments" as a recommendation. **It is a threat model, not a plan.**

Codex was the only node that solved the actual problem posed: keep the substance *and*
survive. Its contingent-fallback architecture is the answer to GPT-3's concession ladder —
instead of trading Tier A away to buy votes, you enact Tier A with Tier B and Tier C as
contingent law beneath it. The author gives up nothing at enactment and loses only what a
court actually strikes.

### 4.2 GPT-1 tagged nearly everything `[UNVERIFIED]`, including non-facts
It tagged generic strategic statements and even its own recommendations. This dilutes the
signal to near-uselessness as a verification aid — the tags do not distinguish "I might
have hallucinated this Utah fact" from "this is advice." Ignore its tagging; use §5 below.

### 4.3 GPT-1 produced zero named Utah legislators, committees with verified names,
bills, or case cites
The briefing's deliverable #4 (legislator grid) and #5–6 (Utah case law, precedent acts)
are **not served at all** by this node. It named no Utah legislator, no real bill number,
and no Utah case. That's the correct behavior given it couldn't verify — but the parent
must get those from another node. Do not treat this node as having covered them.

### 4.4 GPT-3 likely conflated a state agency with a lobbying association
It proposed the **Utah Prosecution Council** as the statewide prosecutors' lobby. The
briefing names the **Statewide Association of Prosecutors**. These are different things:
the Utah Prosecution Council is a *state entity* providing prosecutor training and support;
the Statewide Association of Prosecutors is the membership association. A state agency does
not lobby against bills in its own name. **The testimony in Part A should be reattributed
to SWAP.** Flagged as likely-wrong; I could not re-verify (search budget exhausted).

### 4.5 Codex's Bill #1 draft contains two collisions with the author's own text
These are design conflicts the author must consciously resolve, not drafting errors:

**(a) The knowledge element vs. §4.** Codex's `76-19-201(2)(d)` requires the actor to
**know** the law does not authorize the threatened action. That is close to requiring
knowledge of law, and it arguably reintroduces exactly the subjective-ignorance defense
the author's §4 (Knowing & Cognate Terms) is written to foreclose. A prosecutor would have
to prove the official knew he lacked authority — which is what "I believed I had authority"
defeats. If the author's §4 knowledge ladder is load-bearing, this element must be
redrafted (e.g., an objective "no reasonable government actor could have believed"
standard, or a duty-to-know anchored to training/POST certification).

**(b) The facially-valid-warrant safe harbor vs. §16 and §1.1.49.** Codex's `(4)(c)`
exempts service or enforcement of a facially valid subpoena/warrant/order unless the actor
knows it was procured by material falsehood. That directly collides with the author's §16
Nullity (instruments repugnant to the Act are void *ab initio*, and enforcement is itself
criminalized) and with §1.1.49 Unlawful Arrest by Warrant. Under the author's theory a
void instrument confers no protection; under Codex's draft it does. Must be reconciled.

Flagging these is not a critique of the author's position — Codex simply drafted toward
conventional Utah criminal-law defaults without knowing §4 and §16 exist.

---

## 5. UTAH-ACCURACY AUDIT

### VERIFIED BY ME (direct fetch, le.utah.gov)

**2027 General Session calendar** — source:
https://le.utah.gov/sessionSchedule/sessdates.jsp

| Date | Event |
|---|---|
| **Tue Jan 19, 2027** | Session convenes |
| Jan 28, 2027 | Base budget bills must pass or be defeated by noon (10th day) |
| **Fri Jan 29, 2027** | Last day to request bills and appropriations without floor approval (noon) |
| Feb 22, 2027 | Last day for legislature to present bills to governor |
| Mar 2, 2027 | Last day for each chamber to consider its own bills |
| **Thu Mar 4, 2027** | Deadline for bills with **$20,000+ fiscal notes** (noon) |
| **Fri Mar 5, 2027** | Final action on appropriations; **session ends** |
| Mar 25, 2027 | Governor's deadline to sign or veto (20 days after adjournment) |

This **confirms Codex's calendar claims** (Jan 19 convene, Mar 5 adjourn, the $20k
fiscal-note day-44 deadline). Two operational consequences the parent should carry forward:

- The **Jan 29, 2027 noon bill-request deadline** is the hard gate. A sponsor who has not
  opened a file by then needs floor approval. This makes the Aug–Dec 2026 sponsor hunt
  the critical path, exactly as GPT-1's month-by-month plan assumes.
- Any Checkmate bill will carry a **fiscal note well over $20,000** (new felony filings,
  POST curriculum, court workload). That pushes it to the **March 4 deadline — day 44 of
  45**, the most dangerous position on the calendar. Codex's "fiscal assumptions annex"
  recommendation (supply your own quantitative assumptions so affected agencies aren't the
  only source) is therefore not optional; it is the countermeasure to the highest-
  probability procedural death.

### COULD NOT VERIFY — treat as unverified, confirm before relying

**Code placement (highest priority):**
- That **Utah Code Title 76 currently ends at Chapter 18** and Chapter 19 is available.
  Codex self-marked this `[VERIFY]`. My fetch attempts 404'd on the URL pattern, giving
  no evidence either way. **This must be confirmed with OLRGC before any drafting** — the
  entire proposed `76-19-xxx` numbering depends on it. Codex also flags the alternative
  (Chapter 8, Part 15) as an OLRGC preference question.

**Statute cites asserted by Codex (all plausible, none verified here):**
- § 76-8-104 — threats to influence a public servant/voter, class A misdemeanor. This is
  the load-bearing "existing-law symmetry" argument for Bill #1; verify it says what Codex
  says it says.
- § 76-8-101 — definition of "public servant"
- § 76-1-402 — included offenses (Codex cites a 2025-05-07 amendment date)
- § 76-1-101.5 — Title 76 general definitions. **Elevated risk**: Utah recodified Title 76
  Chapter 1 recently, so section numbers in this range have moved.
- § 76-3-203 — 3rd degree felony ≤5 years, 2nd degree 1–15 years. Consistent with general
  knowledge; verify anyway.
- § 68-3-12 — `includes` is nonexclusive
- § 68-3-3 — presumption against retroactivity
- § 36-12-13 — fiscal note requirements

**Drafting-manual page cites — ELEVATED HALLUCINATION RISK:**
Codex cited specific pages of a 2025 Utah Legislative Drafting Manual PDF: pp. 34–35
(underline/strikeout), 61–62 (Title 76 offense section structure), 69–71 (effective dates),
72–73 (findings/intent discouraged), 75–76 (severability). Precise page numbers are exactly
the artifact class models fabricate most readily. The *substance* of each claim is
plausible and consistent with how Utah bills actually look; the *page numbers* should be
checked before any of them is quoted to a legislator or to OLRGC.

**Effective dates:**
- Codex says the normal effective date is **May 5, 2027**. Utah's default is 60 days after
  adjournment; March 5 + 60 days = **May 4, 2027**. Possible off-by-one. Verify.
- Codex's claim that ordinary delayed effective dates are limited to "no later than
  January 1 of the second calendar year following the session" — unverified.

**Constitutional amendment procedure — HIGH VALUE IF TRUE:**
Codex asserts the existing Utah Const. **Art. XXIII** amendment procedure is itself
"contingently scheduled for possible supersession on January 1, 2027, depending on the
November 3, 2026 election," and advises reverifying the controlling constitutional text
after that election before finalizing a 2027 resolution. I could not verify this. If true
it materially affects how §15 must be drafted and when. **Assign this to another node as a
priority verification item.**

**Organizations:**
- Utah League of Cities and Towns (ULCT) — consistent with the briefing; treat as correct.
- **Utah Local Governments Trust** as the risk pool covering Utah cities — plausible and
  widely used in this role, but unverified; also may now brand differently. The insurance-
  pool destabilization argument in GPT-3's Part B depends on getting this name right.
- **Statewide Association of Prosecutors vs. Utah Prosecution Council** — see §4.4. Use
  the briefing's name (SWAP).
- JPEC (Judicial Performance Evaluation Commission) — real Utah body; GPT-3 tagged it
  unverified unnecessarily.

**Committee names:**
Both GPT runs guessed House/Senate Judiciary, Government Operations, and Political
Subdivisions as venues. These are plausible Utah standing committee names but were not
verified in this node, and interim vs. standing committee names differ. Verify against
https://le.utah.gov/committee/committee_list.jsp before routing anything.

**Not asserted by any consult, but note:** no consult produced a single Utah case cite.
*Spackman* and *Kuchcinski* from the briefing were never mentioned by any GPT-family model.
The Utah-constitutional-doctrine leg of the research is untouched by this node.

---

## 6. RECOMMENDED CARRY-FORWARD FOR `restructure_plan.md`

Ranked by confidence and leverage:

1. **Adopt Codex's contingent-fallback ("ratchet-down") severability as the spine of the
   entire series.** It is the mechanism that lets the author draft at full strength without
   risking total invalidation, and it is the direct counter to the concession ladder in §3.
2. **Adopt the traceability-ledger + dependency-class (`D0/D1/D2/C1/I1`) discipline.** It
   makes decomposition lossless and gives an objective test for Bill #1 membership.
3. **Rename all 53 umbrella offenses to conduct-descriptive statutory names**, keeping the
   `-ism` vocabulary in the ledger and sponsor materials. Apply Codex's four-part Title 76
   section template ((1) definitions, (2) elements, (3) penalties, (4)+ exceptions).
4. **Run two bills in 2027, not one**: the reporting/transparency bill (evidence engine,
   low fiscal note) and one clean offense bill (substantive precedent). Resolve §2.1 by
   sponsor availability.
5. **Move §15 out of the Act into a standalone joint resolution**, with contingent
   effective dates in the implementing bills. Reduce entrenchment to principles.
6. **Reclassify the Citizen Council as `C1`** — contingent on the constitutional amendment
   — rather than conceding its powers.
7. **Resolve the two §4 / §16 collisions** identified in §4.5 before any drafting.
8. **Build the fiscal assumptions annex now.** The $20k threshold puts every Checkmate bill
   on day 44 of 45; controlling the fiscal narrative is the top procedural countermeasure.
9. **Verify, in priority order:** Title 76 chapter availability → Art. XXIII status after
   Nov 2026 → § 76-8-104 text → drafting manual page cites → SWAP/ULGT names.

---

*Sources verified in this document:*
- [Utah Legislature — Significant Session Dates](https://le.utah.gov/sessionSchedule/sessdates.jsp)
