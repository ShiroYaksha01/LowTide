# Project plan: LowTide

YAG V3 · Final Year Project Team · IT Project Management (I5, 2026-2027 Semester 1)

Keep this file at the root of the repository (or in `docs/`) and update it every week: the weekly progress check compares it with the code. Tick a task when it is done (`- [x]`), and change the dates, the owners and the tasks when the plan changes; write why under "Changes to the plan".

## Team

| Member | Role |
|---|---|
| TEK CHANSETHA | Project manager + game systems developer: interactions, puzzle logic, UI, project governance and acceptance |
| SOK SANA | Gameplay developer: movement, underwater movement, combat, asset integration |
| SRENG SOPHEAKANHA | Game systems developer: world state, persistence, checkpoints, transitions and system contracts |
| TAK TOEK | Level designer + developer: grayboxes, puzzles, navigation, collision |
| TANG NAKRY | Technical lead + developer: Godot setup, tide mechanics, reviews, UX/assets integration |


**Version:** v0.11 (repository synchronization and weekly integration policy; proposed, not baselined). Official start: 2026-11-23. Provisional external deadline: 2027-01-24; target submission: 2027-01-23, or earlier if acceptance passes. Midterm January 4 and graybox review January 11 are provisional course dates; build evidence due December 31 and January 8 respectively. Only the reduced Sprint 0 gate work and delivery gates are candidates for initial approval; Sprint 1 onward remains a forecast pending measured effort and team agreement. Completion states are reconciled with the repository v0.5 checklist: LT-001 remains recorded complete; LT-002 remains open for revised scope review. Historical planning work is not erased.

**Product:** Godot 4 PC puzzle-first Metroidvania with seven interconnected rooms, Low/High Tide puzzles, Diving Bell, safe return routes, three checkpoints, hazard/reset recovery and a lighthouse ending. Combat and decorative polish are conditional, not baseline. No boss, second ability, realistic water simulation, disk save/load or multiplayer.

**Import note:** Task lines restore the v0.5 `date to date` syntax previously used for import. Preview all 99 tasks and ten milestones before saving; estimates, notes and dependencies may require manual entry. Do not approve the whole forecast as a committed baseline.

**Collaboration rules:** All five members are developers and self-manage their assigned subsystem: estimate and select sprint work together, plan implementation, test, document, update task status and actual hours, and demonstrate evidence without waiting for PM reminders. Tek owns interactions, switches/gates, puzzle-specific logic and feedback (LT-028/033/044/050/055/061/072/082; LT-076 conditional), while Sopheakanha owns reusable state, persistence, checkpoints, transition contracts and regression tests. Agree state/signal interfaces before implementing puzzle logic; Tek fixes puzzle-specific defects and Sopheakanha fixes persistence/transition defects under the shared defect process. Sana owns player movement and gameplay; Nakry owns architecture and tide mechanics; Toek owns rooms and level fixes. Nakry facilitates technical planning (LT-023), defect prioritization (LT-035) and midterm demo preparation (LT-056); Sana owns tutorial and full-route tests (LT-034/067); Sopheakanha owns R4/R5 acceptance specification and integrated playtests (LT-045/077). Tek remains accountable for scope, sprint goals, milestone decisions, risk escalation and final submission. Independent reviewers must verify Tek’s code before merge; PM acceptance is not a substitute for code review. Book reviews per the secondary register; reviewers and implementers agree the handoff before dependent work starts. Unlisted reviews must be estimated before the corresponding sprint is approved. Sana is tide backup: by Dec 4 independently run prototype, explain state contract, reproduce a collision defect and implement a small fix; Nakry verifies evidence. Book both sides of prototype pairing (2 h each W49) and production review (1 h each W50). Nakry independently tests Toek’s levels in LT-085; Toek owns level fixes. See [team working agreement](docs/team-working-agreement.md).

**Capacity policy:** 12 h/member/week is nominal, not guaranteed. Use 9 h/member/week including coordination as the conservative planning ceiling, not a claim of actual availability. Approve only reduced Sprint 0 and gates after team availability, instructor scope discussion and import preview. Defer LT-013, LT-018 and LT-020 to the Sprint 1 forecast; defer standalone style guide LT-021 and expanded audiovisual requirements LT-022 as conditional work. Their hours are not erased. Minimum readability comes from LT-010/011/032/033. No optional work starts until capacity and scope are approved. Later forecast weeks are deliberately flagged where overloaded; replan after measured effort on Dec 4, not by shifting hours on paper. LT-014 budgets 3 h for Tek and 1 h for each of the other four developers, separate from routine coordination. Confirm four individual half-hour Sprint 0 exceptions (three in W48 and one in W49), or reassign before approval. No availability is assumed.

**Weekly integration and release policy:** Task branches (`feature/*`, `fix/*`, `docs/*`, `test/*`) start from current `dev`; all routine changes target `dev` through independently reviewed PRs. Owners test their changes and resolve conflicts in their branches. Test the exact integrated `dev` commit before promoting it. Tek alone merges `dev` into `main` on Saturday evening/night or Sunday evening/night (Cambodia local time), preferably Saturday with Sunday as fallback, subject to team agreement. Freeze the candidate during final verification; if new changes enter `dev`, re-run the relevant tests and approve the new candidate. If checks fail, leave `main` unchanged, record the blocker and fix on a branch targeting `dev`. No direct routine commits to either shared branch. Use a merge commit for `dev` to `main` to preserve ancestry; optional squash merges for task PRs require team agreement under LT-006. For the first documentation-only snapshot, verify documents, links and task evidence rather than claiming a runnable Godot build. When a runnable project exists, check launch, available acceptance tests, regressions, known blockers and export when required. Record tested commit, PR, date and evidence; a weekly tag is optional. Release and course deadline conflicts must be resolved ahead of time, including an approved early release exception if needed; do not delay final submission merely to wait for the weekend. Reserve actual review, integration testing and PM promotion time at sprint planning; the 454 h estimate does not include a new dedicated weekly promotion allowance. Do not assume weekend availability. See [README](README.md), [charter](docs/PROJECT_CHARTER.md) and [team agreement](docs/team-working-agreement.md). LT-006 remains owned by Sopheakanha; this policy is a proposed governance decision, not proof that branch protection or templates have been configured.

## Milestones

| Milestone | Date |
|---|---|
| Proposal reviewed/submitted for approval | 2026-11-27 |
| Design reviewed | 2026-12-04 |
| Core mechanics demonstration | 2026-12-11 |
| Sprint 1 review | 2026-12-18 |
| Midterm demo | 2027-01-04 |
| Full graybox review | 2027-01-11 |
| Sprint 3 review / feature freeze | 2027-01-15 |
| Release candidate | 2027-01-22 |
| Submission-ready sign-off | 2027-01-23 |
| Final submission | 2027-01-24 |

## 1. Start (week 1, 2026-11-26 to 2026-11-27)

- [x] LT-001: Confirm project charter, roles, weekly cadence · 2026-11-26 to 2026-11-26 · TEK CHANSETHA
- [ ] LT-003: Compile requirements, user stories and proposal draft for PM review · 2026-11-26 to 2026-11-26 · SRENG SOPHEAKANHA
- [ ] LT-004: Create Godot repository and base project · 2026-11-26 to 2026-11-26 · TANG NAKRY
- [ ] LT-008: Draft seven-room world graph and entrances · 2026-11-26 to 2026-11-26 · TAK TOEK
- [ ] LT-010: Audit art references, assets and licenses · 2026-11-26 to 2026-11-26 · SOK SANA
- [x] LT-002: Define MVP scope and explicit exclusions · 2026-11-27 to 2026-11-27 · TEK CHANSETHA
- [ ] LT-005: Try minimal movement feasibility scene · 2026-11-27 to 2026-11-27 · TANG NAKRY
- [ ] LT-006: Define Git branching, scene ownership and code review · 2026-11-27 to 2026-11-27 · SRENG SOPHEAKANHA
- [ ] LT-009: Sketch R2/R3 puzzle geometry and routes · 2026-11-27 to 2026-11-27 · TAK TOEK
- [ ] LT-011: Sketch UI and tide feedback direction · 2026-11-27 to 2026-11-27 · SOK SANA
- [ ] **Milestone: Proposal reviewed/submitted for approval** · 2026-11-27

## 2. Design (week 2, 2026-11-30 to 2026-12-04; reduced prototype gate)

- [ ] LT-007: Draft state model and object interaction interfaces · 2026-11-30 to 2026-11-30 · SRENG SOPHEAKANHA
- [ ] LT-015: Implement movement controller foundation · 2026-11-30 to 2026-11-30 · SOK SANA
- [ ] LT-012: GDD v0.1: rules, progression, scope · 2026-12-01 to 2026-12-01 · TEK CHANSETHA
- [ ] LT-016: Tide-state proof of concept in test room · 2026-12-01 to 2026-12-01 · TANG NAKRY
- [ ] LT-017: Build world-state schema and signal contracts · 2026-12-01 to 2026-12-01 · SRENG SOPHEAKANHA
- [ ] LT-019: Graybox R2 hub and two entrances · 2026-12-01 to 2026-12-01 · TAK TOEK
- [ ] LT-014: Conduct design review and update backlog · 2026-12-04 to 2026-12-04 · TEK CHANSETHA
- [ ] **Milestone: Design reviewed** · 2026-12-04

## 3. Sprint 1 (weeks 3–4, 2026-12-07 to 2026-12-21; provisional forecast, review Dec 18, closeout Dec 21)

- [ ] LT-023: Plan Sprint 1 and refine acceptance criteria · 2026-12-07 to 2026-12-07 · TANG NAKRY
- [ ] LT-026: Finish player movement and collision · 2026-12-07 to 2026-12-07 · SOK SANA
- [ ] LT-018: Define room transition and checkpoint contracts · 2026-12-07 to 2026-12-07 · SRENG SOPHEAKANHA
- [ ] LT-013: Puzzle acceptance and softlock test checklist · 2026-12-07 to 2026-12-07 · TEK CHANSETHA
- [ ] LT-028: Implement generic interactable base · 2026-12-08 to 2026-12-08 · TEK CHANSETHA
- [ ] LT-027: Build reusable tide controller · 2026-12-08 to 2026-12-08 · TANG NAKRY
- [ ] LT-029: Implement room transition service and perform first PC export smoke test · 2026-12-08 to 2026-12-08 · SRENG SOPHEAKANHA
- [ ] LT-030: Build R1 tutorial graybox · 2026-12-08 to 2026-12-08 · TAK TOEK
- [ ] LT-032: Create functional placeholder tiles and props · 2026-12-09 to 2026-12-09 · SOK SANA
- [ ] LT-031: Connect R2 hub graybox to R1/R3 · 2026-12-09 to 2026-12-09 · TAK TOEK
- [ ] LT-033: Implement tide/interact visual indicators · 2026-12-09 to 2026-12-09 · TEK CHANSETHA
- [ ] LT-024: Prepare tutorial observation checklist · 2026-12-10 to 2026-12-10 · SRENG SOPHEAKANHA
- [ ] LT-020: Graybox R3 tide puzzle geometry · 2026-12-10 to 2026-12-10 · TAK TOEK
- [ ] LT-025: Weekly review and risk log · 2026-12-11 to 2026-12-11 · TEK CHANSETHA
- [ ] LT-037: Implement two-position floating platform · 2026-12-14 to 2026-12-14 · TANG NAKRY
- [ ] LT-039: Implement checkpoint storage and player-triggered hazard/reset respawn · 2026-12-14 to 2026-12-14 · SRENG SOPHEAKANHA
- [ ] LT-043: Integrate R1–R3 early visuals · 2026-12-14 to 2026-12-14 · SOK SANA
- [ ] LT-038: Add tide-switch collision/softlock guards · 2026-12-15 to 2026-12-15 · SOK SANA
- [ ] LT-040: Implement room entry state rules · 2026-12-15 to 2026-12-15 · SRENG SOPHEAKANHA
- [ ] LT-041: Build R3 Rising Platform room · 2026-12-15 to 2026-12-15 · TAK TOEK
- [ ] LT-044: Add checkpoint and interaction icon feedback · 2026-12-15 to 2026-12-15 · TEK CHANSETHA
- [ ] LT-042: Assemble and fix first puzzle playthrough · 2026-12-16 to 2026-12-16 · TAK TOEK
- [ ] LT-021: Create minimum viable art/style guide · 2026-12-16 to 2026-12-16 · TANG NAKRY
- [ ] LT-022: Define sound/UI feedback requirements · 2026-12-16 to 2026-12-16 · SOK SANA
- [ ] LT-034: Run R3 tutorial playtest and capture issues · 2026-12-17 to 2026-12-17 · SOK SANA
- [ ] LT-036: Sprint 1 review and progress update · 2026-12-18 to 2026-12-18 · TEK CHANSETHA
- [ ] LT-035: Review acceptance criteria and reprioritize defects · 2026-12-21 to 2026-12-21 · TANG NAKRY
- [ ] **Milestone: Core mechanics demonstration** · 2026-12-11
- [ ] **Milestone: Sprint 1 review** · 2026-12-18

## 4. Sprint 2 (weeks 5–6, 2026-12-21 to 2027-01-04; development ends Dec 31, closeout Jan 4)

- [ ] LT-048: Implement basic underwater movement · 2026-12-21 to 2026-12-21 · SOK SANA
- [ ] LT-050: Build reusable switches and conditional gates · 2026-12-21 to 2026-12-21 · TEK CHANSETHA
- [ ] LT-045: Specify R4/R5 acceptance and logic paths · 2026-12-22 to 2026-12-22 · SRENG SOPHEAKANHA
- [ ] LT-049: Implement Diving Bell water access checks · 2026-12-22 to 2026-12-22 · SOK SANA
- [ ] LT-055: Add switch/gate feedback cues · 2026-12-22 to 2026-12-22 · TEK CHANSETHA
- [ ] LT-051: Persist puzzle flags across room transitions · 2026-12-23 to 2026-12-23 · SRENG SOPHEAKANHA
- [ ] LT-046: Review capacity, risk triggers and blockers · 2026-12-23 to 2026-12-23 · TEK CHANSETHA
- [ ] LT-052: Graybox R4 lower and upper routes · 2026-12-23 to 2026-12-23 · TAK TOEK
- [ ] LT-047: Prepare test cases for persistent gates · 2026-12-23 to 2026-12-23 · TANG NAKRY
- [ ] LT-054: Produce R4 visual set · 2026-12-24 to 2026-12-24 · TANG NAKRY
- [ ] LT-053: Assemble R4 gates and lever positions · 2026-12-24 to 2026-12-24 · TAK TOEK
- [ ] LT-056: Prepare midterm demo script, fallback recording workflow and evidence checklist · 2026-12-28 to 2026-12-28 · TANG NAKRY
- [ ] LT-059: Connect Diving Bell to underwater movement · 2026-12-28 to 2026-12-28 · SOK SANA
- [ ] LT-061: Complete R4 floodgate + R2 shortcut logic · 2026-12-28 to 2026-12-28 · TEK CHANSETHA
- [ ] LT-064: Build R5 archive and pickup pedestal · 2026-12-28 to 2026-12-28 · TAK TOEK
- [ ] LT-060: Prototype R6 deep-water entrance physics · 2026-12-30 to 2026-12-30 · SOK SANA
- [ ] LT-062: Implement Diving Bell pickup and CP2/CP3 · 2026-12-30 to 2026-12-30 · SRENG SOPHEAKANHA
- [ ] LT-063: Integrate R4 puzzle and validate return route · 2026-12-30 to 2026-12-30 · TAK TOEK
- [ ] LT-065: Implement R5 archive visual details · 2026-12-30 to 2026-12-30 · TANG NAKRY
- [ ] LT-057: Observe progression testing and triage issues · 2026-12-31 to 2026-12-31 · TEK CHANSETHA
- [ ] LT-066: Integrate pickup, gate and tide audio cues · 2026-12-31 to 2026-12-31 · TANG NAKRY
- [ ] LT-058: Update backlog and sprint review · 2027-01-04 to 2027-01-04 · TEK CHANSETHA
- [ ] **Milestone: Midterm demo** · 2027-01-04

## 5. Sprint 3 (weeks 7–8, 2027-01-04 to 2027-01-15)

- [ ] LT-069: Implement player attack, damage and health · 2027-01-04 to 2027-01-04 · SOK SANA
- [ ] LT-071: Implement R2↔R6 ability gate and safe return · 2027-01-04 to 2027-01-04 · SRENG SOPHEAKANHA
- [ ] LT-072: Build R7 final puzzle state logic stub · 2027-01-05 to 2027-01-05 · TEK CHANSETHA
- [ ] LT-073: Graybox R6 Drowned Conduit · 2027-01-05 to 2027-01-05 · TAK TOEK
- [ ] LT-070: Validate water/ability gate collision safety · 2027-01-06 to 2027-01-06 · TANG NAKRY
- [ ] LT-074: Graybox R7 Lighthouse Engine · 2027-01-06 to 2027-01-06 · TAK TOEK
- [ ] LT-078: Draft interim report, evidence and release checklist · 2027-01-06 to 2027-01-06 · SOK SANA
- [ ] LT-076: Prototype health UI and enemy visuals · 2027-01-07 to 2027-01-07 · TEK CHANSETHA
- [ ] LT-075: Integrate R6 thematic art and hazard cues · 2027-01-07 to 2027-01-07 · TANG NAKRY
- [ ] LT-067: Test full progression scenario and risks · 2027-01-08 to 2027-01-08 · SOK SANA
- [ ] LT-082: Finish R7 finale and ending trigger logic · 2027-01-08 to 2027-01-08 · TEK CHANSETHA
- [ ] LT-068: Hold Jan 11 graybox review and scope check · 2027-01-11 to 2027-01-11 · TEK CHANSETHA
- [ ] LT-080: Implement single simple enemy AI · 2027-01-11 to 2027-01-11 · SOK SANA
- [ ] LT-086: Polish essential visual assets across rooms · 2027-01-11 to 2027-01-11 · TANG NAKRY
- [ ] LT-084: Integrate R7 puzzle and check all room collision · 2027-01-12 to 2027-01-12 · TAK TOEK
- [ ] LT-087: Integrate core audio and ending presentation · 2027-01-12 to 2027-01-12 · TANG NAKRY
- [ ] LT-077: Conduct full playtests and document friction · 2027-01-13 to 2027-01-13 · SRENG SOPHEAKANHA
- [ ] LT-085: Run level softlock and hazard pass R1–R7 · 2027-01-13 to 2027-01-13 · TANG NAKRY
- [ ] LT-081: Fix movement/tide integration defects · 2027-01-14 to 2027-01-14 · SOK SANA
- [ ] LT-083: Fix gate/persistence/transition bugs · 2027-01-14 to 2027-01-14 · SRENG SOPHEAKANHA
- [ ] LT-079: Run feature-freeze and review meeting · 2027-01-15 to 2027-01-15 · TEK CHANSETHA
- [ ] **Milestone: Full graybox review** · 2027-01-11
- [ ] **Milestone: Sprint 3 review / feature freeze** · 2027-01-15

## 6. Testing and release (week 9, 2027-01-18 to 2027-01-22)

- [ ] LT-091: Re-run PC export smoke test and create release build backup · 2027-01-18 to 2027-01-18 · SOK SANA
- [ ] LT-093: Regression test checkpoints, gates, abilities · 2027-01-18 to 2027-01-18 · SRENG SOPHEAKANHA
- [ ] LT-097: Finish minimum HUD and audiovisual feedback · 2027-01-18 to 2027-01-18 · TANG NAKRY
- [ ] LT-092: Fix release-blocking gameplay and tide defects · 2027-01-19 to 2027-01-19 · SOK SANA
- [ ] LT-094: Resolve final integration defects · 2027-01-19 to 2027-01-19 · SRENG SOPHEAKANHA
- [ ] LT-098: Write concise controls, credits and user guide · 2027-01-19 to 2027-01-19 · TANG NAKRY
- [ ] LT-095: Run final R1–R7 acceptance playthrough · 2027-01-20 to 2027-01-20 · TAK TOEK
- [ ] LT-096: Fix collision, navigation and hazard issues · 2027-01-21 to 2027-01-21 · TAK TOEK
- [ ] LT-099: Rebuild and verify final PC release after fixes · 2027-01-22 to 2027-01-22 · SOK SANA
- [ ] **Milestone: Release candidate** · 2027-01-22

## 7. Closing (week 9, 2027-01-18 to 2027-01-24)

- [ ] LT-088: Finalize report and evidence for submission · 2027-01-18 to 2027-01-18 · TEK CHANSETHA
- [ ] LT-089: Finalize slides, demo walkthrough, rehearsal · 2027-01-19 to 2027-01-19 · TEK CHANSETHA
- [ ] LT-090: Acceptance sign-off and submit by deadline · 2027-01-23 to 2027-01-23 · TEK CHANSETHA
- [ ] **Milestone: Submission-ready sign-off** · 2027-01-23
- [ ] **Milestone: Final submission** · 2027-01-24

## Risks

| Risk | Chance | Impact | What we do |
|---|---|---|---|
| Tide system proves unstable | High | High | If Low/High changes are unsafe by Dec 11, halt room expansion; simplify to fixed safe positions. Owner: TANG NAKRY (technical), with SOK SANA (movement integration). |
| Persistent switches or R6-to-R2 return cause softlocks | Medium | High | Test state transitions and safe spawns; require gates and shortcut to retain states across re-entry. Owner: SRENG SOPHEAKANHA. |
| Players cannot understand puzzles | Medium | Medium | Run first-time player tests, improve visual cues, and avoid adding mechanics. Owner: TEK CHANSETHA. |
| Room and art integration bottleneck | High | High | Pair on room assembly, reuse assets and focus on readability. Owner: TAK TOEK. |
| A member becomes unavailable | Medium | High | Keep shared code/documentation and reassign critical tasks based on available hours. Owner: TEK CHANSETHA. |
| Course calendar or first-week capacity differs | High | High | Verify Resources/Timeline availability (initially 2 days per person for Week 1), holidays and exams before baseline. Owner: TEK CHANSETHA. |
| Release build or documentation is late | Medium | High | Run PC export tests before release week, freeze features Jan 15, and verify final build Jan 22. Owner: SOK SANA. |
| Unreliable capacity and optimistic estimates | High | High | Use 75% availability scenario; discuss smaller room count or changed requirements with instructor before Dec 4, validate actual hours, and replan the forecast. Owner: TEK CHANSETHA. |
| Technical lead unavailable | High | High | Sana pairs on tide prototype/controller; Sopheakanha reviews signal contracts; document recovery and setup. Owner: TANG NAKRY. |
| Deadline mismatch | High | High | Provisional Jan 24 deadline, Jan 23 target; confirm instructor calendar and weekend access before baseline. Owner: TEK CHANSETHA. |
| PM development or technical lead becomes a bottleneck | High | High | Owners maintain estimates, evidence and blockers; independent reviewers verify PM code; cap commitments at confirmed capacity and protect four development hours per ordinary week for Tek. Owner: TEK CHANSETHA. |

## Changes to the plan

| Date | Change | Why |
|---|---|---|
| 2026-11-21 | Drafted initial v0.1 Scrum plan with 99 tasks | Translate the game concept into milestones, responsibilities, and estimates. |
| 2026-11-21 | Revised to v0.2; preserved 99 task IDs; scheduled one website working day per task | Clarify dependencies, reduce overlapping bookings and plan around initial website capacity. |
| 2026-11-21 | Assigned LT-003 drafting to SRENG SOPHEAKANHA, pending team agreement | Avoid overloading the project manager in the shortened first week. |
| 2026-11-21 | Reconciled the 12 h/member weekly plan with 429 task hours plus 22.5 reporting hours | Separate hour-based effort, platform working-day duration and story points. |
| 2026-11-21 | Reformatted to v0.3 using the course sample's Team → Milestones → Start → Design → Sprint 1–3 → Testing/release → Closing → Risks → Changes structure | Make the working plan easier to follow and align with the instructor's sample; no task IDs, owners, task dates, estimates or dependencies changed. |
| 2026-11-21 | Prepared importer-compatible checklist (v0.4), preserving LT-001 to LT-099, seven phases and ten milestones | Course preview recognized zero tasks when task IDs were bold and task details appeared as nested lists; detailed points, hours and dependencies remain in the original v0.3 plan for later entry on the website. |
| 2026-11-21 | Added v0.5 Scrum estimation/acceptance register while retaining import-compatible task lines | Support Sprint 0 task notes and 99 Story Point allocations without changing task IDs or dates. |
| 2026-11-23 | Proposed v0.6 re-delegation of 16 task owners to use TANG NAKRY as technical lead and TEK CHANSETHA as an active developer | Preserve all 99 task IDs, statuses, dates, estimates and dependencies; rebalance weekly loads and establish code review ownership. Pending team approval. |
| 2026-11-25 | Proposed v0.7 risk-adjusted schedule and conditional scope | Separate full backlog from commitment; correct provisional deadline, closeouts, daily conflicts and graybox gate; delegate LT-078 drafting to Sana with PM approval; retain original estimates pending measured validation. |
| 2026-11-25 | Proposed v0.8 rolling baseline | Restore import syntax, define non-combat recovery, budget tide pairing, reschedule overloads and require independent PM-code review; no full baseline until measured effort and scope approval. |
| 2026-11-25 | Proposed v0.9 reduced Sprint 0, explicit effort and independent level testing | Defer five design tasks; book both sides of pairing and named code reviews; reassign LT-085; add provisional final evidence effort; expose conservative capacity breaches and require instructor scope discussion before Dec 4. |
| 2026-11-25 | Proposed v0.10: fund decision gate and rebalance reviews | Add 2 primary and 4 secondary hours to LT-014; move LT-028 review to Nakry and LT-044 review to Sana; preserve all task owners and dates as forecasts; report scope ranges and all capacity breaches; split actual-hours logs. |
| 2026-11-25 | Proposed v0.11: self-managing subsystem ownership and PM development target | Transfer 13 primary owners, add 6 review hours, adjust five forecast dates, repair R1/R2 playthrough predecessors and update companion registers; Sprint 0 and milestones unchanged. |
| 2026-11-25 | Synchronize v0.11 repository documents and weekly integration policy | Preserve 99 IDs, owners, dates and estimates; reconcile LT-002 with repository status; document reviewed task PRs into dev and PM weekend promotion to main; correct candidate-core capacity total. |

### Scrum estimates and dependencies (reference for website task fields)

The following table supplies the proposed **Points** and **Notes** information. The importer may ignore this reference table; enter or verify these values in task details after importing.

| Task | Sprint | SP | Priority | Est. hours | Depends on | Acceptance / Done when |
|---|---|---:|---|---:|---|---|
| LT-001 | S0-W1 | 1 | P1 | 2 | none | Five members approve roles and 12 h/week nominal availability and 9 h/week planning ceiling, subject to reconfirmation. |
| LT-003 | S0-W1 | 3 | P0 | 5 | none | Draft covers team requirements and proposal; TEK CHANSETHA reviews and approves scope at the Nov 27 proposal review. This is delegated drafting, not delegated PM approval. |
| LT-004 | S0-W1 | 3 | P0 | 5 | none | Project opens and runs on a second machine. |
| LT-008 | S0-W1 | 3 | P0 | 5 | none | R1–R7 adjacency and gates reviewed. |
| LT-010 | S0-W1 | 3 | P1 | 5 | none | Asset source, suitability and license recorded. |
| LT-002 | S0-W1 | 2 | P0 | 3 | LT-001 | Seven-room product vision, required gameplay, conditional combat/polish and exclusions documented; team review and instructor decision or outstanding approval blocker recorded. Do not equate drafting with scope approval. |
| LT-005 | S0-W1 | 3 | P0 | 4 | LT-004 | Character can move and jump in a test scene. |
| LT-006 | S0-W1 | 2 | P1 | 4 | LT-004 | Team documents and reviews the task-branch to dev to main workflow, independent PR review, scene ownership, weekly integration checks and PM-only stable merge window. Record branch settings or agreed manual controls and demonstrate the workflow; see team working agreement. Do not claim configuration is complete without evidence. |
| LT-009 | S0-W1 | 3 | P1 | 4 | LT-008 | Entrances, exits, waterlines and anchors identified. |
| LT-011 | S0-W1 | 2 | P2 | 3 | LT-010 | Legible draft UI and tide-state feedback agreed. |
| LT-007 | S0-W2 | 3 | P0 | 3 | LT-002 | Shared tide/gate/ability flags have names and event contract compatible with R2 and R3, reviewed by Sana and Nakry. |
| LT-015 | S0-W2 | 3 | P0 | 5 | LT-005 | Repeatable horizontal movement and jumps in graybox. |
| LT-021 | S1 | 3 | P2 | 5 | LT-010 | Extended style guide; conditional after Dec 4. Minimum readability is required under LT-032 even if this task is deferred. |
| LT-012 | S0-W2 | 3 | P0 | 5 | LT-002, LT-003, LT-007 | Reviewable GDD reflects agreed MVP. |
| LT-016 | S0-W2 | 8 | P0 | 5 | LT-007 | Low/high transitions switch collision-safe objects. By Dec 4 Sana independently runs the prototype, reproduces a collision defect and demonstrates a fix; Nakry reviews evidence. Owner estimate excludes the separately booked 2 hours each for Sana and Nakry. |
| LT-017 | S0-W2 | 3 | P0 | 5 | LT-007 | Shared flags and object signal API documented/tested. |
| LT-019 | S0-W2 | 3 | P1 | 5 | LT-008, LT-015 | R2 has readable main route and blocked R6 gate. |
| LT-022 | S1 | 2 | P2 | 4 | LT-011 | Extended audiovisual specification; conditional after Dec 4. Minimum tide and interaction cues are required under LT-033 even if deferred. |
| LT-013 | S1 | 3 | P1 | 4 | LT-009, LT-012 | Each puzzle has expected solution and recovery criteria. |
| LT-018 | S1 | 3 | P0 | 3 | LT-017 | Document safe entrances, state reset, checkpoint position, and respawn behavior. Room return R6 to R2 must not softlock. |
| LT-020 | S1 | 3 | P1 | 5 | LT-009, LT-015 | R3 supports solvable jump distances on paper/in graybox. |
| LT-014 | S0-W2 | 1 | P1 | 3 | LT-012, LT-015, LT-016, LT-017, LT-019 | Tek prepares and records prototype evidence, actual hours, instructor response or blocker, scope decision and revised forecast (3 h); all four other developers attend and prepare subsystem forecasts (1 h each, separately booked). Sana independence demonstrated by Dec 4. No Sprint 1 approval if required evidence or capacity is missing. |
| LT-023 | S1 | 2 | P1 | 3 | LT-014 | Sprint goal, task estimates and owner capacity agreed. Nakry facilitates; each developer estimates own tasks and Tek approves the sprint objective and capacity decision. |
| LT-026 | S1 | 3 | P0 | 5 | LT-015 | Player reliably moves, jumps and lands on tiles. |
| LT-028 | S1 | 3 | P0 | 5 | LT-017 | Player can activate Tide Anchor and R3 release lever; lever exposes a Released state. Nakry reviews PR and verifies acceptance evidence independently of Tek (1 separately booked reviewer hour). |
| LT-032 | S1 | 3 | P1 | 5 | LT-010 | Readable collision and interactive prop placeholders using basic contrast and licensed/primitive assets; validate minimum readability without a standalone style guide. |
| LT-024 | S1 | 3 | P1 | 4 | LT-013 | R3 test script and observations ready. |
| LT-027 | S1 | 8 | P0 | 6 | LT-016, LT-017 | Anchor switches low/high states without invalid geometry; Sana and Nakry perform a production-code review (1 separately booked hour each), reinforcing Dec 4 backup capability. |
| LT-029 | S1 | 5 | P0 | 5 | LT-018 | Room transitions use named spawn markers; a preliminary Godot PC export opens on a second machine (or clean account), with test evidence. |
| LT-030 | S1 | 2 | P1 | 4 | LT-026 | R1 teaches move, jump, interact and reaches R2. |
| LT-025 | S1 | 1 | P2 | 2 | LT-023 | Actual hours, blockers and changes recorded. Owner updates are collected from individual logs; Tek consolidates risks and escalations. |
| LT-031 | S1 | 3 | P0 | 5 | LT-019, LT-029, LT-030 | Both room transitions work in either direction. R3 entrance may initially point to a placeholder; completed room integration is LT-041. |
| LT-033 | S1 | 2 | P1 | 3 | LT-011, LT-027 | Low/high state and interactables visibly distinguished with simple functional cues; no extended audiovisual specification required. Independent PR and acceptance review by SOK SANA (1 separately booked hour, before dependent work starts). |
| LT-037 | S1 | 8 | P0 | 6 | LT-027 | Platform reacts to room tide and carries player safely. |
| LT-039 | S1 | 3 | P0 | 7 | LT-018, LT-029 | Checkpoint stores active lamp; a hazard Area2D or out-of-bounds trigger and a player-accessible reset action invoke the same respawn service without combat or debug input. Test return to last safe checkpoint, retained puzzle flags and repeatable recovery; LT-069 may connect health depletion to this service if approved. Added 2 provisional hours for recovery trigger implementation. |
| LT-043 | S1 | 3 | P2 | 6 | LT-032, LT-030 | Gameplay geometry remains readable with art. Conditional: execute only after scope/capacity approval; otherwise record deferred with reason, not done. |
| LT-038 | S1 | 5 | P0 | 4 | LT-027, LT-037 | Changing tide cannot permanently trap player. |
| LT-040 | S1 | 3 | P0 | 4 | LT-029, LT-027 | Door entry initializes safe state without losing progress. |
| LT-041 | S1 | 5 | P0 | 6 | LT-020, LT-037 | Lever and platform are reachable and exit is achievable. |
| LT-044 | S1 | 2 | P1 | 3 | LT-039, LT-033 | Checkpoint state and prompts visually clear; Sana reviews PR and acceptance evidence independently of Tek (1 separately booked reviewer hour). |
| LT-042 | S1 | 3 | P0 | 5 | LT-041, LT-028, LT-039, LT-038, LT-040, LT-030, LT-031 | Player completes R1–R3 without debug assistance, including a successful player-triggered reset/hazard recovery. |
| LT-034 | S1 | 3 | P1 | 4 | LT-024, LT-042 | At least 3 testers observed; problems documented. Sana organizes testers and evidence; Tek reviews findings at LT-036. |
| LT-036 | S1 | 1 | P1 | 2 | LT-034 | Sprint review presents R1–R3 build on Dec 18; defect prioritization completes in LT-035 on Dec 21 before R4/R5 specifications. |
| LT-035 | S1 | 2 | P1 | 4 | LT-034, LT-036 | Issues observed Dec 17 and feedback from Dec 18 review are ranked and given owners before LT-045 begins; closeout Dec 21. Nakry leads technical triage with owners; Tek approves scope/priority changes. |
| LT-045 | S2 | 3 | P1 | 4 | LT-035 | R4/R5 specifications use feedback from LT-035 and define no-softlock cases for two-state switches and shortcut. Sopheakanha proposes acceptance paths with Tek (puzzle owner) and Toek (level owner); Tek retains scope approval. |
| LT-048 | S2 | 8 | P0 | 6 | LT-026, LT-027 | Stable deep-water movement in test chamber. |
| LT-050 | S2 | 5 | P0 | 6 | LT-028, LT-017 | Gate responds to multiple independent flags. Independent PR and acceptance review by SRENG SOPHEAKANHA (1 separately booked hour, before dependent work starts). |
| LT-054 | S2 | 3 | P2 | 5 | LT-032 | Mechanisms and passages clearly differentiated. Conditional: execute only after scope/capacity approval; otherwise record deferred with reason, not done. |
| LT-046 | S2 | 2 | P2 | 3 | LT-045 | Risks have owner, trigger and response. |
| LT-049 | S2 | 2 | P0 | 3 | LT-048, LT-017 | Deep-water entry respects ability flag. |
| LT-051 | S2 | 5 | P0 | 5 | LT-050, LT-040 | Opened mechanisms remain open on revisit. |
| LT-052 | S2 | 5 | P0 | 6 | LT-041, LT-045 | SW1 reachable low; SW2 reachable high. |
| LT-055 | S2 | 2 | P1 | 3 | LT-050, LT-032 | Player sees each lock activate and gate open using placeholders if necessary. Independent PR and acceptance review by SOK SANA (1 separately booked hour, before dependent work starts). |
| LT-047 | S2 | 2 | P1 | 3 | LT-045 | Reset, re-entry and shortcut cases documented. |
| LT-053 | S2 | 3 | P1 | 4 | LT-050, LT-052 | Main gate and shortcut placed with correct entrances. |
| LT-056 | S2 | 3 | P1 | 4 | LT-047, LT-053 | Demo route, capture checklist and fallback local recording prepared from current grayboxes; actual R4/R5 functionality is demonstrated/tested under LT-057. Nakry coordinates the demo preparation; developers supply their own subsystem evidence and Tek approves the presentation. |
| LT-059 | S2 | 5 | P0 | 6 | LT-048, LT-049 | Pickup changes underwater traversal as designed. |
| LT-061 | S2 | 8 | P0 | 6 | LT-050, LT-051, LT-053 | Both locks persist; R2↔R4 shortcut remains open. Independent PR and acceptance review by SRENG SOPHEAKANHA (1 separately booked hour, before dependent work starts). |
| LT-064 | S2 | 3 | P0 | 4 | LT-052, LT-045 | Archive geometry and pickup pedestal exist with placeholder pickup scene; final scripted pickup hookup is verified after LT-062. |
| LT-060 | S2 | 2 | P1 | 3 | LT-059 | Underwater entrance route works in test scene. |
| LT-062 | S2 | 3 | P0 | 5 | LT-039, LT-059 | Ability and all 3 checkpoints function in session. |
| LT-063 | S2 | 5 | P0 | 6 | LT-061, LT-052 | Puzzle is solvable and shortcut is safe. |
| LT-065 | S2 | 3 | P2 | 5 | LT-064 | Pickup readability and archive landmark established. Conditional: execute only after scope/capacity approval; otherwise record deferred with reason, not done. |
| LT-057 | S2 | 3 | P1 | 4 | LT-061, LT-062, LT-063, LT-064 | R1–R5, R4 permanent shortcut, and Diving Bell pickup verified by Dec 31. Record at least three sessions or give reason for smaller sample. |
| LT-066 | S2 | 3 | P1 | 4 | LT-055, LT-062 | Important changes have discernible sound feedback. |
| LT-058 | S2 | 1 | P2 | 2 | LT-057 | Actual effort, deviations and next sprint recorded at Jan 4 closeout; midterm build evidence remains due Dec 31. |
| LT-069 | S3 | 8 | P2 | 6 | LT-026, LT-039 | Player can attack, take damage and respawn. Conditional: execute only after scope/capacity approval; otherwise record deferred with reason, not done. |
| LT-071 | S3 | 5 | P0 | 5 | LT-060, LT-062, LT-040 | Both directions work; R2 re-entry preserves safe High Tide. |
| LT-072 | S3 | 5 | P0 | 5 | LT-061, LT-059 | Three switches unlock ending trigger in graybox. Independent PR and acceptance review by SRENG SOPHEAKANHA (1 separately booked hour, before dependent work starts). |
| LT-073 | S3 | 3 | P0 | 5 | LT-060, LT-071 | Navigable underwater route connects R2 to R7. |
| LT-076 | S3 | 3 | P2 | 4 | LT-069 | If combat approved, health is legible and enemy appearance differentiated; Sana reviews Tek’s code independently. Conditional: execute only after scope/capacity approval; otherwise record deferred with reason, not done. |
| LT-070 | S3 | 3 | P0 | 4 | LT-060, LT-071 | Entry and return avoid sealing player in geometry. |
| LT-074 | S3 | 5 | P0 | 6 | LT-072, LT-073 | Player can reach ending trigger using test geometry. |
| LT-075 | S3 | 3 | P1 | 5 | LT-073 | Underwater route and hazards have clear silhouettes. |
| LT-067 | S3 | 3 | P0 | 5 | LT-058, LT-070, LT-074 | Run complete R1–R7 route on Jan 8 with placeholder art and stub ending, no debug teleporting; test both tide states, safe returns and checkpoint recovery. Register blockers and capture report evidence. Sana conducts independent route testing with Toek providing the build; Tek reviews findings at LT-068. |
| LT-068 | S3 | 2 | P1 | 3 | LT-067 | Jan 11 review demonstrates R1–R7 traversal with placeholder ending; check both tide states, return paths and checkpoint recovery. Final R7 integration remains LT-084. |
| LT-078 | S3 | 3 | P1 | 4 | LT-057, LT-056 | Interim report includes R1–R5 evidence and release checklist; final R1–R7 evidence is added under LT-088 after feature freeze, then final build evidence under LT-090. |
| LT-080 | S3 | 8 | P2 | 5 | LT-069 | One enemy detects, moves, attacks and can be defeated. Conditional: execute only after scope/capacity approval; otherwise record deferred with reason, not done. |
| LT-082 | S3 | 3 | P0 | 4 | LT-072, LT-074 | Correct states trigger lighthouse completion once. Independent PR and acceptance review by SRENG SOPHEAKANHA (1 separately booked hour, before dependent work starts). |
| LT-086 | S3 | 8 | P2 | 7 | LT-075, LT-076 | Every room playable with consistent readable visuals. Conditional: execute only after scope/capacity approval; otherwise record deferred with reason, not done. |
| LT-084 | S3 | 3 | P0 | 5 | LT-074, LT-082 | Full map works without debug tools. |
| LT-087 | S3 | 3 | P1 | 4 | LT-082, LT-066 | Minimum interaction and ending feedback functional; ambient audio optional. |
| LT-077 | S3 | 3 | P0 | 5 | LT-068, LT-084 | Run the complete playable loop after LT-084 integrates R7; include at least five first-time test attempts or document constraints. Sopheakanha coordinates integrated testing; another developer verifies persistence-specific cases and Tek approves milestone readiness. |
| LT-085 | S3 | 5 | P0 | 5 | LT-084 | Nakry independently tests Toek’s levels in both tide states, including return routes and hazard/reset recovery; document defects and owners. Toek owns level fixes. |
| LT-081 | S3 | 3 | P0 | 5 | LT-077, LT-070 | Major movement and water regressions resolved. |
| LT-083 | S3 | 3 | P0 | 5 | LT-077, LT-071 | No permanent softlock via transitions or gates. Sopheakanha owns shared persistence and transitions; puzzle-specific defects are assigned to Tek through the defect log, with any extra effort re-estimated before approval. |
| LT-079 | S3 | 1 | P1 | 1 | LT-077, LT-081, LT-083, LT-085, LT-087 | Feature freeze on Jan 15 requires LT-081/083 fixes, LT-085 safety check and LT-087 audio/ending cues; unapproved scope additions stop. |
| LT-091 | Release | 3 | P0 | 4 | LT-081 | Re-test PC export on Jan 18 against current full build; backup and verify startup. Preliminary export already tested in LT-029. |
| LT-093 | Release | 3 | P0 | 5 | LT-083, LT-082 | All progression states pass repeatable test cases. |
| LT-097 | Release | 2 | P1 | 4 | LT-087 | Minimum sound, visual prompts and ending consistent; health UI only if combat retained. |
| LT-092 | Release | 3 | P0 | 5 | LT-091 | No severity-1/2 gameplay blocking bugs remain in retained scope. Sana owns player/gameplay defects; route puzzle and tide defects to their subsystem owners and re-estimate separately when required. |
| LT-094 | Release | 3 | P0 | 4 | LT-093 | Fixed regressions included in release candidate. |
| LT-098 | Release | 2 | P0 | 4 | LT-097 | Player-facing instructions and credits available. |
| LT-095 | Release | 3 | P0 | 5 | LT-085, LT-094 | Full playthrough succeeds without softlocks. |
| LT-096 | Release | 3 | P0 | 4 | LT-095 | No route blocker remains in approved levels. |
| LT-099 | Release | 2 | P0 | 2 | LT-092, LT-094, LT-096, LT-097 | Build and smoke-test final candidate on Jan 22 after all release fixes; include checksum/version and reproducible export instructions. |
| LT-088 | Release | 3 | P0 | 7 | LT-078, LT-079 | Report matches delivered retained scope; incorporate R1–R7 test and graybox evidence from LT-067, LT-068 and LT-077; update final build evidence at LT-090. Added 2 provisional hours for final evidence reconciliation; validate with actual report effort. |
| LT-089 | Release | 3 | P0 | 4 | LT-088 | Demo works offline and team rehearsal completed. |
| LT-090 | Release | 1 | P0 | 2 | LT-088, LT-089, LT-095, LT-096, LT-098, LT-099 | Final acceptance, report/build alignment and upload verification by Jan 23; Jan 24 is deadline contingency only, subject to instructor confirmation. |

### Sprint 0 task descriptions (reference for website Notes)

Sprint 0 originally comprised LT-001 through LT-022. LT-013/018/020 move to the Sprint 1 forecast; LT-021/022 are conditional. Use these descriptions when entering Notes on the course website. Their acceptance conditions are in the register above.

| Task | Description |
|---|---|
| LT-001 | Agree on responsibilities, nominal availability, conservative planning capacity and the weekly review routine. |
| LT-002 | Specify the seven-room MVP, must-have mechanics, and explicit exclusions. |
| LT-003 | Produce the initial requirements, user stories, and proposal for PM review. |
| LT-004 | Initialize Godot 4 and the shared Git repository with reproducible setup. |
| LT-005 | Use a tiny test level to confirm that the player can move and jump. |
| LT-006 | Document task branches from dev, reviewed PRs into dev, scene ownership and the Saturday/Sunday evening PM merge from dev to main; verify agreed controls. |
| LT-007 | Define shared tide, ability, gate, and interaction states and interfaces. |
| LT-008 | Map seven rooms, entrance/exit connections, ability gate, and shortcut. |
| LT-009 | Sketch R2/R3 geometry, tide positions, traversable routes, and objects. |
| LT-010 | Identify useful assets, check licenses, and evaluate suitability for Godot. |
| LT-011 | Sketch interaction prompts, tide-state feedback, and the initial health HUD. |
| LT-012 | Consolidate overview, scope, core loop, mechanics, puzzles, and progression in GDD v0.1. |
| LT-013 | Specify puzzle solutions and tests for transitions, persistence, and softlocks. |
| LT-014 | Review GDD and prototypes, actual hours, instructor scope response, remaining estimates, staffing and go/no-go; Tek 3 h plus four developers at 1 h each. |
| LT-015 | Turn movement experiment into a reusable controller with consistent collision. |
| LT-016 | Prototype low/high state switching and collision-safe environmental responses. |
| LT-017 | Document and exercise global flags and gameplay signal interfaces. |
| LT-018 | Specify entrances, safe spawn, room resets, checkpoints, and R6-to-R2 recovery. |
| LT-019 | Construct a graybox R2 with hub routes, blocked R6 entry, and Tide Anchor marker. |
| LT-020 | Construct a graybox R3 with lever/platform locations and testable jump geometry. |
| LT-021 | Define palette, character readability, environment contrast, and prop conventions. |
| LT-022 | List and prioritize tide, switch, checkpoint, health, and ending audiovisual feedback. |

### Sprint goals and weekly capacity (planning reference)

| Period | Sprint goal | Task count | Story Points |
|---|---|---:|---:|
| Sprint 0 (Nov 23–Dec 4) | Reduced prototype gate, scope decision and measured effort | 17 | 49 |
| Sprint 1 (Dec 7–21 closeout) | Deferred design details, playable R1–R3 and Rising Platform; style/audio specs conditional | 27 | 87 |
| Sprint 2 (Dec 21–Jan 4 closeout) | R4/R5, Floodgate shortcut, Diving Bell | 22 | 79 |
| Sprint 3 (Jan 4–15) | R6/R7, integrated ending; combat conditional | 21 | 83 |
| Release (Jan 18–23) | Tested PC build, docs and submission | 12 | 31 |
| **Total** | | **99** | **329** |

For Sprint 0, primary estimates are 40 h in W48 and 31 h in W49. W49 also needs 4 pairing hours and 4 developer decision-gate hours. Including 2.5 h/week coordination, W48 requires 42.5 h and W49 requires 41.5 h. W48 has three individual 9.5 h allocations; W49 has one (Sopheakanha). Confirm actual availability, redistribute or obtain agreement before approval; no full-sprint approval is assumed.

**Definition of Done:** Acceptance criteria pass, independent review and relevant testing are recorded, changes are integrated into dev (where applicable), and evidence is linked. Owners update task status and actual hours. Track inclusion in main separately; a weekly stable snapshot is not automatic proof of task completion. Milestones require demonstrated deliverables, not just completed checklists.

Before saving a project baseline, verify task ownership, date alignment, holidays, Story Points, dependencies and individual weekly loads in GIC ITC.

### Scope and delivery gates (reference, not imported tasks)

Full backlog: 435 primary task-hours / 329 provisional SP, plus 19 explicitly booked secondary hours (454 h total engineering effort). Conditional tasks: LT-021, LT-022, LT-043, LT-054, LT-065, LT-069, LT-076, LT-080, LT-086 (47 primary hours plus 1 conditional review hour). Candidate seven-room core: 406 h, including 18 secondary hours. This is a forecast, not committed scope. Deferred tasks remain unchecked and must be excluded from the approved baseline, not marked done. Tier 1: defer combat, decorative art and standalone style/audio specifications. Tier 2: simplify LT-052/053/063/073/074/084, LT-050/051/061/072/082, LT-055/066/075/087/097. These tasks total 78 primary hours; even 20–40% savings would recover only 15.6–31.2 h. No unvalidated Tier 2 savings are credited to the seven-room forecast. The five- and three-room scenarios separately expose speculative savings as ranges; see [scope alternatives](docs/scope-alternatives.md). Before Dec 4, ask the instructor whether fewer rooms (e.g. four or five), reduced puzzle count, or a changed deadline/scope is permitted. Preserve tide switching, ability-gated return, safe recovery and a functional ending in any approved alternative. Seven rooms remain the forecast until a change is approved; do not treat them as a guaranteed commitment. Main/pause menu remains unestimated pending instructor confirmation. The full report content was not removed when LT-078 moved earlier; LT-088 now includes a provisional 2-hour allowance for final evidence reconciliation.

**Reduced Sprint 0 decisions:** LT-013 (4 h), LT-018 (3 h) and LT-020 (5 h) move after the Dec 4 gate into Sprint 1; LT-021 (5 h) and LT-022 (4 h) move to conditional Sprint 1. The gate still requires safe tide/movement prototypes and minimum state contracts; detailed room-transition contracts and R3 geometry are required before dependent implementation, not before the prototype gate. These moves do not solve the downstream schedule. W50 is overloaded even without optional tasks. Keep LT-018 before LT-029 and LT-020 before LT-041; re-price LT-013/018/020 after the gate and rebuild W50 rather than returning them automatically to W49. LT-086 stays deferred by default. No overloaded forecast week is approved. LT-032 uses LT-010 and minimum readable placeholders; LT-033 uses LT-011 and LT-027. LT-025 remains on Dec 11 to retain explicit weekly risk reporting. LT-020 remains outside Sprint 0; do not expand the gate without confirmed capacity. The instructor scope question is owned by Tek and should be raised during the proposal review Nov 27; record the answer or blocker by Dec 4 in LT-014. Confirm whether Jan 24 and weekend submission are valid and whether menus are required.

| Date | Gate | Response if not met |
|---|---|---|
| 2026-12-04 | Movement and safe tide prototype, Sana independent prototype fix, actual hours, instructor scope decision, and re-estimated forecast | Simplify tide implementation and revise estimates; do not baseline Sprint 1 until capacity and required scope are reconciled. |
| 2026-12-11 | Isolated movement and safe tide switching with interaction | Stop expansion until stable; floating platform puzzle is due later. |
| 2026-12-18 | R1–R3 playable without debug assistance | Freeze decorative work; fix progression. |
| 2026-12-31 | R1–R5, Diving Bell and shortcut verified | Simplify R6/R7 geometry and puzzle complexity. |
| 2027-01-08 | Approved room count traversable with placeholders (seven-room forecast: R1–R7), both tide states, safe returns and checkpoint recovery | Defer combat/polish; prioritize blockers. |
| 2027-01-15 | Integrated retained scope tested; no new features | Fix blockers only. |
| 2027-01-22 | Verified Windows candidate | Submit as soon as acceptance passes; Jan 23 target, Jan 24 contingency. |

### Weekly engineering capacity (full / candidate core hours)

Includes named secondary hours; excludes 0.5 h/member/week routine coordination (add 2.5 h per team-week). Conservative individual engineering ceiling: 8.5 h; nominal ceiling: 11.5 h. All later dates are forecasts. The 9 h ceiling includes all work.

| ISO week | TEK | TANG | SOK | SRENG | TAK | Team engineering | Team incl. coordination | Core excess vs 45 h |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 2026-W48 | 5/5 | 9/9 | 8/8 | 9/9 | 9/9 | 40/40 | 42.5/42.5 | 0 |
| 2026-W49 | 8/8 | 8/8 | 8/8 | 9/9 | 6/6 | 39/39 | 41.5/41.5 | 0 |
| 2026-W50 | 14/14 | 11/11 | 12/12 | 12/12 | 14/14 | 63/63 | 65.5/65.5 | 20.5 |
| 2026-W51 | 5/5 | 11/6 | 19/9 | 11/11 | 11/11 | 57/42 | 59.5/44.5 | 0 |
| 2026-W52 | 12/12 | 12/7 | 10/10 | 10/10 | 10/10 | 54/49 | 56.5/51.5 | 6.5 |
| 2026-W53 | 10/10 | 13/8 | 9/9 | 6/6 | 10/10 | 48/43 | 50.5/45.5 | 0.5 |
| 2027-W01 | 15/11 | 9/9 | 16/9 | 7/7 | 11/11 | 58/47 | 60.5/49.5 | 4.5 |
| 2027-W02 | 4/4 | 16/9 | 10/5 | 10/10 | 5/5 | 45/33 | 47.5/35.5 | 0 |
| 2027-W03 | 13/13 | 8/8 | 11/11 | 9/9 | 9/9 | 50/50 | 52.5/52.5 | 7.5 |

| Member | Full engineering | Candidate core | Core excess vs 76.5 h |
| --- | --- | --- | --- |
| TEK CHANSETHA | 86 | 82 | +5.5 |
| TANG NAKRY | 97 | 75 | -1.5 |
| SOK SANA | 103 | 81 | +4.5 |
| SRENG SOPHEAKANHA | 83 | 83 | +6.5 |
| TAK TOEK | 85 | 85 | +8.5 |
| **Total** | 454 | 406 | +23.5 |

Person-week breaches (of 45, including coordination): conservative full 33, core 29; nominal full 12, core 6. Conservative team capacity 405 h includes 22.5 h coordination; engineering allowance 382.5 h. With 20% engineering overrun, initial engineering budget is 318.75 h. Seven-room core gap is 23.5 h before overrun and 87.25 h against the stress budget; stressed total is 509.7 h, or 104.7 h above capacity. These totals include inherited completed tasks as lifetime estimates, not verified remaining effort. Other review, defect and menu work remains unestimated. No overloaded forecast week is approved. All reviews are provisional bookings, not actual hours.

Nominal breaches (full / core, total hours including coordination):

| Week | Member | Full h | Core h |
| --- | --- | --- | --- |
| 2026-W50 | TEK CHANSETHA | 14.5 | 14.5 |
| 2026-W50 | SOK SANA | 12.5 | 12.5 |
| 2026-W50 | SRENG SOPHEAKANHA | 12.5 | 12.5 |
| 2026-W50 | TAK TOEK | 14.5 | 14.5 |
| 2026-W51 | SOK SANA | 19.5 | 9.5 |
| 2026-W52 | TEK CHANSETHA | 12.5 | 12.5 |
| 2026-W52 | TANG NAKRY | 12.5 | 7.5 |
| 2026-W53 | TANG NAKRY | 13.5 | 8.5 |
| 2027-W01 | TEK CHANSETHA | 15.5 | 11.5 |
| 2027-W01 | SOK SANA | 16.5 | 9.5 |
| 2027-W02 | TANG NAKRY | 16.5 | 9.5 |
| 2027-W03 | TEK CHANSETHA | 13.5 | 13.5 |

Conservative breaches (full / core, total hours including coordination):

| Week | Member | Full h | Core h |
| --- | --- | --- | --- |
| 2026-W48 | TANG NAKRY | 9.5 | 9.5 |
| 2026-W48 | SRENG SOPHEAKANHA | 9.5 | 9.5 |
| 2026-W48 | TAK TOEK | 9.5 | 9.5 |
| 2026-W49 | SRENG SOPHEAKANHA | 9.5 | 9.5 |
| 2026-W50 | TEK CHANSETHA | 14.5 | 14.5 |
| 2026-W50 | TANG NAKRY | 11.5 | 11.5 |
| 2026-W50 | SOK SANA | 12.5 | 12.5 |
| 2026-W50 | SRENG SOPHEAKANHA | 12.5 | 12.5 |
| 2026-W50 | TAK TOEK | 14.5 | 14.5 |
| 2026-W51 | TANG NAKRY | 11.5 | 6.5 |
| 2026-W51 | SOK SANA | 19.5 | 9.5 |
| 2026-W51 | SRENG SOPHEAKANHA | 11.5 | 11.5 |
| 2026-W51 | TAK TOEK | 11.5 | 11.5 |
| 2026-W52 | TEK CHANSETHA | 12.5 | 12.5 |
| 2026-W52 | TANG NAKRY | 12.5 | 7.5 |
| 2026-W52 | SOK SANA | 10.5 | 10.5 |
| 2026-W52 | SRENG SOPHEAKANHA | 10.5 | 10.5 |
| 2026-W52 | TAK TOEK | 10.5 | 10.5 |
| 2026-W53 | TEK CHANSETHA | 10.5 | 10.5 |
| 2026-W53 | TANG NAKRY | 13.5 | 8.5 |
| 2026-W53 | SOK SANA | 9.5 | 9.5 |
| 2026-W53 | TAK TOEK | 10.5 | 10.5 |
| 2027-W01 | TEK CHANSETHA | 15.5 | 11.5 |
| 2027-W01 | TANG NAKRY | 9.5 | 9.5 |
| 2027-W01 | SOK SANA | 16.5 | 9.5 |
| 2027-W01 | TAK TOEK | 11.5 | 11.5 |
| 2027-W02 | TANG NAKRY | 16.5 | 9.5 |
| 2027-W02 | SOK SANA | 10.5 | 5.5 |
| 2027-W02 | SRENG SOPHEAKANHA | 10.5 | 10.5 |
| 2027-W03 | TEK CHANSETHA | 13.5 | 13.5 |
| 2027-W03 | SOK SANA | 11.5 | 11.5 |
| 2027-W03 | SRENG SOPHEAKANHA | 9.5 | 9.5 |
| 2027-W03 | TAK TOEK | 9.5 | 9.5 |

### Booked secondary effort (not separate imported tasks)

| Week | Developer | Related task | Hours | Status |
| --- | --- | --- | --- | --- |
| 2026-W49 | TANG NAKRY | LT-014 | 1 | Candidate core |
| 2026-W49 | SOK SANA | LT-014 | 1 | Candidate core |
| 2026-W49 | SRENG SOPHEAKANHA | LT-014 | 1 | Candidate core |
| 2026-W49 | TAK TOEK | LT-014 | 1 | Candidate core |
| 2026-W49 | TANG NAKRY | LT-016 | 2 | Candidate core |
| 2026-W49 | SOK SANA | LT-016 | 2 | Candidate core |
| 2026-W50 | TANG NAKRY | LT-027 | 1 | Candidate core |
| 2026-W50 | SOK SANA | LT-027 | 1 | Candidate core |
| 2026-W50 | TANG NAKRY | LT-028 | 1 | Candidate core |
| 2026-W50 | SOK SANA | LT-033 | 1 | Candidate core |
| 2026-W51 | SOK SANA | LT-044 | 1 | Candidate core |
| 2026-W52 | SRENG SOPHEAKANHA | LT-050 | 1 | Candidate core |
| 2026-W52 | SOK SANA | LT-055 | 1 | Candidate core |
| 2026-W53 | SRENG SOPHEAKANHA | LT-061 | 1 | Candidate core |
| 2027-W01 | SRENG SOPHEAKANHA | LT-072 | 1 | Candidate core |
| 2027-W01 | SOK SANA | LT-076 | 1 | Conditional |
| 2027-W01 | SRENG SOPHEAKANHA | LT-082 | 1 | Candidate core |

### PM development target and ownership changes

Target 40–50% of Tek’s actual working time developing/integrating gameplay. Ordinary 9 h week: 4 h programming, 2 h management, 1 h design/docs, 1 h tests/review, 0.5 h routine coordination, 0.5 h reserve. This is an average target, not a commitment for each week. Direct programming is 35 h in the core and 39 h in the full forecast; including coordination, Tek’s core allocation is 86.5 h (40.5% programming) and full allocation is 90.5 h (43.1% programming). Actual share must be measured in the individual log. No guarantee of 9 h individual feasibility.

| Task | Previous owner | Proposed owner | Primary h |
| --- | --- | --- | --- |
| LT-023 | TEK CHANSETHA | TANG NAKRY | 3 |
| LT-033 | TANG NAKRY | TEK CHANSETHA | 3 |
| LT-034 | TEK CHANSETHA | SOK SANA | 4 |
| LT-035 | TEK CHANSETHA | TANG NAKRY | 4 |
| LT-045 | TEK CHANSETHA | SRENG SOPHEAKANHA | 4 |
| LT-050 | SRENG SOPHEAKANHA | TEK CHANSETHA | 6 |
| LT-055 | TANG NAKRY | TEK CHANSETHA | 3 |
| LT-056 | TEK CHANSETHA | TANG NAKRY | 4 |
| LT-061 | SRENG SOPHEAKANHA | TEK CHANSETHA | 6 |
| LT-067 | TEK CHANSETHA | SOK SANA | 5 |
| LT-072 | SRENG SOPHEAKANHA | TEK CHANSETHA | 5 |
| LT-077 | TEK CHANSETHA | SRENG SOPHEAKANHA | 5 |
| LT-082 | SRENG SOPHEAKANHA | TEK CHANSETHA | 4 |

| Task | Previous date | Forecast date | Reason |
| --- | --- | --- | --- |
| LT-013 | 2026-12-09 | 2026-12-07 | Avoid Tek LT-033 collision; precedes LT-024 |
| LT-051 | 2026-12-22 | 2026-12-23 | Avoid Sopheakanha LT-045 collision; before LT-061 |
| LT-054 | 2026-12-21 | 2026-12-24 | Conditional; avoid Nakry LT-035 collision |
| LT-076 | 2027-01-05 | 2027-01-07 | Conditional; avoid Tek LT-072 collision |
| LT-082 | 2027-01-11 | 2027-01-08 | Avoid Tek LT-068 collision; after LT-074, before LT-084 |

LT-042 explicitly depends on LT-030 and LT-031; LT-031 also depends on LT-030. The three-room alternative has no separate R1, so it retains LT-031 but not LT-030. LT-082’s earlier forecast does not make the Jan 8 graybox gate require a polished ending.

### Actual-hours logs (start immediately)

Each member owns one file in [docs/actual-hours/](docs/actual-hours/README.md). Record verified session hours, evidence and activity type, including both participants in pairing and the Dec 4 gate. Tek owns [weekly-summary.md](docs/actual-hours/weekly-summary.md) and consolidates actuals and remaining effort. Use GitHub/GIC ITC only for evidence links and course-required updates; the individual logs are the primary hours record, not a duplicate time entry requirement.

**Approval blockers:** confirm W48 and W49 individual availability and the reduced gate scope; obtain instructor decision on room count/deadline/menu; agree LT-085, 13 owner transfers, five forecast date changes and deferrals; confirm actual review time; run GIC ITC import preview (not yet performed); review the synchronized README, charter and scope with the team; confirm weekend integration capacity and branch controls. All later dates including overloaded W50 and release chain are forecasts. Jan 22 release candidate and Jan 23 target leave no weekday submission buffer; resolve during re-baselining. If the site cannot baseline only selected work, retain the entire import as a draft.

### Companion planning files

- [Scope alternatives](docs/scope-alternatives.md): exact retained, modified and deferred IDs, predecessor sets and provisional effort for three room-count options. No alternative is approved automatically.
- [Individual actual-hours logs](docs/actual-hours/README.md): individual work records, pairing, review, coordination and weekly forecast.
- [Sprint 0 acceptance checklist](docs/sprint-0-acceptance.md): owner-specific evidence and go/no-go criteria.
- [Team working agreement](docs/team-working-agreement.md): autonomy, responsibilities, decisions, independent reviews and escalation.

Sprint 0 exception decisions: Nakry, Sopheakanha and Toek each need 9.5 h in W48 including coordination; Sopheakanha needs 9.5 h in W49. Confirm all four person-week exceptions explicitly or revise assignments before approval. LT-001 is recorded complete in the repository; reconfirm revised governance and availability separately. LT-002 was checked in the local v0.11 forecast but remains open in repository v0.5 and the scope approval record; retain the open status pending verification. Verify actual dates and evidence rather than inventing actuals.
