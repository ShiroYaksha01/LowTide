# LowTide MVP Scope and Explicit Exclusions

**Task:** LT-002, Define MVP scope and explicit exclusions  
**Project:** LowTide · YAG V3 · IT Project Management (I5, 2026–2027 Semester 1)  
**Owner:** TEK CHANSETHA, Project Manager + Game Systems Developer  
**Revision:** v0.2, 2026-11-25 (aligned with proposed plan v0.11)  
**Scheduled review:** 2026-11-27; scope/re-estimation gate 2026-12-04  
**Status:** Revised proposal, pending team and instructor review; LT-002 remains open in the repository checklist  
**Planning reference:** [plan.md](../plan.md) · **Dependency:** LT-001

## 1. Scope decision

LowTide is a single-player PC 2D puzzle-first Metroidvania using Godot 4. The product vision consists of seven connected rooms (R1–R7), discrete Low/High Tide environmental puzzles, one Diving Bell traversal ability, meaningful backtracking and a lighthouse ending. A successful MVP is a fully playable beginning-to-ending build, not a content demonstration with incomplete progression.

The core loop is explore, observe a blocked route, change tide or operate a mechanism, unlock traversal or acquire an ability, return safely, and advance. The team proposes protecting this loop under all scope alternatives. The seven-room design is the current forecast, not an unconditional delivery commitment. No alternative is approved in this document. All features are planned requirements, not claims of implementation.

## 2. Proposed required functionality

The M01–M12 identifiers are preserved from the initial scope document. M09 is reclassified as conditional; M01, M08 and M11 depend on the approved room-count option.

| ID | Feature / classification | Observable outcome | Primary workstream | Relevant tasks (seven-room forecast) |
|---|---|---|---|---|
| M01 | Required: PC build and approved connected world | Complete route through the approved number of rooms without debug teleporting | Integration / Toek | LT-004, LT-029, LT-030, LT-031, LT-067, LT-084, LT-099 |
| M02 | Required: movement | Dependable horizontal movement, jumping and collision | Sana | LT-005, LT-015, LT-026 |
| M03 | Required: two tide states | Tide Anchors switch Low/High Tide and relevant objects visibly respond | Nakry / Tek / Sopheakanha | LT-016, LT-017, LT-027, LT-028 |
| M04 | Required: tide safety and solvability | No permanent trap; required puzzles have obtainable solutions and recovery routes | Sana / Toek; Nakry independently tests levels | LT-013, LT-038, LT-042, LT-085 |
| M05 | Required: interactions and progression | Levers, switches, gates and state flags implement required puzzle dependencies | Tek (logic) / Sopheakanha (state) | LT-028, LT-050, LT-051, LT-061 |
| M06 | Required: room transitions and return paths | Correct door/spawn behavior; opened routes persist for the current session | Sopheakanha / Toek | LT-018, LT-029, LT-040, LT-051, LT-071 |
| M07 | Required: Diving Bell | Ability pickup unlocks deep-water traversal and a safe return | Sana / Sopheakanha | LT-048, LT-049, LT-059, LT-062, LT-071 |
| M08 | Required: checkpoint recovery | Approved checkpoint count works; hazards and a player-accessible reset restore the last active checkpoint without debug controls or combat | Sopheakanha / Sana | LT-039, LT-042, LT-062; LT-069 conditional |
| M09 | Conditional: basic combat and one enemy | If approved, player can attack, take damage and defeat a simple enemy | Sana | LT-069, LT-080 |
| M10 | Required: essential feedback; health/polish conditional | Visible tide, interaction, gate and checkpoint states; readable hazards and necessary audiovisual cues | Tek / Nakry / Sana | LT-033, LT-044, LT-055, LT-066, LT-087, LT-097; LT-076 conditional |
| M11 | Required: ending | Approved final mechanism or completion trigger ends the game clearly and only once | Tek / Toek | LT-072, LT-074, LT-082, LT-084 |
| M12 | Required: tested PC delivery | Windows build launches; required route passes; controls, credits and test evidence provided | All workstreams | LT-085, LT-091, LT-095, LT-098, LT-099 |

**Persistence** means retaining relevant flags across room transitions and checkpoint recovery within a running game session. It does not mean saving progress to disk after quitting. Recovery must work without the conditional combat system.

## 3. Seven-room product vision

| Room | Role | Minimum outcome in the seven-room forecast |
|---|---|---|
| R1: Tutorial | Movement, jumping, interaction | Player learns controls and reaches R2 |
| R2: Hub | Central navigation; initially blocked R6 route | R1/R3 links work; later shortcut and underwater route become usable |
| R3: Rising Platform | Tide-controlled traversal | Lever/platform puzzle can be solved and exited safely |
| R4: Floodgate | Two-state switch puzzle and shortcut | Both required switches can be activated; R2 shortcut remains usable |
| R5: Archive | Diving Bell pickup | Player reaches and collects the ability |
| R6: Drowned Conduit | Deep-water traversal | Ability gates entry; route and return are safe |
| R7: Lighthouse Engine | Final puzzle | Required switches/flags resolve and trigger the ending once |

Geometry and exact solutions belong to the GDD and puzzle specifications (LT-008, LT-009, LT-012, LT-013, LT-045). This document sets scope boundaries, not implementation details.

## 4. Proposed alternatives and capacity

| Feature | Seven-room vision | Five-room alternative | Three-room alternative |
|---|---|---|---|
| Room count | 7 separate rooms | R5 merged into R4; R6 combined with R7 | Tutorial/hub, tide puzzle/ability pickup, underwater entrance/ending |
| Rising Platform | Required | Required | Required |
| Floodgate | Original | Simplified | Removed |
| Diving Bell / backtracking | Required | Required | Required |
| Checkpoints | 3 | 2 | 1 |
| Combat | Conditional only | Excluded | Excluded |
| Ending | Full puzzle | Single-switch puzzle | Completion trigger |
| Engineering estimate | 406 h | 376–397 h | 317–370 h |
| Balance vs 318.75 h stress budget | -87.25 h | -57.25 to -78.25 h | +1.75 to -51.25 h |

These are provisional scenarios from [scope-alternatives.md](scope-alternatives.md), not statistical ranges or approved schedules. Actual savings from room mergers must be measured/re-estimated. Even three rooms may exceed the budget. The full 99-task backlog is 454 engineering hours including conditional work and named secondary effort; the weekly promotion and remaining unestimated review/menu work need confirmation. Do not silently remove requirements to claim success.

## 5. Conditional and excluded features

Conditional work may begin only after capacity and core progression are protected: LT-021, LT-022, LT-043, LT-054, LT-065, LT-069, LT-076, LT-080, LT-086. Minimum functional cues remain required even if expanded style, sound specifications or decorative polish are deferred.

| Exclusion | Boundary |
|---|---|
| Boss fight | No boss encounter or boss AI |
| Second traversal ability | Diving Bell is the single required collectible traversal ability |
| Realistic water simulation | Discrete tide states and prescribed object behavior, not fluid physics |
| Disk save/load | No save slots, disk serialization or cross-session persistence |
| Multiplayer/online play | Local single-player only |

Additional rooms, enemy types, procedural levels, elaborate cutscenes, advanced AI, localization, complex settings and non-PC releases are not promised. Main/pause menu requirements are **unconfirmed and unestimated**, to be clarified at the November 27 review. Do not treat menus as excluded or completed until the requirement is decided.

## 6. Nonfunctional boundaries and quality bar

- Godot 4 Windows/PC export; verify launch on a second machine or clean account. No unvalidated hardware or frame-rate promises.
- First-time players can distinguish tide states, interactables, gates, hazards and checkpoints; health indicators are required only if combat is approved.
- No unrecoverable softlocks, broken mandatory transitions or mandatory debug tools in the approved route. Test both tide states, safe returns and hazard/reset recovery.
- Record third-party asset sources and licenses under LT-010.
- Provide controls, credits, setup/build instructions and accurate test and delivery evidence.

## 7. Completion and milestone boundaries

| Date | Forecast gate | Evidence |
|---|---|---|
| Nov 27 | Proposal review | Scope options, exclusions, instructor questions and decisions/blockers recorded |
| Dec 4 | Reduced design/feasibility gate | Movement, collision-safe tide prototype, Sana backup demonstration, measured hours and revised forecast |
| Dec 11 | Mechanics demo | Isolated movement, safe tide switching and interaction |
| Dec 18 | Sprint 1 review | R1–R3 route and Rising Platform without debug assistance |
| Dec 31 / Jan 4 | Midterm build / provisional demo | R1–R5, shortcut and Diving Bell in seven-room forecast |
| Jan 8 / Jan 11 | Graybox evidence / provisional review | Approved room count traversable with placeholders, recovery and both tide states; final integration follows LT-084 |
| Jan 15 | Feature freeze | Retained scope integrated; blockers prioritized, no new features |
| Jan 22 | Release candidate | Rebuilt Windows candidate, smoke test and acceptance evidence |
| Jan 23 / Jan 24 | Target sign-off / provisional deadline | Approved complete route, documentation, submission verification |

Later gates are forecasts to be updated after approval of room count. Evidence may be a reviewed PR, runnable scene/build, test record or demonstration link. A checked box alone does not verify delivery.

## 8. Change control

1. Open an issue or decision record with requested change, reason, affected M/LT IDs, owner, estimate, dependencies, tests and schedule impact.
2. Classify it as a required defect fix, scope clarification or new scope. A fix required by an existing acceptance criterion is not a new feature.
3. Owners estimate and assess alternatives using confirmed capacity (9 h/member/week conservative including coordination; 12 h nominal), including review and integration.
4. Tek coordinates team agreement and instructor approval where required. Record decisions and blockers; preserve the evidence of previous work.
5. Update this scope, plan, GDD, relevant issues, approved denominator and GIC ITC consistently. Preserve IDs for traceability; mark deferred tasks as deferred, not done.

If behind schedule, defer combat and decoration first, then seek approval to simplify puzzles or merge rooms while protecting tide switching, ability-gated return, safe recovery, essential feedback, an ending and tested Windows delivery.

## 9. LT-002 review and approval record

| Reviewer | Role | Decision | Date / evidence |
|---|---|---|---|
| TEK CHANSETHA | PM + game systems developer | Pending revised review | |
| TANG NAKRY | Technical Lead + developer | Pending | |
| SOK SANA | Gameplay developer | Pending | |
| SRENG SOPHEAKANHA | Systems developer | Pending | |
| TAK TOEK | Level designer + developer | Pending | |
| Instructor | Course scope approval | Pending | |

Questions for Nov 27: Are five/three rooms acceptable if evidence supports reduction? What are the exact deadline and weekend submission rules? Are main/pause menus required? Are the Jan 4/Jan 11 review dates correct? Record answers or blockers before Dec 4.

## 10. LT-002 acceptance checklist

- [ ] Seven-room vision, core, conditional features and exclusions documented.
- [ ] Session persistence and non-combat recovery boundaries reviewed.
- [ ] Alternative room counts, requirements and acceptance expectations reviewed with owners.
- [ ] Team review and instructor decision or unresolved approval blocker recorded; no unapproved scope treated as committed.
- [ ] Plan and course website aligned with the accepted decision when available; link supporting evidence.

Completion is documentation and review of scope, not implementation of the listed game features. Preserve the repository's open LT-002 status until its acceptance evidence is verified.

## 11. Revision history

| Date | Revision | Summary |
|---|---|---|
| 2026-11-21 | Draft v0.1 | Original seven-room scope and exclusions from proposed plan v0.5 |
| 2026-11-25 | Draft v0.2 | Align with v0.11 ownership, conditional combat/polish, hazard/reset recovery, alternatives and provisional gates; approval remains pending |
