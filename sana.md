# LowTide — Task Summary for SOK SANA

**Role:** Gameplay Developer (movement, underwater movement, combat, asset integration)  
**Project Version:** v0.11 (Proposed, not baselined) · **Start:** 2026-11-23 · **Target Submission:** 2027-01-23 (Provisional deadline: 2027-01-24)

---

## Key Responsibilities & Ownership

- **Player Movement & Gameplay:** Ground movement, collision, tide-switch softlock guards, underwater movement, Diving Bell traversal, and movement/tide defect fixes.
- **Tide Backup (by Dec 4):** Independently run the tide prototype (`LT-016`), explain the state contract (`LT-007`), reproduce a collision defect, and implement a small fix (verified by Nakry).
- **Testing & Release Build Owner:** Own R3 tutorial playtest (`LT-034`), Jan 8 full R1–R7 route test (`LT-067`), PC export smoke test (`LT-091`), release-blocking gameplay fixes (`LT-092`), and final PC build verification (`LT-099`).
- **Conditional Scope Rule:** `LT-022`, `LT-043`, `LT-069`, `LT-080`, and `LT-076` (review) are **conditional** — do not start them until scope and capacity are explicitly approved; otherwise record them as deferred with reason.

---

## Primary Tasks (21 Tasks · 103 h Full / 81 h Core)

### 1. Start (Week 1: 2026-11-26 to 2026-11-27)
- [ ] **LT-010** (`2026-11-26`) · **Audit art references, assets and licenses** · 3 SP · P1 · **5 h** · *Depends on:* none  
  *Done when:* Asset source, suitability, and license recorded for Godot.
- [ ] **LT-011** (`2026-11-27`) · **Sketch UI and tide feedback direction** · 2 SP · P2 · **3 h** · *Depends on:* LT-010  
  *Done when:* Legible draft UI, interaction prompts, tide-state feedback, and initial health HUD agreed.

### 2. Design (Week 2: 2026-11-30 to 2026-12-04 · Reduced Prototype Gate)
- [ ] **LT-015** (`2026-11-30`) · **Implement movement controller foundation** · 3 SP · P0 · **5 h** · *Depends on:* LT-005  
  *Done when:* Reusable movement controller with repeatable horizontal movement, jumps, and consistent collision in graybox.

### 3. Sprint 1 (Weeks 3–4: 2026-12-07 to 2026-12-21 · Review Dec 18, Closeout Dec 21)
- [ ] **LT-026** (`2026-12-07`) · **Finish player movement and collision** · 3 SP · P0 · **5 h** · *Depends on:* LT-015  
  *Done when:* Player reliably moves, jumps, and lands on tiles.
- [ ] **LT-032** (`2026-12-09`) · **Create functional placeholder tiles and props** · 3 SP · P1 · **5 h** · *Depends on:* LT-010  
  *Done when:* Readable collision and interactive prop placeholders using basic contrast and licensed/primitive assets (minimum readability without a standalone style guide).
- [ ] **LT-043** (`2026-12-14`) · **Integrate R1–R3 early visuals** *(Conditional)* · 3 SP · P2 · **6 h** · *Depends on:* LT-032, LT-030  
  *Done when:* Gameplay geometry remains readable with art. Execute only after scope/capacity approval.
- [ ] **LT-038** (`2026-12-15`) · **Add tide-switch collision/softlock guards** · 5 SP · P0 · **4 h** · *Depends on:* LT-027, LT-037  
  *Done when:* Changing tide cannot permanently trap player.
- [ ] **LT-022** (`2026-12-16`) · **Define sound/UI feedback requirements** *(Conditional)* · 2 SP · P2 · **4 h** · *Depends on:* LT-011  
  *Done when:* Extended audiovisual specification (tide, switch, checkpoint, health, ending). Minimum cues remain required under LT-033 even if deferred.
- [ ] **LT-034** (`2026-12-17`) · **Run R3 tutorial playtest and capture issues** *(Transferred from Tek)* · 3 SP · P1 · **4 h** · *Depends on:* LT-024, LT-042  
  *Done when:* At least 3 testers observed and problems documented; Tek reviews findings at LT-036.

### 4. Sprint 2 (Weeks 5–6: 2026-12-21 to 2027-01-04 · Dev ends Dec 31, Closeout Jan 4)
- [ ] **LT-048** (`2026-12-21`) · **Implement basic underwater movement** · 8 SP · P0 · **6 h** · *Depends on:* LT-026, LT-027  
  *Done when:* Stable deep-water movement in test chamber.
- [ ] **LT-049** (`2026-12-22`) · **Implement Diving Bell water access checks** · 2 SP · P0 · **3 h** · *Depends on:* LT-048, LT-017  
  *Done when:* Deep-water entry respects ability flag.
- [ ] **LT-059** (`2026-12-28`) · **Connect Diving Bell to underwater movement** · 5 SP · P0 · **6 h** · *Depends on:* LT-048, LT-049  
  *Done when:* Pickup changes underwater traversal as designed.
- [ ] **LT-060** (`2026-12-30`) · **Prototype R6 deep-water entrance physics** · 2 SP · P1 · **3 h** · *Depends on:* LT-059  
  *Done when:* Underwater entrance route works in test scene.

### 5. Sprint 3 (Weeks 7–8: 2027-01-04 to 2027-01-15)
- [ ] **LT-069** (`2027-01-04`) · **Implement player attack, damage and health** *(Conditional)* · 8 SP · P2 · **6 h** · *Depends on:* LT-026, LT-039  
  *Done when:* Player can attack, take damage, and respawn. Execute only after scope/capacity approval.
- [ ] **LT-078** (`2027-01-06`) · **Draft interim report, evidence and release checklist** · 3 SP · P1 · **4 h** · *Depends on:* LT-057, LT-056  
  *Done when:* Interim report includes R1–R5 evidence and release checklist (R1–R7 evidence added later under LT-088).
- [ ] **LT-067** (`2027-01-08`) · **Test full progression scenario and risks** *(Transferred from Tek)* · 3 SP · P0 · **5 h** · *Depends on:* LT-058, LT-070, LT-074  
  *Done when:* Complete R1–R7 route run on Jan 8 with placeholder art and stub ending (no debug teleporting), testing both tide states, safe returns, and checkpoint recovery; blockers and report evidence captured (Toek provides build; Tek reviews at LT-068).
- [ ] **LT-080** (`2027-01-11`) · **Implement single simple enemy AI** *(Conditional)* · 8 SP · P2 · **5 h** · *Depends on:* LT-069  
  *Done when:* One enemy detects, moves, attacks, and can be defeated. Execute only after scope/capacity approval.
- [ ] **LT-081** (`2027-01-14`) · **Fix movement/tide integration defects** · 3 SP · P0 · **5 h** · *Depends on:* LT-077, LT-070  
  *Done when:* Major movement and water regressions resolved.

### 6. Testing and Release (Week 9: 2027-01-18 to 2027-01-22)
- [ ] **LT-091** (`2027-01-18`) · **Re-run PC export smoke test and create release build backup** · 3 SP · P0 · **4 h** · *Depends on:* LT-081  
  *Done when:* PC export re-tested on Jan 18 against current full build, backed up, and startup verified.
- [ ] **LT-092** (`2027-01-19`) · **Fix release-blocking gameplay and tide defects** · 3 SP · P0 · **5 h** · *Depends on:* LT-091  
  *Done when:* No severity-1/2 gameplay blocking bugs remain in retained scope (route puzzle/tide defects to their owners).
- [ ] **LT-099** (`2027-01-22`) · **Rebuild and verify final PC release after fixes** · 2 SP · P0 · **2 h** · *Depends on:* LT-092, LT-094, LT-096, LT-097  
  *Done when:* Final candidate built and smoke-tested on Jan 22 with checksum/version and reproducible export instructions.

---

## Secondary Effort: Pairing, Reviews & Gate Participation (8 h Total)

| Week | Task | Hours | Status | Responsibility |
| --- | --- | ---: | --- | --- |
| 2026-W49 | **LT-014** | 1 | Core | Attend Dec 4 design review / decision gate; prepare gameplay subsystem forecast |
| 2026-W49 | **LT-016** | 2 | Core | Tide prototype pairing with Nakry; independently reproduce & fix a collision defect by Dec 4 |
| 2026-W50 | **LT-027** | 1 | Core | Production-code review of Nakry's reusable tide controller (backup capability) |
| 2026-W50 | **LT-033** | 1 | Core | Independent PR & acceptance review of Tek's tide/interact visual indicators |
| 2026-W51 | **LT-044** | 1 | Core | Independent PR & acceptance review of Tek's checkpoint & interaction icon feedback |
| 2026-W52 | **LT-055** | 1 | Core | Independent PR & acceptance review of Tek's switch/gate feedback cues |
| 2027-W01 | **LT-076** | 1 | Conditional | Independent PR & acceptance review of Tek's health UI and enemy visuals (if combat approved) |

*Note:* Also review Sopheakanha's `LT-007` (state model and object interaction interfaces) alongside Nakry.

---

## Weekly Workload Summary

*Conservative ceiling: 9 h/week total (8.5 h engineering + 0.5 h coordination). Nominal ceiling: 12 h/week total (11.5 h engineering + 0.5 h coordination). Later weeks are unapproved forecasts.*

| ISO Week | Engineering (Full / Core) | Total incl. 0.5 h Coord. | Status vs. Ceilings |
| --- | --- | --- | --- |
| 2026-W48 | 8 / 8 h | 8.5 / 8.5 h | Within conservative |
| 2026-W49 | 8 / 8 h | 8.5 / 8.5 h | Within conservative |
| 2026-W50 | 12 / 12 h | 12.5 / 12.5 h | Exceeds nominal & conservative |
| 2026-W51 | 19 / 9 h | 19.5 / 9.5 h | Full exceeds nominal; Core exceeds conservative |
| 2026-W52 | 10 / 10 h | 10.5 / 10.5 h | Exceeds conservative |
| 2026-W53 | 9 / 9 h | 9.5 / 9.5 h | Exceeds conservative |
| 2027-W01 | 16 / 9 h | 16.5 / 9.5 h | Full exceeds nominal; Core exceeds conservative |
| 2027-W02 | 10 / 5 h | 10.5 / 5.5 h | Full exceeds conservative; Core within |
| 2027-W03 | 11 / 11 h | 11.5 / 11.5 h | Exceeds conservative |
| **Total** | **103 / 81 h** | **107.5 / 85.5 h** | Core is +4.5 h over 76.5 h 9-week allowance |

---

## Key Risks, Gates & Daily Workflow

- **Dec 4 Gate:** Must demonstrate independent tide prototype fix (`LT-016`), actual hours logged, and Sprint 1 capacity alignment.
- **Jan 8 Gate:** Lead independent R1–R7 full-route test (`LT-067`) on Toek's build before the Jan 11 graybox review.
- **Release Risk Owner:** Own release build readiness — feature freeze Jan 15, export smoke test Jan 18 (`LT-091`), final build verification Jan 22 (`LT-099`).
- **Git & Logging:** Work on `feature/*`, `fix/*`, `docs/*`, or `test/*` branches from `dev` and merge via independently reviewed PRs. Log actual session hours, pairing, and evidence in `docs/actual-hours/`.
