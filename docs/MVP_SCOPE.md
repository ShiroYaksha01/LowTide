# LowTide MVP Scope and Explicit Exclusions

**Task:** LT-002, Define MVP scope and explicit exclusions  
**Project:** LowTide  
**Course:** IT Project Management (I5, 2026–2027 Semester 1)  
**Team:** YAG V3, Final Year Project Team  
**Owner / prepared by:** TEK CHANSETHA, Project Manager  
**Document date:** 2026-11-21  
**Scheduled decision:** 2026-11-27  
**Status:** Draft, pending team and instructor review  
**Baseline reference:** [`../plan.md`](../plan.md), v0.5 (proposed)  
**Dependency:** LT-001 (charter, roles and capacity confirmation)

## 1. Scope decision

LowTide's **minimum viable product (MVP)** is a **single-player, PC, Godot 4, 2D puzzle-first Metroidvania** consisting of **seven interconnected rooms (R1–R7)**. The player changes between **Low Tide** and **High Tide** to solve environmental puzzles, gains a **Diving Bell** to access deep water, revisits previously explored rooms through persistent shortcuts, and completes a lighthouse-ending puzzle.

A successful MVP is a **fully playable beginning-to-ending build**, not an ambitious content demo. The core loop is: **explore → observe a blocked route → change tide / operate a mechanism → unlock traversal or acquire an ability → return through a safe route → advance**.

All included features below are **planned requirements**, not claims of implementation.

## 2. In-scope functionality (required for MVP)

| ID | Must-have feature | Observable outcome | Primary workstream | Relevant planned tasks (examples) |
| --- | --- | --- | --- | --- |
| M01 | PC game and seven-room world | A PC build opens; player can traverse connected R1–R7 without debug teleporting | Integration / level design | LT-004, LT-029, LT-031, LT-067, LT-084, LT-099 |
| M02 | Player movement | Horizontal movement, jumping, and dependable collision support traversing designed routes | SOK SANA | LT-005, LT-015, LT-026 |
| M03 | Two tide states | Player-operated Tide Anchors switch Low/High Tide and visibly change relevant puzzle objects | SOK SANA / SRENG SOPHEAKANHA | LT-016, LT-017, LT-027, LT-028 |
| M04 | Tide safety and puzzle solvability | Tide changes cannot permanently trap the player; each required puzzle has an obtainable solution and recovery path | SOK SANA / TAK TOEK | LT-013, LT-038, LT-042, LT-085 |
| M05 | Interactions and progression | Interactable levers, switches, gates and world-state flags support required puzzle dependencies | SRENG SOPHEAKANHA | LT-028, LT-050, LT-051, LT-061 |
| M06 | Room transitions and return paths | Door/spawn transitions work in both directions where intended; opened routes persist **during the current play session** | SRENG SOPHEAKANHA | LT-018, LT-029, LT-040, LT-051, LT-071 |
| M07 | Diving Bell and underwater movement | Player acquires Diving Bell; ability enables specified deep-water access and safe return | SOK SANA / SRENG SOPHEAKANHA | LT-048, LT-049, LT-059, LT-062, LT-071 |
| M08 | Three checkpoints and respawn | Three checkpoint locations function; defeat restores the player to the last active checkpoint **in the current session** | SRENG SOPHEAKANHA / SOK SANA | LT-039, LT-062, LT-069 |
| M09 | Basic combat and one enemy | Player can attack, take damage, and defeat one simple enemy type | SOK SANA | LT-069, LT-080 |
| M10 | Essential feedback | Legible tide state, interaction prompts, checkpoint/health indicators, and key audio/visual cues | TANG NAKRY | LT-033, LT-044, LT-055, LT-076, LT-087, LT-097 |
| M11 | Lighthouse ending | R7's required switches / states unlock and trigger a single clear ending | SRENG SOPHEAKANHA / TAK TOEK | LT-072, LT-074, LT-082, LT-084 |
| M12 | Testable PC delivery | Required playthrough passes without blocking defects; export launches and player controls / credits are documented | All workstreams | LT-085, LT-091, LT-095, LT-098, LT-099 |

**Interpretation:** “Persistent” means keeping progression flags across room transitions and checkpoint respawns **within one running game session**. It does not mean disk save/load after quitting.

## 3. Seven-room scope (required content, subject to later GDD detailing)

| Room | Planned role | Minimum demonstrable outcome |
| --- | --- | --- |
| **R1: Tutorial** | Introduces movement, jumping and interaction | Player learns controls and reaches R2 |
| **R2: Hub** | Central navigation with an initially blocked R6 route | R1/R3 connections work; later shortcut and deep-water route become usable |
| **R3: Rising Platform** | Introduces meaningful tide-controlled traversal | Lever / platform puzzle can be solved safely and exited |
| **R4: Floodgate** | Low/High switch puzzle and shortcut | Both state-dependent switches can be activated; permanent-in-session R2 shortcut remains usable |
| **R5: Archive** | Diving Bell pickup location | Player can reach and collect the single required traversal ability |
| **R6: Drowned Conduit** | Deep-water traversal and return | Diving Bell gates entry; route is navigable and return to R2 is safe |
| **R7: Lighthouse Engine** | Final puzzle and ending | Three required switches / flags resolve and trigger the ending once |

Room geometry, visuals and exact solutions belong to the GDD and puzzle specifications (LT-008, LT-009, LT-012, LT-013, LT-045). This document fixes **scope**, not exact implementation details.

## 4. Explicitly out of scope

The following features are **not committed to the MVP**. Do not schedule or implement them without an approved scope change.

| Exclusion | Boundary / reason |
| --- | --- |
| Boss fight | One simple enemy type is enough to demonstrate basic combat; no boss encounter or boss AI |
| Second traversal ability | **Diving Bell is the only collectible traversal ability** required for progression |
| Realistic water simulation | Use discrete Low/High Tide states and prescribed object behaviors, not fluid physics, dynamic flooding simulation, or physically accurate buoyancy |
| Disk save / load | No save slots, serialized progression to disk, or cross-session persistence; only active-session flags and checkpoints |
| Multiplayer / online play | Local single-player only; no networking, matchmaking, accounts, or cloud services |

**Also not guaranteed in this MVP:** Additional rooms beyond R1–R7, multiple enemy varieties, procedural levels, cutscene-heavy storytelling, advanced AI, localization, complex settings menus, or platform releases beyond the tested PC build. These are possible future enhancements, **not baseline promises**.

## 5. Nonfunctional boundaries and quality bar

- **Platform:** Godot 4 PC export; test on a second machine or clean user account before release. Do not promise mobile, web, or console builds.
- **Performance:** Target responsive 2D play on the team's test PCs. Record observed performance and bugs; no unvalidated frame-rate or hardware minimum is promised at scope approval.
- **Readability:** A first-time player can distinguish tide state, interactables, gates, hazards, and health / checkpoints without relying on developer explanations.
- **Reliability:** No unrecoverable softlock, broken required transition, or mandatory use of debug tools in the release acceptance route.
- **Asset compliance:** Record third-party asset sources and licenses before shipping (LT-010).
- **Documentation:** Provide simple controls, credits, setup instructions, game build evidence, and an accurate delivery report.

## 6. Completion and milestone boundaries

| Checkpoint | Date | Scope evidence needed |
| --- | --- | --- |
| Proposal reviewed | **2026-11-27** | This scope and exclusions reviewed; decisions and requested changes documented |
| Design review | **2026-12-04** | GDD / world graph / puzzle expectations align with this scope |
| Core mechanics demonstration | **2026-12-11** | Tide control and movement feasibility can be demonstrated; not a claim of seven-room completion |
| Sprint 1 review | **2026-12-18** | Playable R1–R3 and Rising Platform demonstrated |
| Midterm demo | **2027-01-01** | R1–R5, R4 shortcut and Diving Bell pickup demonstrated from a build prepared by Dec 31 |
| Full graybox review | **2027-01-09** | R1–R7 can be traversed in graybox; ending reachable without debug teleporting |
| Feature freeze | **2027-01-15** | New features stop; critical movement, progression and softlock fixes receive priority |
| Release candidate | **2027-01-22** | PC build rebuilt and smoke-tested after fixes |
| Sign-off / submission | **2027-01-23 / 2027-01-24 deadline** | Complete acceptance route, controls / credits, and final evidence; no unfixed release-blocking defects |

Milestone evidence must include a runnable scene/build, test record, or demonstration link. A checked box alone does not verify delivery.

## 7. Change-control rule

1. Propose a change in a GitHub Issue or review note: **requested feature, reason, owner, affected task IDs, estimated extra hours / Story Points, and schedule impact**.
2. Classify it as **required defect fix**, **MVP clarification**, or **new scope**. Fixes needed for existing acceptance criteria are not new features.
3. Have the project manager compare the change against the 12 hours/member/week capacity, sprint commitments, risks, and the January 15 feature freeze.
4. Obtain team agreement and instructor approval where the course baseline requires it. Record the decision and link to evidence.
5. Only after approval, revise `plan.md`, applicable GitHub Issues, the GDD, and the GIC ITC course website **consistently**.

**Priority when behind schedule:** Preserve the full R1–R7 completion path, safe tide changes, ability-gated progression, essential feedback, and verified PC export. Reduce nonessential polish before cutting baseline functionality. Any reduction to an M01–M12 requirement requires an explicit scope decision; do not silently declare an incomplete requirement optional.

## 8. LT-002 review and approval record

| Reviewer | Role | Decision | Date / evidence |
| --- | --- | --- | --- |
| TEK CHANSETHA | Project manager / scope owner | Pending | |
| SOK SANA | Mechanics developer | Pending | |
| SRENG SOPHEAKANHA | Progression developer | Pending | |
| TAK TOEK | Level designer | Pending | |
| TANG NAKRY | Visual/UI/audio developer | Pending | |
| Instructor / proposal reviewer (if applicable) | Course baseline approval | Pending | |

Record changes requested at the November 27 proposal review. **This draft does not imply approval.**

## 9. LT-002 acceptance checklist

- [ ] Seven-room MVP and required features (M01–M12) are unambiguously defined.
- [ ] Boss, second ability, realistic water simulation, disk save/load, and multiplayer are explicitly excluded.
- [ ] The distinction between session state persistence and disk save/load is agreed.
- [ ] Room boundaries, deliverables, and final acceptance expectations are reviewed against `plan.md`.
- [ ] Team discusses scope feasibility; PM records decision and any disagreements / modifications.
- [ ] Finalized scope is linked from a GitHub Issue / PR or meeting record and reflected in the GIC ITC course plan if needed.

**Completion rule:** Mark LT-002 **Done** only when scope and explicit exclusions are documented and the proposed baseline has been reviewed / accepted. Do not mark the game features themselves complete when this document is approved.

## 10. Revision history

| Date | Revision | Summary |
| --- | --- | --- |
| 2026-11-21 | Draft v0.1 | Scope baseline and exclusions transcribed and clarified from proposed `plan.md` v0.5; pending review |
