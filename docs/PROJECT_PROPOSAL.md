# LowTide Project Proposal

**A puzzle-first 2D Metroidvania for PC, built with Godot 4**

**Course:** IT Project Management (I5, 2026–2027 Semester 1) · **Team:** YAG V3
**Task:** LT-003 · **Prepared by:** SRENG SOPHEAKANHA · **Reviewer:** TEK CHANSETHA (PM)
**Revision:** v0.1, 2026-11-28 · **Status:** Draft for PM review, not approved

## 1. Summary

LowTide is a single-player puzzle game in which the player changes the sea between Low Tide and High Tide to open routes, solves environmental puzzles, gains a Diving Bell to explore deep water, and returns through earlier rooms to light a lighthouse. The team proposes to deliver a tested Windows build and course documentation, targeting submission on 23 January 2027.

We ask the reviewer to accept the core loop and requirements, approve only the reduced Sprint 0 work (subject to confirmed availability), and raise the scope questions in section 10 with the instructor before 4 December. The full seven-room forecast does **not** yet fit the team's estimated capacity (section 8).

## 2. Motivation

A Metroidvania usually depends on a large map, many abilities and combat, which is too much for a nine-week student project. LowTide narrows the genre to one world-changing mechanic (the tide) and one traversal ability (the Diving Bell), so that backtracking and puzzle design carry the experience. It also gives the team a bounded project for practising planning, ownership, review and evidence-based progress.

## 3. Game concept

**Core loop:** explore → find a blocked route → change the tide or operate a mechanism → unlock a path or ability → return safely → advance.

| Room | Role |
|---|---|
| R1 Tutorial | Learn movement, jumping and interaction |
| R2 Hub | Central routes; the deep-water route starts blocked |
| R3 Rising Platform | Tide-controlled traversal puzzle |
| R4 Floodgate | Low and High Tide switches that open a shortcut |
| R5 Archive | Diving Bell pickup |
| R6 Drowned Conduit | Deep-water route |
| R7 Lighthouse Engine | Final puzzle and ending |

**Target audience (proposed):** PC players who enjoy short exploration and puzzle platformers, including first-time players of the genre.

## 4. Objectives and success criteria

| # | Objective | Success criterion | By |
|---|---|---|---|
| O1 | Prove the main technical risk | Movement and collision-safe tide prototype demonstrated | Dec 4 |
| O2 | Playable first section | R1–R3 completed without debug assistance | Dec 18 |
| O3 | Progression and ability | R1–R5, shortcut and Diving Bell verified | Dec 31 |
| O4 | Complete route | Approved rooms traversable with placeholders and safe recovery | Jan 8 |
| O5 | Quality release | Windows build runs on a second machine; no unrecoverable softlock | Jan 22 |
| O6 | Course delivery | Report, demo and build submitted and matching | Jan 23 |

Dates and room lists assume the seven-room forecast and are provisional.

## 5. Scope

**Required:** movement and jumping; two tide states; safe, solvable puzzles; interactions and gates; connected rooms with session persistence; Diving Bell; checkpoints and hazard/reset recovery; essential feedback; an ending; tested Windows delivery.

**Conditional:** combat with one enemy, health display, decorative art and extended audio.

**Excluded:** boss fights, second ability, fluid simulation, disk save/load, multiplayer.

**Undecided:** main and pause menus.

Details: [requirements](REQUIREMENTS.md), [user stories](USER_STORIES.md), [MVP scope](MVP_SCOPE.md).

**Deliverables:** Windows build; Godot source repository; game design and technical documents; controls and asset credits; test and review evidence; final report; presentation and demo.

## 6. Approach and team

Scrum-style delivery with one Sprint 0, three development sprints and a release week. Task branches start from `dev` and merge through independently reviewed pull requests; the PM promotes verified `dev` to `main` weekly. Monday planning, Wednesday blocker update, Friday demonstration. See the [project charter](PROJECT_CHARTER.md).

| Member | Responsibility |
|---|---|
| TEK CHANSETHA | Project manager; interactions, puzzle logic, UI |
| TANG NAKRY | Technical lead; Godot setup, tide mechanics, reviews |
| SOK SANA | Player movement, underwater traversal, gameplay |
| SRENG SOPHEAKANHA | World state, persistence, checkpoints, transitions |
| TAK TOEK | Level design, puzzle geometry, collision |

**Tools and cost:** Godot 4, Git and GitHub, GIC ITC for course tracking. No monetary budget is defined; any paid asset needs a team decision and a recorded license.

**Current state:** planning documents are on `dev`. An early movement and attack prototype exists on the separate `prototype` branch; it has not been reviewed against acceptance criteria and is not counted as completed work here.

## 7. Schedule

| Period | Dates | Forecast outcome |
|---|---|---|
| Sprint 0 | Nov 23–Dec 4 | Prototype, scope decision, measured effort |
| Sprint 1 | Dec 7–21 (review Dec 18) | R1–R3 and Rising Platform |
| Sprint 2 | Dec 21–Jan 4 | R4/R5, shortcut, Diving Bell; midterm |
| Sprint 3 | Jan 4–15 | R6/R7 and ending; feature freeze Jan 15 |
| Release | Jan 18–23 | Verified build, documentation, submission |

Provisional external deadline: 24 January 2027. The [plan](../plan.md) (v0.11, not baselined) holds the 99 tasks, owners, estimates and dependencies.

## 8. Effort and feasibility

Conservative capacity is 405 person-hours over nine weeks (5 members × 9 h), including 22.5 h of routine coordination. Allowing for a 20% engineering overrun leaves a budget of **318.75 engineering hours**.

| Option | Engineering estimate | Balance against budget | What changes |
|---|---:|---:|---|
| Seven rooms | 406 h | −87.25 h | Full core |
| Five rooms | 376–397 h | −57.25 to −78.25 h | Rooms merged, 2 checkpoints, simpler puzzles |
| Three rooms | 317–370 h | +1.75 to −51.25 h | No floodgate, 1 checkpoint, completion-trigger ending |

Figures come from the [README](../README.md) and [MVP scope](MVP_SCOPE.md). Lower ends assume savings that have not been measured. Weekly individual overloads also remain, notably in week 2026-W50.

**Recommendation:** keep seven rooms as the product vision, commit only to reduced Sprint 0, and decide the room count on 4 December from measured hours and the instructor's answer. If seven rooms cannot be approved, prefer designing early rooms so they remain valid in a smaller option. No option currently fits the budget with certainty.

## 9. Main risks

| Risk | Response | Owner |
|---|---|---|
| Tide system unstable | Prototype first; simplify to fixed safe positions if unsafe by Dec 11 | TANG NAKRY, SOK SANA |
| Softlocks from persistent gates or return routes | State contracts and transition tests; safe spawns | SRENG SOPHEAKANHA |
| Capacity shortfall | Defer conditional work, then seek approval to reduce scope | TEK CHANSETHA |
| Players do not understand puzzles | First-time playtests; improve cues, add no mechanics | TEK CHANSETHA |
| Room and art integration bottleneck | Pair on assembly, reuse assets | TAK TOEK |
| Late release or deadline mismatch | Early export test; confirm calendar; freeze Jan 15 | SOK SANA, TEK CHANSETHA |

The full register is in the [plan](../plan.md#risks).

## 10. Decisions needed

1. Instructor: are five or three rooms acceptable?
2. Instructor: what is the exact deadline, and is weekend submission valid?
3. Instructor: are main or pause menus required?
4. Instructor: are the Jan 4 and Jan 11 review dates correct?
5. Team: confirm Week 48–49 availability, including the 9.5 h exceptions.
6. PM: accept or change the new proposals marked † in the [requirements](REQUIREMENTS.md), and decide on the prototype's extra mechanics (Q8).

## 11. Review record

| Reviewer | Decision | Comments | Date |
|---|---|---|---|
| TEK CHANSETHA (PM) | Pending | | |
| Instructor (scope and calendar) | Pending | | |
