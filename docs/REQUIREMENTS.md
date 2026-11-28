# LowTide Requirements

**Task:** LT-003 · **Owner:** SRENG SOPHEAKANHA · **Revision:** v0.1, 2026-11-28
**Status:** Draft for PM review. Nothing here is approved or claimed as implemented.
**Sources:** [MVP scope](MVP_SCOPE.md) (M01–M12), [plan v0.11](../plan.md) (LT tasks)
**Companions:** [User stories](USER_STORIES.md) · [Project proposal](PROJECT_PROPOSAL.md)

## 1. Conventions

- **Priority:** *Must* = required under every room-count option. *Must (option)* = required, but its content depends on the approved room count. *Conditional* = only after capacity and core progression are protected.
- Room-specific text describes the seven-room forecast. The five- and three-room alternatives are in [scope alternatives](scope-alternatives.md).
- **† New** marks a detail or target proposed in this draft that is not in the MVP scope or plan. The PM must accept, change or remove it.

## 2. Users and stakeholders

| Who | Interest |
|---|---|
| Player (PC, single-player), including first-time players | Understand the rules, solve puzzles, reach the ending without getting stuck |
| Development team (5) | Clear contracts, testable acceptance criteria, feasible workload |
| Project manager | Scope control, reviewable evidence, on-time submission |
| Instructor | Course deliverables, scope and deadline approval |

## 3. Functional requirements

### 3.1 Movement and traversal

| ID | Requirement | Priority | Scope | Tasks | Verify by |
|---|---|---|---|---|---|
| FR-01 | The player can move horizontally and jump, and collides reliably with terrain. | Must | M02 | LT-005, 015, 026 | Repeatable movement in a graybox |
| FR-02 | The player can move underwater in deep-water areas. | Must | M07 | LT-048, 059 | Test chamber, then R6 route |
| FR-03 | Deep water cannot be entered without the Diving Bell. | Must | M07 | LT-049, 070 | Attempt entry with and without the ability |

### 3.2 Tide system

| ID | Requirement | Priority | Scope | Tasks | Verify by |
|---|---|---|---|---|---|
| FR-04 | The player can switch between two discrete states, Low Tide and High Tide, at a Tide Anchor. | Must | M03 | LT-016, 027, 028 | Switch repeatedly in both directions |
| FR-05 | Tide-dependent objects (such as the floating platform) change position or collision to match the tide state, and carry the player safely. | Must | M03 | LT-027, 037 | R3 platform test in both states |
| FR-06 | A tide change never traps the player or places them inside geometry. | Must | M04 | LT-038, 070, 085 | Switch at edge positions; softlock checklist |

### 3.3 Interaction and puzzles

| ID | Requirement | Priority | Scope | Tasks | Verify by |
|---|---|---|---|---|---|
| FR-07 | The player can activate interactable objects in reach (Tide Anchor, lever, switch). | Must | M05 | LT-028 | Activate each object type |
| FR-08 | A gate can depend on one or more independent flags and opens only when all are met. | Must | M05 | LT-050 | Test every flag combination |
| FR-09 | R3: the release lever and tide-controlled platform let the player reach the exit. | Must | M05 | LT-041, 042 | Solve without debug tools |
| FR-10 | R4: one switch is reachable at Low Tide and one at High Tide; both open the gate and a permanent R2↔R4 shortcut. | Must (option) | M05 | LT-052, 061, 063 | Solve, leave, return |
| FR-11 | R5: the player can collect the Diving Bell, which stays collected for the session. | Must (option) | M07 | LT-062, 064 | Collect, die, re-enter rooms |

### 3.4 World, state and recovery

| ID | Requirement | Priority | Scope | Tasks | Verify by |
|---|---|---|---|---|---|
| FR-12 | The approved rooms are connected (seven: R1↔R2↔R3, R2↔R4, R4/R5 per the world graph, R2↔R6↔R7) and completable without debug teleporting. Exact adjacency comes from LT-008. | Must (option) | M01 | LT-008, 029–031, 084 | Full route playthrough |
| FR-13 | Each door moves the player to a named, safe spawn point in the destination room. | Must | M06 | LT-018, 029, 040 | Use every door in both directions |
| FR-14 | Puzzle flags, opened gates, shortcuts and abilities persist across room transitions and respawns within a running session. | Must | M06 | LT-017, 040, 051 | Change state, leave, return, respawn |
| FR-15 | The player can return from R6 to R2 safely, with R2 restored in a safe High Tide state. | Must (option) | M06, M07 | LT-071 | Both directions, repeated |
| FR-16 | Activating a checkpoint makes it the respawn point (3 in seven-room, 2 in five-room, 1 in three-room). | Must (option) | M08 | LT-039, 062 | Activate each, then trigger respawn |
| FR-17 | Touching a hazard or leaving the room bounds respawns the player at the active checkpoint, without needing combat. | Must | M08 | LT-039, 042 | Trigger each failure type repeatedly |
| FR-18 | The player has a reset action, usable without debug controls, that uses the same respawn service. | Must | M08 | LT-039 | Reset from a stuck position |

### 3.5 Feedback, ending and delivery

| ID | Requirement | Priority | Scope | Tasks | Verify by |
|---|---|---|---|---|---|
| FR-19 | The game shows the current tide state and visibly marks interactables, gates, hazards and checkpoints. | Must | M10 | LT-032, 033, 044, 055 | Observation test |
| FR-20 | Important changes (tide switch, pickup, gate) give an audio cue. | Must † | M10 | LT-066, 087 | Trigger each event |
| FR-21 | R7: resolving the required switches or flags triggers the lighthouse ending exactly once. Simpler options use a single switch or completion trigger. | Must (option) | M11 | LT-072, 074, 082 | Complete, then retry the trigger |
| FR-22 | Player-facing controls and credits are provided. | Must | M12 | LT-098 | Document review |

† The MVP scope requires "necessary audiovisual cues" without listing them; PM to confirm audio is mandatory.

### 3.6 Conditional

| ID | Requirement | Scope | Tasks |
|---|---|---|---|
| FR-23 | The player can attack, take damage and respawn when health is depleted (through FR-17's service). | M09 | LT-069 |
| FR-24 | One simple enemy detects, moves, attacks and can be defeated. | M09 | LT-080 |
| FR-25 | A health display is shown, only if combat is approved. | M10 | LT-076, 097 |
| FR-26 | Extended style, art and audio polish. | M10 | LT-021, 022, 043, 054, 065, 086 |

## 4. Non-functional requirements

| ID | Category | Requirement | Priority | Tasks | Verify by |
|---|---|---|---|---|---|
| NFR-01 | Platform | Built with Godot 4 and exported for Windows; the team agrees one engine version. | Must | LT-004, 029, 099 | Version recorded; export opens |
| NFR-02 | Portability | The export launches on a second machine or a clean account. | Must | LT-029, 091, 099 | Smoke-test record |
| NFR-03 | Reliability | The approved route has no unrecoverable softlock, in both tide states, including return routes and recovery. | Must | LT-038, 085, 095 | Safety pass and final playthrough |
| NFR-04 | Reliability | No open severity-1 or severity-2 gameplay-blocking defect at release. | Must | LT-092 | Defect log |
| NFR-05 | Usability | First-time players can tell apart tide states, interactables, gates, hazards and checkpoints. † Target: at least 4 of 5 testers do so without help. | Must | LT-034, 077 | Playtest notes |
| NFR-06 | Accessibility † | Tide state and object state do not rely on colour alone (also use shape, position or icon). | Must † | LT-032, 033 | Greyscale screenshot check |
| NFR-07 | Performance † | Target 60 FPS, never sustained below 30 FPS, on a named team laptop. Provisional until measured at Dec 4. | Should † | LT-029, 091 | Godot profiler on that laptop |
| NFR-08 | Input † | The whole game is playable with a keyboard. Controller support is not promised. | Must † | LT-015, 098 | Full playthrough |
| NFR-09 | Maintainability | Shared flags and signals are named, documented and tested before dependent features use them. | Must | LT-007, 017 | Contract document and tests |
| NFR-10 | Process | Changes reach `dev` through independently reviewed pull requests; acceptance evidence is linked. | Must | LT-006 | PR history |
| NFR-11 | Legal | Every third-party asset has a recorded source and license before shipping. | Must | LT-010 | Asset register |
| NFR-12 | Documentation | Setup, build and export instructions are reproducible and match the delivered version. | Must | LT-004, 099, 088 | Second member follows them |

## 5. Out of scope

Boss fights; a second traversal ability; realistic water simulation; disk save/load or cross-session persistence; multiplayer or online play; non-PC releases. Additional rooms or enemy types, procedural levels, elaborate cutscenes, advanced AI, localization and complex settings are not promised. Main and pause menus are **undecided and unestimated**.

## 6. Assumptions, constraints and open questions

**Assumptions †:** testers can be recruited for the Dec 17 and Jan playtests; one Windows machine besides the developer's is available; placeholder art is acceptable if final art is deferred.

**Constraints:** five developers, 9 h/member/week conservative ceiling, target submission 2027-01-23, provisional deadline 2027-01-24.

| # | Open question | Who decides | Needed by |
|---|---|---|---|
| Q1 | Are five or three rooms acceptable? | Instructor | Dec 4 |
| Q2 | Exact deadline, and is weekend submission valid? | Instructor | Dec 4 |
| Q3 | Are main or pause menus required? | Instructor | Dec 4 |
| Q4 | Are the Jan 4 and Jan 11 review dates correct? | Instructor | Dec 4 |
| Q5 | Is the tide state global, or per room? | Systems and tide owners (LT-007) | Before LT-016 |
| Q6 | On respawn, which tide state and platform positions are restored? | Systems owner (LT-007, LT-018) | Before LT-039 |
| Q7 | Where are the checkpoints? | Level and systems owners | Before LT-062 |
| Q8 | The `prototype` branch has hook/slash, pogo, sprint and crate push/pull. Are any of these in scope? None is listed as required; attack mechanics fall under conditional combat. | PM and technical lead | Dec 4 |
