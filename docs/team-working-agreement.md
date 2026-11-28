# LowTide Team Working Agreement: Git Workflow, Scene Ownership and Code Review

**Task:** LT-006 · **Owner:** SRENG SOPHEAKANHA · **Revision:** v0.1, 2026-11-28
**Status:** Proposed, pending team review. Branch protection is **not** configured (see section 8).
**Related:** [README](../README.md) · [Charter](PROJECT_CHARTER.md) (decision rights) · [Plan](../plan.md)

Items marked **†** are new in this document and need team agreement.

## 1. Branches

```text
task branch ──reviewed PR──▶ dev ──weekend promotion by PM──▶ main
```

| Branch | Purpose | Who changes it |
|---|---|---|
| `main` | Verified weekly snapshot, instructor review and release | Tek only, through a `dev` → `main` PR |
| `dev` | Integration and testing | Reviewed task PRs only |
| `feature/LT-###-name` | Features | Task owner |
| `fix/LT-###-name` | Bug fixes | Task owner |
| `docs/LT-###-name` | Documentation | Task owner |
| `test/LT-###-name` | Test scenes and experiments | Task owner |

Rules:
- No direct commits or pushes to `main` or `dev`. No force push to either.
- Start every task branch from the latest `dev`.
- Names use lowercase words joined by hyphens after the task ID: `feature/LT-028-interaction-system`.
- One task per branch. Delete the branch after merge. †
- Branches created before this agreement keep their names; the rules apply to new branches. †

```powershell
git switch dev
```

```powershell
git pull --ff-only origin dev
```

```powershell
git switch -c feature/LT-028-interaction-system
```

## 2. Commits

- Format: `type(LT-###): summary`, with type `feat`, `fix`, `docs`, `test`, `refactor` † or `chore` †.
- Example: `feat(LT-028): add reusable interactable base`.
- Commit small, working steps. Stage only files that belong to the task.
- Never commit `.godot/`, export builds, passwords or tokens.
- Do commit Godot `.uid` and `.import` files together with their source files. †
- Keep LF line endings through `.gitattributes`.

## 3. Scene and file ownership †

The owner approves changes to their area and fixes its defects. Folder paths are proposed; the LT-004 owner confirms them when the base project reaches `dev`.

| Area | Proposed path | Owner | Backup |
|---|---|---|---|
| Project settings, input map, autoload list, physics layers | `project.godot` | TANG NAKRY | SOK SANA |
| Tide controller and tide objects | `scenes/tide/`, `scripts/tide/` | TANG NAKRY | SOK SANA |
| Player movement and gameplay | `scenes/player/`, `scripts/player/`, `sprite/player/` | SOK SANA | TANG NAKRY |
| World state, persistence, checkpoints, transitions | `scenes/state/`, `scripts/state/` | SRENG SOPHEAKANHA | TEK CHANSETHA |
| Interactables, gates, puzzle logic, UI | `scenes/interactables/`, `scenes/ui/` and matching `scripts/` | TEK CHANSETHA | SRENG SOPHEAKANHA |
| Rooms, geometry, collision | `scenes/rooms/` | TAK TOEK | TANG NAKRY |
| Personal test scenes | `scenes/tests/`, `scripts/tests/` | Author | None |
| Plan, charter, scope | `plan.md`, `docs/` governance files | TEK CHANSETHA | Task owner |
| Actual-hours logs | `docs/individual_tasks/` | Each member, own file only | None |

### Editing rules

1. **One person edits a `.tscn` or `.tres` file at a time.** Before editing a scene you do not own, ask the owner and note the claim in the task issue or PR. Release it when your PR merges.
2. Split large scenes into sub-scenes. A room instances the player, gates and anchors; it does not copy them.
3. Do not hand-resolve conflicting `.tscn` files line by line. Take the owner's version, then redo the smaller change in Godot.
4. Changes to shared state names, signals or scene interfaces need agreement from affected owners **before** implementation. TANG NAKRY facilitates.
5. Use the same Godot version, recorded under LT-004. Do not save project files with a different version.
6. The backup acts when the owner is unavailable and a task is blocked. Tell the owner afterwards.

## 4. Pull requests

1. Update your branch from `dev` and resolve conflicts in your branch:

```powershell
git fetch origin
```

```powershell
git merge origin/dev
```

2. Test your change.
3. Open the PR with **base `dev`**. GitHub preselects `main`, so change it every time.
4. Title: `type(LT-###): summary`. Fill in the [PR template](../.github/pull_request_template.md).
5. Request the reviewer. Keep PRs small, with one task each.
6. After approval, the author merges. Squash merge is the proposed method for task PRs. † Keep co-author credit in the squash message.
7. Update task status, actual hours and evidence links.

A PR opened against the wrong base is retargeted before review.

## 5. Code review

**Required:** at least one approval from a developer who did not write the change, submitted as a GitHub review. This applies to everyone, including the PM and technical lead. PM acceptance does not replace code review. Documentation PRs follow the same rule.

| Change | Reviewer |
|---|---|
| LT-007 state contract | SOK SANA and TANG NAKRY |
| LT-027 tide controller | SOK SANA and TANG NAKRY |
| LT-028 | TANG NAKRY |
| LT-033, 044, 055, 076 | SOK SANA |
| LT-050, 061, 072, 082 | SRENG SOPHEAKANHA |
| Anything else † | The backup for the area in section 3; otherwise any non-author |

Named reviews follow the plan. Other review time must be estimated before the sprint is approved.

**Reviewer checks:**
- Meets the task's acceptance condition, with evidence.
- Runs without new errors (for code and scenes, open it in Godot).
- Stays within the owned area, or the owner agreed.
- Shared signals and flags match the agreed contract.
- No softlock introduced, in both tide states where relevant.
- No unrelated files, secrets or unlicensed assets.

**Timing and conduct †:** respond within one working day of the request, or say when you can. Mark comments as *blocking* or *suggestion*. New commits after approval need another look. Escalate disagreements to the area owner, then the technical lead; scope questions go to the PM.

## 6. Weekly integration and promotion

| Day | Activity |
|---|---|
| Monday | Select work within confirmed capacity |
| Tuesday–Thursday | Implement, test, review; report blockers |
| Wednesday | Progress and blocker update |
| Friday | Demonstrations, integration review, candidate commit selected |
| Saturday evening/night | Preferred promotion window |
| Sunday evening/night | Fallback window |

Times are Cambodia local time; the team agrees the exact slot. Weekend availability is not assumed and must be booked.

Promotion steps:
1. Record the exact `dev` commit and freeze it. If `dev` changes, test again.
2. Check task reviews and acceptance evidence. For documentation only, check documents and links. For a runnable game, check launch, the playable route, regressions and export where required.
3. Open a PR from `dev` to `main` recording the commit, test results and known issues.
4. A developer other than Tek reviews the evidence.
5. Tek merges with a **merge commit** (no squash or rebase), and records the date. Tags such as `week-01` are optional.

If a check fails, `main` stays unchanged: record the blocker and fix it through a new PR to `dev`. An earlier promotion for a course or submission deadline needs an agreed, recorded exception.

## 7. When something goes wrong †

| Situation | Action |
|---|---|
| A merge breaks `dev` | Tell the team; the author reverts through a PR or fixes the same day |
| A defect reaches `main` | Fix through `dev`, then promote again; an urgent fix still needs review |
| A commit lands directly on `dev` or `main` | Tell the PM; do not rewrite shared history; review it after the fact |
| A secret is committed | Revoke it immediately, then remove it |

## 8. Repository settings and manual controls

Observed through GitHub on 2026-11-28:

| Item | Observed |
|---|---|
| Branch protection on `main` and `dev` | Not enabled |
| Rulesets | None listed |
| Default branch | `main` |
| Merge methods allowed | Merge commit, squash, rebase |
| Merged PRs #1–#4 | No GitHub review recorded |

Recommended settings, which need repository admin access:
- `main` and `dev`: require a pull request and one approval, dismiss stale approvals, block force pushes and deletion.
- `main`: restrict updates to the PM if the repository plan supports it.

Until these are enabled, the controls are manual: authors check the PR base, nobody merges without a non-author approval, only Tek merges into `main`, and the Friday review checks for direct commits.

The PR template takes effect on GitHub once it reaches the default branch.

## 9. Acceptance evidence and approval

| LT-006 evidence | Status | Link |
|---|---|---|
| Workflow documented | Draft | This file |
| Team review of this agreement | Pending | |
| Branch settings enabled, or manual controls agreed | Pending | |
| Demonstration: task branch → reviewed PR → `dev` | Pending | |
| Demonstration: verified `dev` → `main` by PM | Pending | |

| Member | Decision | Date |
|---|---|---|
| TEK CHANSETHA | Pending | |
| TANG NAKRY | Pending | |
| SOK SANA | Pending | |
| SRENG SOPHEAKANHA | Pending | |
| TAK TOEK | Pending | |
