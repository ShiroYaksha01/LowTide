# LowTide Project Charter

**Task:** LT-001, Confirm project charter, roles and weekly cadence  
**Project:** LowTide · YAG V3 · Final Year Project Team  
**Course:** IT Project Management (I5, 2026–2027 Semester 1)  
**Prepared by:** TEK CHANSETHA, Project Manager + Game Systems Developer  
**Revision:** v0.2, 2026-11-25 · aligned with [plan v0.11](../plan.md)  
**Status:** Proposed governance revision; previous LT-001 recorded complete on GitHub, revised agreements pending confirmation

## 1. Project purpose and objectives

Develop a complete, playable Godot 4 PC puzzle-first Metroidvania for the course. Demonstrate safe Low/High Tide switching, coherent movement and environmental puzzles, a Diving Bell ability that enables meaningful backtracking, checkpoint recovery, and a functional ending. Deliver the approved scope with independently reviewed implementation and test evidence. The project also demonstrates planning, individual accountability, collaboration and measured progress.

## 2. Scope and deliverables

The seven-room world is the product vision, not yet a confirmed commitment. Combat and extended decorative polish are conditional. Five- and three-room alternatives preserve the central progression loop; any scope change requires the applicable approval. Menus, external deadline and permitted room count require instructor confirmation. See [MVP scope](MVP_SCOPE.md) and [scope alternatives](scope-alternatives.md).

Expected deliverables are the approved playable Windows build, shared Godot source, scope/GDD and technical documentation, controls and asset credits, recorded acceptance tests and review evidence, final report, presentation/demo and course submission. The plan governs dates and ownership. No implementation or submission is claimed complete in this charter.

## 3. Team structure and responsibilities

All five members are developers and self-manage their assigned work. Additional leadership responsibilities do not remove development duties.

| Member | Role | Subsystem and additional responsibility |
|---|---|---|
| TEK CHANSETHA | Project Manager + Game Systems Developer | Interaction, switches/gates, puzzle logic and UI; scope, cross-team risks, instructor communication, milestone acceptance and stable promotion |
| TANG NAKRY | Technical Lead + Developer | Godot foundation, architecture, tide mechanics; technical planning, defect prioritization, demo preparation and independent level safety testing |
| SOK SANA | Gameplay Developer | Player movement, underwater traversal, gameplay; tide backup and tutorial/full-route tests |
| SRENG SOPHEAKANHA | Game Systems Developer | World state, persistence, checkpoints, transitions and system contracts; acceptance specification and integrated testing |
| TAK TOEK | Level Designer + Developer | Room geometry, construction, puzzle placement, navigation, collision and level fixes |

Tek targets 40–50% of actual project hours on implementation/integration across the project, with a typical allocation of four development hours in a nine-hour week. Planning and reporting preparation can be delegated; PM accountability cannot. Nakry facilitates technical decisions without taking over all development. Sana demonstrates independent tide prototype understanding and a small fix by Dec 4.

## 4. Decision rights and working agreement

| Decision | Authority |
|---|---|
| Internal implementation, task organization and estimates | Assigned owner |
| Shared state/signal/scene interfaces | Affected owners, with Nakry facilitating |
| Sprint task selection and capacity | Team collectively; individual availability confirmed |
| Independent code approval | Reviewer other than change author, including PM/lead code |
| Task PR merge to dev | Authorized developers after review and checks |
| Weekly stable dev to main merge | Tek only, after independent integration verification |
| Milestone acceptance and external communication | Tek with team evidence |
| Scope/deadline change | Tek with team and instructor approval where required |
| Final submission | Tek |

Every owner plans their work, records progress and actual hours, tests, documents, reports blockers and demonstrates evidence. See [team working agreement](team-working-agreement.md). Routine decisions within agreed interfaces do not need PM permission. Shared interface changes require consultation before implementation.

## 5. Capacity and planning approach

Nominal availability is 12 h/member/week, not guaranteed. Use 9 h/member/week including coordination as conservative planning ceiling, subject to actual availability. The plan includes 99 task IDs, 329 provisional SP, 454 engineering hours (406 candidate core), and 22.5 routine coordination hours. Nine-week conservative capacity is 405 hours including coordination; the engineering stress budget is 318.75 h. No full forecast is feasible as a commitment yet. Only reduced Sprint 0 and delivery gates are candidates for approval after availability, instructor discussion and import preview. December 4 uses measured prototypes and actual hours to replan.

Confirm W48 exceptions for Nakry, Sopheakanha and Toek (9.5 h each), and W49 for Sopheakanha (9.5 h), or revise assignments. Book both sides of pairing, review, testing and weekly promotion effort. Weekend availability is not assumed; extra work is not treated as free. See [individual logs](actual-hours/README.md) and [Sprint 0 acceptance](sprint-0-acceptance.md).

## 6. Weekly coordination and branch governance

| Day | Cadence |
|---|---|
| Monday | Team planning and task selection |
| Wednesday | Progress and blocker updates; urgent blockers communicated immediately |
| Friday | Owner demonstrations, progress review and integration candidate selection |
| Saturday/Sunday evening or night | Tek promotes verified dev to main; Saturday preferred, Sunday fallback, exact timing agreed in Cambodia local time |

Task branches start from `dev`; ordinary feature, fix, documentation and test changes use independent PR review into `dev`. `main` is the latest verified weekly snapshot, not a development branch. No routine direct commits to shared branches. Test the exact candidate commit and revalidate if it changes. If the candidate fails, keep `main` unchanged, record the blocker and route fixes through `dev`. During the documentation-only stage, validate documents and links; once a runnable game exists, verify launch, relevant functionality, regressions and export where required. Record promotion evidence and use a merge commit from `dev` to `main`. Earlier promotion for course or submission deadlines requires an agreed exception; do not miss the deadline to wait for the weekend.

LT-006 belongs to Sopheakanha, who documents detailed branch, scene ownership and review procedures, demonstrates the workflow, and records configured protections or agreed manual controls. The governance policy does not assert those settings have been applied. The team must agree how time for weekly integration and review is funded.

## 7. Milestones and success criteria

Official start: 2026-11-23. Proposal review Nov 27; design/re-estimation Dec 4; mechanics demo Dec 11; Sprint 1 review Dec 18; provisional midterm Jan 4 and graybox review Jan 11; feature freeze Jan 15; release candidate Jan 22; target submission Jan 23; provisional external deadline Jan 24. The plan is authoritative for detailed dates and evidence, subject to instructor confirmation. The final weekday buffer and weekend access remain risks.

Success means the approved scope is playable from start to ending without unrecoverable softlocks; required mechanics, checkpoints and safe returns work; Windows build verified; documentation and course submission match the delivered version; individual contributions and independent reviews can be traced to evidence. Closing a task or merging code is not by itself proof of acceptance.

## 8. Constraints, risks and change control

The main constraints are limited/uncertain availability, unfamiliar platformer and tide mechanics, shared integration dependencies and the course calendar. Protect the core progression loop, simplify or defer conditional work first, and discuss scope reduction before the Dec 4 gate. Record scope, cost, dependency, schedule and ownership changes in the plan, relevant issues, scope document and GIC ITC; obtain required approval. Escalate blockers promptly. Use the plan's risk register and gate rules rather than treating the charter as a separate task schedule.

## 9. Revised agreement record

The original charter was a request for team confirmation of roles, nominal 12 h weekly availability and Monday/Wednesday/Friday cadence. LT-001 is recorded complete on the repository's existing plan; the new governance, roles and capacity assumptions require reconfirmation. No signatures or approvals are inferred from the old status.

| Member / reviewer | Revised roles and cadence | W48/W49 confirmed hours / conflicts | Date / evidence |
|---|---|---|---|
| TEK CHANSETHA | Pending | | |
| TANG NAKRY | Pending | | |
| SOK SANA | Pending | | |
| SRENG SOPHEAKANHA | Pending | | |
| TAK TOEK | Pending | | |
| Instructor (scope/calendar) | Pending | Not applicable | |

Confirm revised roles, autonomy, independent reviews, weekly release window, actual availability, scope boundaries and escalation procedure. Record agreement or requested changes before approving Sprint 0. Do not mark an unverified milestone complete.

## 10. Revision history

| Date | Revision | Summary |
|---|---|---|
| 2026-11-21 (original planning period) | Initial confirmation message | Requested roles, 12 h nominal availability, Monday/Wednesday/Friday cadence and conflicts |
| 2026-11-25 | v0.2 proposed charter | Formalized purpose, scope, deliverables, self-managing governance, capacity, weekly branch promotion and approval record |
