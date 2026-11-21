# LowTide

**A puzzle-first Metroidvania for PC, built with Godot 4.**

**Course:** IT Project Management (I5, 2026–2027 Semester 1)  
**Team:** YAG V3, Final Year Project Team  
**Repository:** [ShiroYaksha01/LowTide](https://github.com/ShiroYaksha01/LowTide)  
**Official project start:** 23 November 2026  
**Target submission:** 23 January 2027  
**Final deadline:** 24 January 2027  
**Planning baseline:** [plan.md](plan.md), v0.5 (proposed; pending team and instructor approval)

> **Status as of 21 November 2026:** Concept and planning preparation. Implementation officially begins on 23 November 2026. No development task is claimed as completed or verified by this README. Refer to current GitHub Issues, pull requests, and test evidence for progress after the project starts.

## Project overview

LowTide is a **Godot 4 PC puzzle-first Metroidvania** set across **seven interconnected rooms**. Players control **Low Tide** and **High Tide** to change routes and solve environmental puzzles, acquire a **Diving Bell** ability to access deep-water areas, and revisit earlier locations through meaningful return paths. The planned experience concludes with a lighthouse-ending puzzle.

The baseline also includes basic combat, three checkpoints, and a complete start-to-finish playable route. The primary goal is a coherent, testable puzzle game, not an expansive feature set.

### Planned core features

- Seven interconnected rooms, R1 through R7.
- Player-controlled Low/High Tide puzzles and responsive environmental objects.
- Movement, jumping, room transitions, and interaction with switches and gates.
- Diving Bell ability for underwater progression.
- Persistent puzzle flags, shortcuts, and safe return paths within a play session.
- Three checkpoints and session respawn.
- Basic combat with one simple enemy type.
- Lighthouse finale with an ending trigger.
- Playtesting, accessibility of visual cues, and a PC release build.

### Explicitly outside the baseline scope

Boss fights, a second ability, realistic water simulation, disk save/load, and multiplayer are **not** part of the planned minimum viable product (MVP).

## Team and responsibilities

| Member | Responsibility |
| --- | --- |
| TEK CHANSETHA | Project management, game design, quality assurance, and documentation |
| SOK SANA | Player movement, tide system, water mechanics, and combat |
| SRENG SOPHEAKANHA | Interactions, gates, progression, and room transitions |
| TAK TOEK | Room layouts, grayboxing, puzzles, and collision |
| TANG NAKRY | Visuals, user interface, audio, and user guide |

Planned capacity is **12 hours per member per week**. Assignments and estimates are provisional until confirmed by the team and instructor.

## Schedule and milestones

| Period | Dates | Planned outcome | Tasks | Story Points |
| --- | --- | --- | ---: | ---: |
| Sprint 0 (Start and Design) | 23 Nov–4 Dec 2026 | Approved scope, architecture, tide feasibility | 22 | 63 |
| Sprint 1 | 7–18 Dec 2026 | Playable R1–R3 and Rising Platform puzzle | 22 | 73 |
| Sprint 2 | 21 Dec 2026–1 Jan 2027 | R4/R5, Floodgate shortcut, Diving Bell | 22 | 79 |
| Sprint 3 | 4–15 Jan 2027 | R6/R7, combat, integrated ending | 21 | 83 |
| Release | 18–23 Jan 2027 | Tested PC build, documentation, submission | 12 | 31 |
| **Total** | | | **99** | **329** |

Story Points represent **relative complexity, not working hours**. The proposed baseline estimates **429 task-hours**. See [plan.md](plan.md) for detailed effort estimates, dependencies, acceptance criteria, and weekly capacity assumptions.

### Key milestone dates

| Milestone | Date |
| --- | --- |
| Proposal reviewed/submitted for approval | 27 Nov 2026 |
| Design reviewed | 4 Dec 2026 |
| Core mechanics demonstration | 11 Dec 2026 |
| Sprint 1 review | 18 Dec 2026 |
| Midterm demo (build ready by 31 Dec 2026) | 1 Jan 2027 |
| Full graybox review (playthrough ready by 8 Jan) | 9 Jan 2027 |
| Sprint 3 review / feature freeze | 15 Jan 2027 |
| Release candidate | 22 Jan 2027 |
| Submission-ready sign-off | 23 Jan 2027 |
| Final submission deadline | 24 Jan 2027 |

## Project documentation and progress sources

| Source | Purpose | How to use it |
| --- | --- | --- |
| [plan.md](plan.md) | Planned scope, 99 task IDs, owners, dates, risks, estimates, dependencies, acceptance conditions | Start here for expected deliverables |
| [GitHub Issues](https://github.com/ShiroYaksha01/LowTide/issues) | Task execution and blockers, when the team adopts issue tracking | Find issues with matching `LT-###` task IDs |
| [Pull Requests](https://github.com/ShiroYaksha01/LowTide/pulls) | Implementation changes, discussion, and review evidence | Link each change to its task ID |
| [Commit history](https://github.com/ShiroYaksha01/LowTide/commits) | Authored code and documentation changes | Inspect commits together with PRs, tests, and acceptance criteria |
| GitHub project board (if created) | Work-in-progress workflow and sprint view | Use as a status overview, not sole proof of completion |
| GIC ITC course website | **Course progress-check source of truth** | Keep its imported plan aligned with this repository plan |

**Important:** The course website and `plan.md` must stay aligned after importing. The proposed plan's one-line checklist task format is intended to be compatible with the course importer. Avoid changing it solely for GitHub presentation. The estimate/acceptance register in `plan.md` may require separate entry in the course website.

## How progress is tracked

Each planned task has a stable ID from **`LT-001` to `LT-099`**. Reuse that ID consistently in the plan, GitHub Issue title, branch name, pull request, commit message, and evidence.

Suggested issue workflow:

1. **Backlog:** Planned but not ready to start.
2. **To do:** Ready and assigned.
3. **In progress:** Work is underway.
4. **In review:** Implementation is submitted and awaiting validation.
5. **Done:** The acceptance condition is met, the work has been reviewed or tested, and supporting evidence is available.

For each Issue, record the task ID, owner, sprint, priority, planned date, Story Points, dependencies, acceptance criteria, and links to implementation or test evidence. **Closing an issue or checking a box is a status assertion, not independent proof.**

### Example task traceability

- **Plan:** `LT-005`, minimal movement feasibility scene.
- **Issue title:** `LT-005: Try minimal movement feasibility scene`.
- **Branch:** `feature/LT-005-player-movement`.
- **Commit:** `feat(LT-005): add basic movement test scene`.
- **Pull request:** Include `LT-005`, link the issue, and explain testing.
- **Evidence:** A test scene that demonstrates movement and jumping, with an accessible test result or recording.
- **Complete when:** Its acceptance criterion in [plan.md](plan.md) is satisfied and reviewed.

These are **examples of a workflow**, not claims that `LT-005` has been completed.

### Definition of Done

A task counts as **verified complete** only when:

- Its documented acceptance condition has been met.
- The relevant implementation or document can be identified.
- Review or testing has occurred.
- Evidence is linked or available in the repository or course website.

Milestones require demonstrated deliverables. A checklist alone is insufficient.

## Developer setup

The planned target is a **PC game using Godot 4**.

1. Install a compatible version of [Godot 4](https://docs.godotengine.org/en/stable/).
2. Clone the repository:

   ```bash
   git clone https://github.com/ShiroYaksha01/LowTide.git
   cd LowTide
   ```

3. **Once the base project has been created under task `LT-004`**, open Godot, select **Import**, and choose the repository's `project.godot` file.
4. Open the main scene and run the project when it becomes available.

Until `LT-004` is implemented, `project.godot` and a runnable game should **not** be assumed to exist. Export/build instructions and a tested PC release will be documented as those tasks are completed.

## Contribution workflow

Use separate branches for task-specific work. Suggested names:

```text
feature/LT-027-tide-controller
fix/LT-038-tide-softlock
docs/LT-012-game-design
```

Suggested commit style:

```text
feat(LT-027): implement tide state switching
fix(LT-038): guard against unsafe tide transitions
docs(LT-012): draft game design document
```

Before merging, open a pull request that includes the task ID, what changed, how it was tested, and evidence that the acceptance criteria are satisfied. Ask another team member to review it where possible. Agree on formal branching and code-review rules under **`LT-006`**.

Do not use commit counts or lines of code as a substitute for measuring quality or individual effort. Credit contributors for implementation, reviews, testing, design, and documentation supported by evidence.

## Weekly reporting

The team should review progress at least once per week and keep task records and the course website aligned.

A weekly review should answer:

- Which task IDs were verified complete this week, and what evidence supports them?
- Which tasks remain in progress, blocked, or overdue?
- Which acceptance criteria or dependencies prevent completion?
- What was demonstrated or tested?
- What changed in scope, schedule, ownership, or risk?
- What is planned for the next week?

If written weekly reports are required, the team may add them under `docs/progress/` using filenames such as `week-01.md`. That directory and those reports are **optional future additions**, not assumed to exist today.

## Instructions for the instructor's AI reviewer

**Purpose:** Produce an evidence-based summary of LowTide's development progress without mistaking plans or activity for delivered functionality.

### Review procedure

1. Read **this README** for context and [plan.md](plan.md) for the official repository baseline and task acceptance register.
2. Read matching GitHub Issues and project-board statuses if accessible. Use exact task IDs `LT-001` through `LT-099` to join records.
3. Inspect linked pull requests, changed files, review discussions, test outputs, demonstrations, and commits when accessible.
4. For each task, distinguish **planned**, **reported in progress**, **reported done**, **verified done**, **blocked**, and **unknown**. Mark **verified done** only when acceptance criteria and evidence support it.
5. Compare task progress against planned dates, dependencies, sprint goals, and milestone criteria. When possible, compare repository reporting with the GIC ITC course website and identify inconsistencies.
6. Identify individual contributions without treating commit quantity as a quality score. Cite specific task IDs and supporting evidence.
7. **Do not invent task status, hours worked, missing source files, reviews, or test outcomes.** If evidence or website access is unavailable, say so and identify what could not be verified.

### Suggested progress calculation

```text
Verified completion (%) =
  (Story Points for verified-done tasks / 329 planned Story Points) × 100
```

Use the same approach within a sprint, with its sprint-specific Story Point total as the denominator. Calculate **reported completion** separately if team-reported statuses exceed verified work. These percentages reflect planned scope completion, not software quality or measured hours.

### Expected AI summary

Provide the following in a concise report:

1. **Assessment date and evidence coverage:** What repositories, issues, PRs, and tests were actually inspected?
2. **Overall progress:** Verified completed tasks and Story Points out of 99 tasks and 329 Story Points, including unknowns.
3. **Sprint status:** Current sprint, achieved goals, outstanding work, and planned-versus-verified progress.
4. **Milestones:** Upcoming, achieved, overdue, or at risk, with evidence.
5. **Member contributions:** Work attributable to each member, including PRs, reviews, tests, and documentation.
6. **Blockers and risks:** Unresolved dependencies, softlock risks, schedule pressure, and missing evidence.
7. **Next actions:** Specific high-priority tasks, their owners, and deadlines.

For all substantive findings, cite a task ID plus a link to the relevant Issue, Pull Request, commit, file, test, or report. **If only the README and plan are available, report planned work and state that implementation progress is unverified.**

## Risks and scope control

The baseline plan identifies major risks involving tide-system stability, progression softlocks, unclear puzzles, room/art integration, member availability, course-calendar capacity, and release readiness.

The planned response is to protect the seven-room puzzle MVP, test unsafe state transitions, prefer readable reusable assets, and avoid unapproved scope additions after the **15 January 2027 feature freeze**. See [plan.md](plan.md) for risk owners, triggers, and responses.

## Attribution and assets

Asset suitability and licenses are scheduled for review under **`LT-010`**. Any third-party assets should have their source and license recorded before use. This README does not declare a license for the repository or its original contents.

---

**Source of detailed project requirements:** [Project plan, v0.5](plan.md). Update this README when major scope, schedule, onboarding, or reporting conventions change, and keep the plan and course website synchronized.
