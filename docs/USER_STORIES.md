# LowTide User Stories

**Task:** LT-003 · **Owner:** SRENG SOPHEAKANHA · **Revision:** v0.1, 2026-11-28
**Status:** Draft for PM review. Acceptance criteria describe planned behaviour.
**Requirements:** [REQUIREMENTS.md](REQUIREMENTS.md)

Priority follows the requirements: **Must**, **Must (option)** (depends on room count), **Conditional**. Effort stays on the LT tasks in the [plan](../plan.md); stories are not estimated separately. Room names assume the seven-room forecast.

## Epic A: Movement

**US-01 · Move and jump** · Must · FR-01
As a player, I want to run and jump predictably so that I can reach places with confidence.
- Given solid ground, when I move or jump, then my character responds and lands without passing through terrain.
- Given the same jump repeated, then the result is consistent.

**US-02 · Learn the controls** · Must (option) · FR-01, FR-07, FR-22
As a first-time player, I want a safe opening area that teaches me to move, jump and interact so that I can start without outside help.
- Given a new game, when I follow R1, then I use all three actions and reach R2.

## Epic B: Tide puzzles

**US-03 · Change the tide** · Must · FR-04, FR-05
As a player, I want to switch between Low and High Tide at a Tide Anchor so that I can open new routes.
- Given I am at an anchor, when I activate it, then the tide changes and tide-dependent objects follow.
- When I activate it again, then the previous state returns.

**US-04 · Never get trapped by the tide** · Must · FR-06, NFR-03
As a player, I want tide changes to be safe so that experimenting never ruins my run.
- Given any reachable position, when the tide changes, then I am not stuck in geometry and have a way forward, back or to reset.

**US-05 · Read the tide state** · Must · FR-19, NFR-05, NFR-06
As a player, I want to see the current tide and which objects it affects so that I can plan a solution.
- Given either tide state, then I can identify it without relying on colour alone.

**US-06 · Ride the rising platform** · Must · FR-07, FR-09
As a player, I want to release and ride a floating platform so that I can solve R3.
- Given the lever is not released, then the platform does not provide the route.
- When I release the lever and raise the tide, then the platform carries me to a reachable exit.

**US-07 · Open the floodgate** · Must (option) · FR-08, FR-10
As a player, I want to combine Low and High Tide switches so that I earn a shortcut back to the hub.
- Given only one switch is active, then the gate stays closed.
- When both are active, then the gate and the R2↔R4 shortcut open and stay open.

## Epic C: Exploration and progression

**US-08 · Move between rooms** · Must · FR-12, FR-13
As a player, I want doors to place me safely in the next room so that exploration feels continuous.
- When I use any door, then I arrive at its matching spawn point, clear of hazards.

**US-09 · Keep my progress** · Must · FR-14
As a player, I want solved puzzles and collected abilities to stay that way so that backtracking is worthwhile.
- Given I solved a puzzle, when I leave and return or respawn, then it is still solved.
- Progress is not kept after quitting the game; saving to disk is out of scope.

**US-10 · Get the Diving Bell** · Must (option) · FR-11
As a player, I want to collect the Diving Bell so that I gain a new way to explore.
- When I collect it in R5, then I keep it for the session, including after respawning.

**US-11 · Explore deep water** · Must · FR-02, FR-03
As a player, I want the Diving Bell to let me traverse deep water so that earlier blocked routes become usable.
- Given no Diving Bell, then deep water cannot be entered.
- Given the Diving Bell, then I can enter, move underwater and leave.

**US-12 · Return safely** · Must (option) · FR-15
As a player, I want to travel back from the drowned area to the hub so that I am never stranded.
- When I return from R6 to R2, then I arrive in safe High Tide with a usable route, every time.

## Epic D: Recovery

**US-13 · Reach a checkpoint** · Must (option) · FR-16, FR-19
As a player, I want to activate checkpoints and see which one is active so that I know where I will restart.
- When I activate a checkpoint, then it is visibly active and becomes my respawn point.

**US-14 · Recover from hazards** · Must · FR-17
As a player, I want to restart nearby after a mistake so that failure costs little.
- When I touch a hazard or leave the bounds, then I respawn at the active checkpoint with progress retained.

**US-15 · Reset when stuck** · Must · FR-18
As a player, I want a reset action so that I can recover without closing the game.
- When I use reset, then I respawn exactly as after a hazard, with no debug tools.

## Epic E: Ending and feedback

**US-16 · Feel changes happen** · Must · FR-19, FR-20
As a player, I want visual and audio cues for switches, gates, pickups and tide changes so that I know my action worked.
- When such an event occurs, then a visible cue and its audio cue play.

**US-17 · Light the lighthouse** · Must (option) · FR-21
As a player, I want to solve the final puzzle so that the game ends with a clear conclusion.
- Given the final conditions are incomplete, then no ending plays.
- When they are complete, then the ending triggers exactly once.

## Epic F: Delivery

**US-18 · Run the game** · Must · NFR-01, NFR-02, FR-22
As an instructor, I want a Windows build with instructions so that I can run and assess it on my machine.
- Given a second machine, when I launch the export, then it runs and the controls and credits are available.

**US-19 · Build on shared contracts** · Must · NFR-09
As a developer, I want documented tide, ability and gate flags and signals so that subsystems integrate without rework.
- Given the contract document, then R2 and R3 features use the named flags and signals, and tests cover them.

**US-20 · Verify progress from evidence** · Must · NFR-10
As the project manager, I want each change reviewed and linked to its task so that I can accept milestones on evidence.
- Given a task marked done, then a reviewed pull request and acceptance evidence are linked.

## Epic G: Conditional

**US-21 · Fight an enemy** · Conditional · FR-23, FR-24, FR-25
As a player, I want to attack and defeat a simple enemy, and see my health, so that exploration has some danger.
- Only started if combat is approved. Zero health uses the same respawn service as hazards.

## Traceability

| Requirement | Stories |
|---|---|
| FR-01–03 | US-01, 02, 11 |
| FR-04–06 | US-03, 04 |
| FR-07–11 | US-02, 06, 07, 10 |
| FR-12–15 | US-08, 09, 12 |
| FR-16–18 | US-13, 14, 15 |
| FR-19–22 | US-02, 05, 13, 16, 17, 18 |
| FR-23–25 | US-21 |
| FR-26 | No story; polish backlog |
| NFR-01–03, 05, 06, 09, 10 | US-04, 05, 18, 19, 20 |
| NFR-04, 07, 08, 11, 12 | No story; checked directly against the requirement |
