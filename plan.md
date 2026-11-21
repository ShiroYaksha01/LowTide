# Project plan: Lowtide

YAG V3 · Final Year Project Team · IT Project Management (I5, 2026-2027 Semester 1)

Keep this file in the repository and update task status each week. The GIC ITC website maintains its own imported plan and is the course progress-check source of truth. After importing, keep the website and this file aligned.

**Version:** v0.5 (proposed, pending team and instructor approval) · **Official start:** 2026-11-23 · **Final deadline:** 2027-01-24 (target submission: 2027-01-23). The period ending 2026-11-22 was concept and planning preparation, not implementation.

**Product:** Godot 4 PC puzzle-first Metroidvania with seven interconnected rooms, player-controlled Low/High Tide puzzles, a Diving Bell, meaningful return paths, basic combat, three checkpoints, and a lighthouse-ending puzzle. No boss, second ability, realistic water simulation, disk save/load, or multiplayer in the baseline.

**Scrum model:** Sprint 0 (Start + Design), three two-week development sprints, and a final release week. Five members each commit 12 hours per week. The estimates are **429 task-hours**, **329 provisional Story Points**, and **111 hours unallocated** from 540 total team-hours before a separate reporting/coordination allowance of 22.5 hours (net reserve **88.5 hours**). Story Points are relative complexity, not hours.

**Import note:** The 99 task checklist lines below deliberately follow the instructor's one-line Markdown syntax, as the earlier GIC ITC preview recognized this format. The detailed estimation and acceptance register at the end is a manual reference and may not populate the website's Points, Notes or dependency fields. Check the import preview before replacing the plan.

## Team

| Member | Role |
|---|---|
| TEK CHANSETHA | Project manager / game design, QA and documentation |
| SOK SANA | Developer: player movement, tide, water and combat |
| SRENG SOPHEAKANHA | Developer: interactions, gates, progression and transitions |
| TAK TOEK | Developer: room layouts, grayboxing, puzzles and collision |
| TANG NAKRY | Developer: visuals, UI, audio and user guide |

## Milestones

| Milestone | Date |
|---|---|
| Proposal reviewed/submitted for approval | 2026-11-27 |
| Design reviewed | 2026-12-04 |
| Core mechanics demonstration | 2026-12-11 |
| Sprint 1 review | 2026-12-18 |
| Midterm demo (build ready December 31) | 2027-01-01 |
| Full graybox review (playthrough ready January 8) | 2027-01-09 |
| Sprint 3 review / feature freeze | 2027-01-15 |
| Release candidate | 2027-01-22 |
| Submission-ready sign-off | 2027-01-23 |
| Final submission deadline | 2027-01-24 |

## 1. Start (week 1, 2026-11-23 to 2026-11-28)

- [ ] LT-001: Confirm project charter, roles, weekly cadence · 2026-11-26 to 2026-11-26 · TEK CHANSETHA
- [ ] LT-003: Compile requirements, user stories and proposal draft for PM review · 2026-11-26 to 2026-11-26 · SRENG SOPHEAKANHA
- [ ] LT-004: Create Godot repository and base project · 2026-11-26 to 2026-11-26 · SOK SANA
- [ ] LT-008: Draft seven-room world graph and entrances · 2026-11-26 to 2026-11-26 · TAK TOEK
- [ ] LT-010: Audit art references, assets and licenses · 2026-11-26 to 2026-11-26 · TANG NAKRY
- [ ] LT-002: Define MVP scope and explicit exclusions · 2026-11-27 to 2026-11-27 · TEK CHANSETHA
- [ ] LT-005: Try minimal movement feasibility scene · 2026-11-27 to 2026-11-27 · SOK SANA
- [ ] LT-006: Define Git branching, scene ownership and code review · 2026-11-27 to 2026-11-27 · SRENG SOPHEAKANHA
- [ ] LT-009: Sketch R2/R3 puzzle geometry and routes · 2026-11-27 to 2026-11-27 · TAK TOEK
- [ ] LT-011: Sketch UI and tide feedback direction · 2026-11-27 to 2026-11-27 · TANG NAKRY
- [ ] **Milestone: Proposal reviewed/submitted for approval** · 2026-11-27

## 2. Design (week 2, 2026-11-30 to 2026-12-05)

- [ ] LT-007: Draft state model and object interaction interfaces · 2026-11-30 to 2026-11-30 · SRENG SOPHEAKANHA
- [ ] LT-015: Implement movement controller foundation · 2026-11-30 to 2026-11-30 · SOK SANA
- [ ] LT-021: Create minimum viable art/style guide · 2026-11-30 to 2026-11-30 · TANG NAKRY
- [ ] LT-012: GDD v0.1: rules, progression, scope · 2026-12-01 to 2026-12-01 · TEK CHANSETHA
- [ ] LT-016: Tide-state proof of concept in test room · 2026-12-01 to 2026-12-01 · SOK SANA
- [ ] LT-017: Build world-state schema and signal contracts · 2026-12-01 to 2026-12-01 · SRENG SOPHEAKANHA
- [ ] LT-019: Graybox R2 hub and two entrances · 2026-12-01 to 2026-12-01 · TAK TOEK
- [ ] LT-022: Define sound/UI feedback requirements · 2026-12-01 to 2026-12-01 · TANG NAKRY
- [ ] LT-013: Puzzle acceptance and softlock test checklist · 2026-12-02 to 2026-12-02 · TEK CHANSETHA
- [ ] LT-018: Define room transition and checkpoint contracts · 2026-12-02 to 2026-12-02 · SRENG SOPHEAKANHA
- [ ] LT-020: Graybox R3 tide puzzle geometry · 2026-12-02 to 2026-12-02 · TAK TOEK
- [ ] LT-014: Conduct design review and update backlog · 2026-12-03 to 2026-12-03 · TEK CHANSETHA
- [ ] **Milestone: Design reviewed** · 2026-12-04

## 3. Sprint 1 (weeks 3–4, 2026-12-07 to 2026-12-19)

- [ ] LT-023: Plan Sprint 1 and refine acceptance criteria · 2026-12-07 to 2026-12-07 · TEK CHANSETHA
- [ ] LT-026: Finish player movement and collision · 2026-12-07 to 2026-12-07 · SOK SANA
- [ ] LT-028: Implement generic interactable base · 2026-12-07 to 2026-12-07 · SRENG SOPHEAKANHA
- [ ] LT-032: Create functional placeholder tiles and props · 2026-12-07 to 2026-12-07 · TANG NAKRY
- [ ] LT-024: Prepare tutorial observation checklist · 2026-12-08 to 2026-12-08 · TEK CHANSETHA
- [ ] LT-027: Build reusable tide controller · 2026-12-08 to 2026-12-08 · SOK SANA
- [ ] LT-029: Implement room transition service and perform first PC export smoke test · 2026-12-08 to 2026-12-08 · SRENG SOPHEAKANHA
- [ ] LT-030: Build R1 tutorial graybox · 2026-12-08 to 2026-12-08 · TAK TOEK
- [ ] LT-025: Weekly review and risk log · 2026-12-09 to 2026-12-09 · TEK CHANSETHA
- [ ] LT-031: Connect R2 hub graybox to R1/R3 · 2026-12-09 to 2026-12-09 · TAK TOEK
- [ ] LT-033: Implement tide/interact visual indicators · 2026-12-09 to 2026-12-09 · TANG NAKRY
- [ ] LT-037: Implement two-position floating platform · 2026-12-14 to 2026-12-14 · SOK SANA
- [ ] LT-039: Implement checkpoint storage and debug-triggered session respawn · 2026-12-14 to 2026-12-14 · SRENG SOPHEAKANHA
- [ ] LT-043: Integrate R1–R3 early visuals · 2026-12-14 to 2026-12-14 · TANG NAKRY
- [ ] LT-038: Add tide-switch collision/softlock guards · 2026-12-15 to 2026-12-15 · SOK SANA
- [ ] LT-040: Implement room entry state rules · 2026-12-15 to 2026-12-15 · SRENG SOPHEAKANHA
- [ ] LT-041: Build R3 Rising Platform room · 2026-12-15 to 2026-12-15 · TAK TOEK
- [ ] LT-044: Add checkpoint and interaction icon feedback · 2026-12-15 to 2026-12-15 · TANG NAKRY
- [ ] LT-042: Assemble and fix first puzzle playthrough · 2026-12-16 to 2026-12-16 · TAK TOEK
- [ ] LT-034: Run R3 tutorial playtest and capture issues · 2026-12-17 to 2026-12-17 · TEK CHANSETHA
- [ ] LT-036: Sprint 1 review and progress update · 2026-12-18 to 2026-12-18 · TEK CHANSETHA
- [ ] LT-035: Review acceptance criteria and reprioritize defects · 2026-12-19 to 2026-12-19 · TEK CHANSETHA
- [ ] **Milestone: Core mechanics demonstration** · 2026-12-11

- [ ] **Milestone: Sprint 1 review** · 2026-12-18

## 4. Sprint 2 (weeks 5–6, 2026-12-21 to 2027-01-02)

- [ ] LT-045: Specify R4/R5 acceptance and logic paths · 2026-12-21 to 2026-12-21 · TEK CHANSETHA
- [ ] LT-048: Implement basic underwater movement · 2026-12-21 to 2026-12-21 · SOK SANA
- [ ] LT-050: Build reusable switches and conditional gates · 2026-12-21 to 2026-12-21 · SRENG SOPHEAKANHA
- [ ] LT-054: Produce R4 visual set · 2026-12-21 to 2026-12-21 · TANG NAKRY
- [ ] LT-046: Review capacity, risk triggers and blockers · 2026-12-22 to 2026-12-22 · TEK CHANSETHA
- [ ] LT-049: Implement Diving Bell water access checks · 2026-12-22 to 2026-12-22 · SOK SANA
- [ ] LT-051: Persist puzzle flags across room transitions · 2026-12-22 to 2026-12-22 · SRENG SOPHEAKANHA
- [ ] LT-052: Graybox R4 lower and upper routes · 2026-12-22 to 2026-12-22 · TAK TOEK
- [ ] LT-055: Add switch/gate feedback cues · 2026-12-22 to 2026-12-22 · TANG NAKRY
- [ ] LT-047: Prepare test cases for persistent gates · 2026-12-23 to 2026-12-23 · TEK CHANSETHA
- [ ] LT-053: Assemble R4 gates and lever positions · 2026-12-23 to 2026-12-23 · TAK TOEK
- [ ] LT-056: Prepare midterm demo script, fallback recording workflow and evidence checklist · 2026-12-28 to 2026-12-28 · TEK CHANSETHA
- [ ] LT-059: Connect Diving Bell to underwater movement · 2026-12-28 to 2026-12-28 · SOK SANA
- [ ] LT-061: Complete R4 floodgate + R2 shortcut logic · 2026-12-28 to 2026-12-28 · SRENG SOPHEAKANHA
- [ ] LT-064: Build R5 archive and pickup pedestal · 2026-12-28 to 2026-12-28 · TAK TOEK
- [ ] LT-060: Prototype R6 deep-water entrance physics · 2026-12-30 to 2026-12-30 · SOK SANA
- [ ] LT-062: Implement Diving Bell pickup and CP2/CP3 · 2026-12-30 to 2026-12-30 · SRENG SOPHEAKANHA
- [ ] LT-063: Integrate R4 puzzle and validate return route · 2026-12-30 to 2026-12-30 · TAK TOEK
- [ ] LT-065: Implement R5 archive visual details · 2026-12-30 to 2026-12-30 · TANG NAKRY
- [ ] LT-057: Observe progression testing and triage issues · 2026-12-31 to 2026-12-31 · TEK CHANSETHA
- [ ] LT-066: Integrate pickup, gate and tide audio cues · 2026-12-31 to 2026-12-31 · TANG NAKRY
- [ ] LT-058: Update backlog and sprint review · 2027-01-02 to 2027-01-02 · TEK CHANSETHA
- [ ] **Milestone: Midterm demo** · 2027-01-01

## 5. Sprint 3 (weeks 7–8, 2027-01-04 to 2027-01-16)

- [ ] LT-069: Implement player attack, damage and health · 2027-01-04 to 2027-01-04 · SOK SANA
- [ ] LT-071: Implement R2↔R6 ability gate and safe return · 2027-01-04 to 2027-01-04 · SRENG SOPHEAKANHA
- [ ] LT-072: Build R7 final puzzle state logic stub · 2027-01-05 to 2027-01-05 · SRENG SOPHEAKANHA
- [ ] LT-073: Graybox R6 Drowned Conduit · 2027-01-05 to 2027-01-05 · TAK TOEK
- [ ] LT-076: Prototype health UI and enemy visuals · 2027-01-05 to 2027-01-05 · TANG NAKRY
- [ ] LT-070: Validate water/ability gate collision safety · 2027-01-06 to 2027-01-06 · SOK SANA
- [ ] LT-074: Graybox R7 Lighthouse Engine · 2027-01-06 to 2027-01-06 · TAK TOEK
- [ ] LT-075: Integrate R6 thematic art and hazard cues · 2027-01-06 to 2027-01-06 · TANG NAKRY
- [ ] LT-067: Test full progression scenario and risks · 2027-01-08 to 2027-01-08 · TEK CHANSETHA
- [ ] LT-068: Hold Jan 9 graybox review and scope check · 2027-01-09 to 2027-01-09 · TEK CHANSETHA
- [ ] LT-078: Draft final report, evidence and release checklist · 2027-01-11 to 2027-01-11 · TEK CHANSETHA
- [ ] LT-080: Implement single simple enemy AI · 2027-01-11 to 2027-01-11 · SOK SANA
- [ ] LT-082: Finish R7 finale and ending trigger logic · 2027-01-11 to 2027-01-11 · SRENG SOPHEAKANHA
- [ ] LT-086: Polish essential visual assets across rooms · 2027-01-11 to 2027-01-11 · TANG NAKRY
- [ ] LT-084: Integrate R7 puzzle and check all room collision · 2027-01-12 to 2027-01-12 · TAK TOEK
- [ ] LT-087: Integrate core audio and ending presentation · 2027-01-12 to 2027-01-12 · TANG NAKRY
- [ ] LT-077: Conduct full playtests and document friction · 2027-01-13 to 2027-01-13 · TEK CHANSETHA
- [ ] LT-085: Run level softlock and hazard pass R1–R7 · 2027-01-13 to 2027-01-13 · TAK TOEK
- [ ] LT-081: Fix movement/tide integration defects · 2027-01-14 to 2027-01-14 · SOK SANA
- [ ] LT-083: Fix gate/persistence/transition bugs · 2027-01-14 to 2027-01-14 · SRENG SOPHEAKANHA
- [ ] LT-079: Run feature-freeze and review meeting · 2027-01-15 to 2027-01-15 · TEK CHANSETHA
- [ ] **Milestone: Full graybox review** · 2027-01-09

- [ ] **Milestone: Sprint 3 review / feature freeze** · 2027-01-15

## 6. Testing and release (week 9, 2027-01-18 to 2027-01-23)

- [ ] LT-091: Re-run PC export smoke test and create release build backup · 2027-01-18 to 2027-01-18 · SOK SANA
- [ ] LT-093: Regression test checkpoints, gates, abilities · 2027-01-18 to 2027-01-18 · SRENG SOPHEAKANHA
- [ ] LT-097: Finish required HUD and audiovisual polish · 2027-01-18 to 2027-01-18 · TANG NAKRY
- [ ] LT-092: Fix release-blocking combat/tide defects · 2027-01-19 to 2027-01-19 · SOK SANA
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
| Tide system proves unstable | High | High | If Low/High changes are unsafe by Dec 11, halt room expansion; simplify to fixed safe positions. Owner: SOK SANA. |
| Persistent switches or R6-to-R2 return cause softlocks | Medium | High | Test state transitions and safe spawns; require gates and shortcut to retain states across re-entry. Owner: SRENG SOPHEAKANHA. |
| Players cannot understand puzzles | Medium | Medium | Run first-time player tests, improve visual cues, and avoid adding mechanics. Owner: TEK CHANSETHA. |
| Room and art integration bottleneck | High | High | Pair on room assembly, reuse assets and focus on readability. Owner: TAK TOEK. |
| A member becomes unavailable | Medium | High | Keep shared code/documentation and reassign critical tasks based on available hours. Owner: TEK CHANSETHA. |
| Course calendar or first-week capacity differs | High | High | Verify Resources/Timeline availability (initially 2 days per person for Week 1), holidays and exams before baseline. Owner: TEK CHANSETHA. |
| Release build or documentation is late | Medium | High | Run PC export tests before release week, freeze features Jan 15, and verify final build Jan 22. Owner: SOK SANA. |

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

### Scrum estimates and dependencies (reference for website task fields)

The following table supplies the proposed **Points** and **Notes** information. The importer may ignore this reference table; enter or verify these values in task details after importing.

| Task | Sprint | SP | Priority | Est. hours | Depends on | Acceptance / Done when |
|---|---|---:|---|---:|---|---|
| LT-001 | S0-W1 | 1 | P1 | 2 | none | Five members approve roles and 12 h/week commitment. |
| LT-003 | S0-W1 | 3 | P0 | 5 | none | Draft covers team requirements and proposal; TEK CHANSETHA reviews and approves scope at the Nov 27 proposal review. This is delegated drafting, not delegated PM approval. |
| LT-004 | S0-W1 | 3 | P0 | 5 | none | Project opens and runs on a second machine. |
| LT-008 | S0-W1 | 3 | P0 | 5 | none | R1–R7 adjacency and gates reviewed. |
| LT-010 | S0-W1 | 3 | P1 | 5 | none | Asset source, suitability and license recorded. |
| LT-002 | S0-W1 | 2 | P0 | 3 | LT-001 | Seven-room scope and excluded features documented. |
| LT-005 | S0-W1 | 3 | P0 | 4 | LT-004 | Character can move and jump in a test scene. |
| LT-006 | S0-W1 | 2 | P1 | 4 | LT-004 | Team documents branching, PR and merge rules. |
| LT-009 | S0-W1 | 3 | P1 | 4 | LT-008 | Entrances, exits, waterlines and anchors identified. |
| LT-011 | S0-W1 | 2 | P2 | 3 | LT-010 | Legible draft UI and tide-state feedback agreed. |
| LT-007 | S0-W2 | 3 | P0 | 3 | LT-002 | Shared tide/gate/ability flags have names and event contract compatible with R2 and R3, reviewed by M2/M4. |
| LT-015 | S0-W2 | 3 | P0 | 5 | LT-005 | Repeatable horizontal movement and jumps in graybox. |
| LT-021 | S0-W2 | 3 | P1 | 5 | LT-010 | Color, readability and silhouette principles documented. |
| LT-012 | S0-W2 | 3 | P0 | 5 | LT-002, LT-003, LT-007 | Reviewable GDD reflects agreed MVP. |
| LT-016 | S0-W2 | 8 | P0 | 5 | LT-007 | Low/high transitions switch collision-safe objects. |
| LT-017 | S0-W2 | 3 | P0 | 5 | LT-007 | Shared flags and object signal API documented/tested. |
| LT-019 | S0-W2 | 3 | P1 | 5 | LT-008, LT-015 | R2 has readable main route and blocked R6 gate. |
| LT-022 | S0-W2 | 2 | P2 | 4 | LT-011 | Interaction, tide, health and ending cues listed. |
| LT-013 | S0-W2 | 3 | P1 | 4 | LT-009, LT-012 | Each puzzle has expected solution and recovery criteria. |
| LT-018 | S0-W2 | 3 | P0 | 3 | LT-017 | Document safe entrances, state reset, checkpoint position, and respawn behavior. Room return R6 to R2 must not softlock. |
| LT-020 | S0-W2 | 3 | P1 | 5 | LT-009, LT-015 | R3 supports solvable jump distances on paper/in graybox. |
| LT-014 | S0-W2 | 1 | P1 | 1 | LT-012 | Open design decisions recorded and owners assigned. |
| LT-023 | S1 | 2 | P1 | 3 | LT-014 | Sprint goal, task estimates and owner capacity agreed. |
| LT-026 | S1 | 3 | P0 | 5 | LT-015 | Player reliably moves, jumps and lands on tiles. |
| LT-028 | S1 | 3 | P0 | 5 | LT-017 | Player can activate Tide Anchor and R3 release lever; lever exposes a Released state. |
| LT-032 | S1 | 3 | P1 | 5 | LT-021 | Readable collision and interactive prop placeholders. |
| LT-024 | S1 | 3 | P1 | 4 | LT-013 | R3 test script and observations ready. |
| LT-027 | S1 | 8 | P0 | 6 | LT-016, LT-017 | Anchor switches low/high states without invalid geometry. |
| LT-029 | S1 | 5 | P0 | 5 | LT-018 | Room transitions use named spawn markers; a preliminary Godot PC export opens on a second machine (or clean account), with test evidence. |
| LT-030 | S1 | 2 | P1 | 4 | LT-026 | R1 teaches move, jump, interact and reaches R2. |
| LT-025 | S1 | 1 | P2 | 2 | LT-023 | Actual hours, blockers and changes recorded. |
| LT-031 | S1 | 3 | P0 | 5 | LT-019, LT-029 | Both room transitions work in either direction. |
| LT-033 | S1 | 2 | P1 | 3 | LT-022, LT-027 | Low/high state and interactables visibly distinguished. |
| LT-037 | S1 | 8 | P0 | 6 | LT-027 | Platform reacts to room tide and carries player safely. |
| LT-039 | S1 | 3 | P0 | 5 | LT-018, LT-029 | Checkpoint stores active lamp and restores player through a debug/test defeat trigger; actual health-depletion event is connected in LT-069. |
| LT-043 | S1 | 3 | P1 | 6 | LT-032, LT-030 | Gameplay geometry remains readable with art. |
| LT-038 | S1 | 5 | P0 | 4 | LT-027, LT-037 | Changing tide cannot permanently trap player. |
| LT-040 | S1 | 3 | P0 | 4 | LT-029, LT-027 | Door entry initializes safe state without losing progress. |
| LT-041 | S1 | 5 | P0 | 6 | LT-020, LT-037 | Lever and platform are reachable and exit is achievable. |
| LT-044 | S1 | 2 | P1 | 3 | LT-039, LT-033 | Checkpoint state and prompts visually clear. |
| LT-042 | S1 | 3 | P0 | 5 | LT-041, LT-028 | Player completes R1–R3 without debug assistance. |
| LT-034 | S1 | 3 | P1 | 4 | LT-024, LT-042 | At least 3 testers observed; problems documented. |
| LT-036 | S1 | 1 | P1 | 2 | LT-034 | Sprint review presents R1–R3 build on Dec 18; defect prioritization is allowed to complete LT-035 on Dec 19. |
| LT-035 | S1 | 2 | P1 | 4 | LT-034, LT-036 | Issues observed Dec 17 and feedback from Dec 18 review are ranked and given owners before Sprint 2. |
| LT-045 | S2 | 3 | P1 | 4 | LT-035 | R4/R5 specifications use feedback from LT-035 and define no-softlock cases for two-state switches and shortcut. |
| LT-048 | S2 | 8 | P0 | 6 | LT-026, LT-027 | Stable deep-water movement in test chamber. |
| LT-050 | S2 | 5 | P0 | 6 | LT-028, LT-017 | Gate responds to multiple independent flags. |
| LT-054 | S2 | 3 | P1 | 5 | LT-043 | Mechanisms and passages clearly differentiated. |
| LT-046 | S2 | 2 | P2 | 3 | LT-045 | Risks have owner, trigger and response. |
| LT-049 | S2 | 2 | P0 | 3 | LT-048, LT-017 | Deep-water entry respects ability flag. |
| LT-051 | S2 | 5 | P0 | 5 | LT-050, LT-040 | Opened mechanisms remain open on revisit. |
| LT-052 | S2 | 5 | P0 | 6 | LT-041, LT-045 | SW1 reachable low; SW2 reachable high. |
| LT-055 | S2 | 2 | P1 | 3 | LT-050, LT-054 | Player sees each lock activate and gate open. |
| LT-047 | S2 | 2 | P1 | 3 | LT-045 | Reset, re-entry and shortcut cases documented. |
| LT-053 | S2 | 3 | P1 | 4 | LT-050, LT-052 | Main gate and shortcut placed with correct entrances. |
| LT-056 | S2 | 3 | P1 | 4 | LT-047, LT-053 | Demo route, capture checklist and fallback local recording prepared from current grayboxes; actual R4/R5 functionality is demonstrated/tested under LT-057. |
| LT-059 | S2 | 5 | P0 | 6 | LT-048, LT-049 | Pickup changes underwater traversal as designed. |
| LT-061 | S2 | 8 | P0 | 6 | LT-050, LT-051, LT-053 | Both locks persist; R2↔R4 shortcut remains open. |
| LT-064 | S2 | 3 | P0 | 4 | LT-052, LT-045 | Archive geometry and pickup pedestal exist with placeholder pickup scene; final scripted pickup hookup is verified after LT-062. |
| LT-060 | S2 | 2 | P1 | 3 | LT-059 | Underwater entrance route works in test scene. |
| LT-062 | S2 | 3 | P0 | 5 | LT-039, LT-059 | Ability and all 3 checkpoints function in session. |
| LT-063 | S2 | 5 | P0 | 6 | LT-061, LT-052 | Puzzle is solvable and shortcut is safe. |
| LT-065 | S2 | 3 | P1 | 5 | LT-064 | Pickup readability and archive landmark established. |
| LT-057 | S2 | 3 | P1 | 4 | LT-061, LT-062, LT-063, LT-064 | R1–R5, R4 permanent shortcut, and Diving Bell pickup verified by Dec 31. Record at least three sessions or give reason for smaller sample. |
| LT-066 | S2 | 3 | P1 | 4 | LT-055, LT-062 | Important changes have discernible sound feedback. |
| LT-058 | S2 | 1 | P2 | 2 | LT-057 | Actual effort, deviations and next sprint recorded. |
| LT-069 | S3 | 8 | P0 | 6 | LT-026, LT-039 | Player can attack, take damage and respawn. |
| LT-071 | S3 | 5 | P0 | 5 | LT-060, LT-062, LT-040 | Both directions work; R2 re-entry preserves safe High Tide. |
| LT-072 | S3 | 5 | P0 | 5 | LT-061, LT-059 | Three switches unlock ending trigger in graybox. |
| LT-073 | S3 | 3 | P0 | 5 | LT-060, LT-071 | Navigable underwater route connects R2 to R7. |
| LT-076 | S3 | 3 | P1 | 4 | LT-069 | Health is legible and enemy appearance is differentiated. |
| LT-070 | S3 | 3 | P0 | 4 | LT-060, LT-071 | Entry and return avoid sealing player in geometry. |
| LT-074 | S3 | 5 | P0 | 6 | LT-072, LT-073 | Player can reach ending trigger using test geometry. |
| LT-075 | S3 | 3 | P1 | 5 | LT-073 | Underwater route and hazards have clear silhouettes. |
| LT-067 | S3 | 3 | P0 | 5 | LT-058, LT-070, LT-074 | Run complete R1–R7 route on Jan 8 with placeholder art, R7 ending trigger, no debug teleporting; register any blockers. |
| LT-068 | S3 | 2 | P1 | 3 | LT-067 | Jan 9 acceptance checks pass for full graybox world; must produce a demonstrated game state, not simply a screenshot. |
| LT-078 | S3 | 3 | P1 | 4 | LT-068 | Report contains screenshots and feature evidence. |
| LT-080 | S3 | 8 | P0 | 5 | LT-069 | One enemy detects, moves, attacks and can be defeated. |
| LT-082 | S3 | 3 | P0 | 4 | LT-072, LT-074 | Correct states trigger lighthouse completion once. |
| LT-086 | S3 | 8 | P1 | 7 | LT-075, LT-076 | Every room playable with consistent readable visuals. |
| LT-084 | S3 | 3 | P0 | 5 | LT-074, LT-082 | Full map works without debug tools. |
| LT-087 | S3 | 3 | P1 | 4 | LT-082, LT-086 | Ambient, interaction and ending feedback functional. |
| LT-077 | S3 | 3 | P0 | 5 | LT-068, LT-084 | Run the complete playable loop after LT-084 integrates R7; include at least five first-time test attempts or document constraints. |
| LT-085 | S3 | 5 | P0 | 5 | LT-084 | All required transitions and recoveries pass. |
| LT-081 | S3 | 3 | P0 | 5 | LT-077, LT-070 | Major movement and water regressions resolved. |
| LT-083 | S3 | 3 | P0 | 5 | LT-077, LT-071 | No permanent softlock via transitions or gates. |
| LT-079 | S3 | 1 | P1 | 1 | LT-077, LT-080, LT-081, LT-083, LT-085, LT-087 | Feature freeze on Jan 15 requires LT-081/083 fixes, LT-085 safety check and LT-087 audio/ending cues; unapproved scope additions stop. |
| LT-091 | Release | 3 | P0 | 4 | LT-081, LT-080 | Re-test PC export on Jan 18 against current full build; backup and verify startup. Preliminary export already tested in LT-029. |
| LT-093 | Release | 3 | P0 | 5 | LT-083, LT-082 | All progression states pass repeatable test cases. |
| LT-097 | Release | 2 | P1 | 4 | LT-087 | Sound, visual prompts, ending and health UI consistent. |
| LT-092 | Release | 3 | P0 | 5 | LT-091 | No severity-1/2 gameplay blocking bugs remain. |
| LT-094 | Release | 3 | P0 | 4 | LT-093 | Fixed regressions included in release candidate. |
| LT-098 | Release | 2 | P0 | 4 | LT-097 | Player-facing instructions and credits available. |
| LT-095 | Release | 3 | P0 | 5 | LT-085, LT-094 | Full playthrough succeeds without softlocks. |
| LT-096 | Release | 3 | P0 | 4 | LT-095 | No route blocker remains in approved levels. |
| LT-099 | Release | 2 | P0 | 2 | LT-092, LT-094, LT-096, LT-097 | Build and smoke-test final candidate on Jan 22 after all release fixes; include checksum/version and reproducible export instructions. |
| LT-088 | Release | 3 | P0 | 5 | LT-078, LT-079 | Report matches delivered build and actual scope. |
| LT-089 | Release | 3 | P0 | 4 | LT-088 | Demo works offline and team rehearsal completed. |
| LT-090 | Release | 1 | P0 | 2 | LT-088, LT-089, LT-095, LT-096, LT-098, LT-099 | Final acceptance and upload verification by Jan 23; Jan 24 is only deadline contingency, no planned work. |

### Sprint 0 task descriptions (reference for website Notes)

Sprint 0 consists of the Start and Design phases, LT-001 through LT-022. Use these descriptions when entering Notes on the course website. Their acceptance conditions are in the register above.

| Task | Description |
|---|---|
| LT-001 | Agree on responsibilities, 12 h/week commitments, and the weekly review routine. |
| LT-002 | Specify the seven-room MVP, must-have mechanics, and explicit exclusions. |
| LT-003 | Produce the initial requirements, user stories, and proposal for PM review. |
| LT-004 | Initialize Godot 4 and the shared Git repository with reproducible setup. |
| LT-005 | Use a tiny test level to confirm that the player can move and jump. |
| LT-006 | Agree on branching, pull requests, scene ownership, and merge rules. |
| LT-007 | Define shared tide, ability, gate, and interaction states and interfaces. |
| LT-008 | Map seven rooms, entrance/exit connections, ability gate, and shortcut. |
| LT-009 | Sketch R2/R3 geometry, tide positions, traversable routes, and objects. |
| LT-010 | Identify useful assets, check licenses, and evaluate suitability for Godot. |
| LT-011 | Sketch interaction prompts, tide-state feedback, and the initial health HUD. |
| LT-012 | Consolidate overview, scope, core loop, mechanics, puzzles, and progression in GDD v0.1. |
| LT-013 | Specify puzzle solutions and tests for transitions, persistence, and softlocks. |
| LT-014 | Review the GDD, grayboxes, technical prototype, and next-sprint blockers. |
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
| Sprint 0 (Nov 23–Dec 4) | Approved scope, architecture, and tide feasibility | 22 | 63 |
| Sprint 1 (Dec 7–18) | Playable R1–R3 and Rising Platform | 22 | 73 |
| Sprint 2 (Dec 21–Jan 1) | R4/R5, Floodgate shortcut, Diving Bell | 22 | 79 |
| Sprint 3 (Jan 4–15) | R6/R7, combat, integrated ending | 21 | 83 |
| Release (Jan 18–23) | Tested PC build, docs and submission | 12 | 31 |
| **Total** | | **99** | **329** |

For Sprint 0, the scheduled estimates are 40 person-hours in Week 1 and 50 in Week 2, against 60 hours available per week. These estimates must be confirmed by the team and checked against the website calendar and working-day resource model.

**Definition of Done:** A task is done only when its acceptance condition is met, the work has been reviewed or tested, and evidence is available in the repository or course website. Milestones require demonstrated deliverables, not just completed checklists.

Before saving a project baseline, verify task ownership, date alignment, holidays, Story Points, dependencies and individual weekly loads in GIC ITC.
