# LowTide State Model and Interaction Interfaces

**Task:** LT-007 · **Owner:** SRENG SOPHEAKANHA · **Reviewers:** SOK SANA, TANG NAKRY
**Revision:** v0.1, 2026-11-28 · **Status:** Draft. Not reviewed, not implemented, code not run in Godot.
**Sources:** [MVP scope](MVP_SCOPE.md), [plan](../plan.md), `prototype` branch (commit `de17e34`)
**Implements next:** LT-016 (tide prototype), LT-017 (state and signals), LT-028 (interactable base)

Room content follows the MVP scope. See section 12 before using any R4–R7 name.

## 1. Principles

1. **State lives in one place.** `WorldState` holds all session state. Scene nodes never keep their own copy of progress.
2. **Scenes reflect state.** On load, a node reads the current state, then listens for changes. Reloading a room must give the same result.
3. **Request, then notify.** A node asks the responsible service to change state. Everyone else reacts to signals.
4. **Derive, don't store.** Gate openness and platform position are calculated from tide, flags and abilities.
5. **Session only.** Nothing is written to disk.

```text
Player ──interact()──▶ Interactable ──▶ WorldState / TideController
                                              │ signals
                                              ▼
                             Gates · Platforms · Water · UI · Audio
```

## 2. State model

| State | Type | Initial | Changed only by | Lifetime |
|---|---|---|---|---|
| `tide` | `GameTypes.Tide` (`LOW`, `HIGH`) | `LOW` | Tide controller; room transition and respawn | Until next room entry or respawn |
| `flags` | set of `StringName` that are true | empty | Interactables and puzzle logic | Session |
| `abilities` | set of `StringName` | empty | Ability pickup | Session |
| `checkpoint` | room ID and spawn ID | R1 start | Checkpoint | Session |

### Tide rules

- There is **one** current tide, applying to the loaded room.
- Every spawn point declares an `entry_tide`. Room entry and respawn set the tide to it. This guarantees a spawn is tested in a known state.
- The return from R6 to R2 uses a spawn with `entry_tide = HIGH` (LT-071).
- Platform and water positions are never saved; they follow from `tide` and flags.

### What survives

| Event | Flags | Abilities | Checkpoint | Tide |
|---|---|---|---|---|
| Room transition | Kept | Kept | Kept | Spawn's `entry_tide` |
| Hazard, out of bounds, reset | Kept | Kept | Kept | Checkpoint spawn's `entry_tide` |
| New game | Cleared | Cleared | R1 start | `LOW` |
| Quit | Lost | Lost | Lost | Lost |

## 3. Naming

| Thing | Format | Example |
|---|---|---|
| Flag | `<room>.<object>.<past state>` | `r3.release_lever.released` |
| Ability | `snake_case` | `diving_bell` |
| Room ID | `r1` … `r7` | `r2` |
| Spawn ID | `from_<room>` or `checkpoint` | `from_r6` |
| Signal | past tense | `flag_changed` |

IDs are constants. Never type an ID string directly in a scene script.

```gdscript
# scripts/state/game_types.gd
class_name GameTypes

enum Tide { LOW, HIGH }
```

```gdscript
# scripts/state/ids.gd
class_name Ids

const DIVING_BELL := &"diving_bell"

const R3_LEVER_RELEASED := &"r3.release_lever.released"
const R4_SWITCH_LOW := &"r4.switch_low.activated"
const R4_SWITCH_HIGH := &"r4.switch_high.activated"
const R7_SWITCH_A := &"r7.switch_a.activated"
const R7_SWITCH_B := &"r7.switch_b.activated"
const R7_SWITCH_C := &"r7.switch_c.activated"
const ENDING_TRIGGERED := &"game.ending.triggered"
```

## 4. `WorldState` contract

Autoload named `WorldState`. Owner: SRENG SOPHEAKANHA. Registering it in `project.godot` needs TANG NAKRY.

```gdscript
# scripts/state/world_state.gd
extends Node

signal tide_changed(tide: GameTypes.Tide)
signal flag_changed(flag: StringName, value: bool)
signal ability_gained(ability: StringName)
signal checkpoint_changed(room_id: StringName, spawn_id: StringName)
signal state_reset

var tide: GameTypes.Tide = GameTypes.Tide.LOW:
	set(value):
		if value == tide:
			return
		tide = value
		tide_changed.emit(tide)

var checkpoint_room: StringName = &"r1"
var checkpoint_spawn: StringName = &"checkpoint"

var _flags: Dictionary = {}
var _abilities: Dictionary = {}


func has_flag(flag: StringName) -> bool:
	return _flags.has(flag)


func set_flag(flag: StringName, value := true) -> void:
	if has_flag(flag) == value:
		return
	if value:
		_flags[flag] = true
	else:
		_flags.erase(flag)
	flag_changed.emit(flag, value)


func has_ability(ability: StringName) -> bool:
	return _abilities.has(ability)


func gain_ability(ability: StringName) -> void:
	if has_ability(ability):
		return
	_abilities[ability] = true
	ability_gained.emit(ability)


func set_checkpoint(room_id: StringName, spawn_id: StringName) -> void:
	if room_id == checkpoint_room and spawn_id == checkpoint_spawn:
		return
	checkpoint_room = room_id
	checkpoint_spawn = spawn_id
	checkpoint_changed.emit(room_id, spawn_id)


func new_game() -> void:
	_flags.clear()
	_abilities.clear()
	checkpoint_room = &"r1"
	checkpoint_spawn = &"checkpoint"
	tide = GameTypes.Tide.LOW
	state_reset.emit()
```

Signals fire only when a value actually changes. `state_reset` means "reload everything"; the caller reloads the starting room.

## 5. Interactable interface

Owner: TEK CHANSETHA (LT-028). This keeps the prototype's convention: the player finds an `Area2D` in reach and calls `interact()`.

```gdscript
# scripts/interactables/interactable.gd
class_name Interactable
extends Area2D

@export var prompt := "Interact"


func can_interact() -> bool:
	return true


func interact() -> void:
	if can_interact():
		_on_interact()


func _on_interact() -> void:
	push_error("%s must override _on_interact()" % name)
```

| Rule | Detail |
|---|---|
| Collision | Interactables are on physics layer 3 (`Interactables`) |
| Selection | The player picks the nearest object in reach whose `can_interact()` is true |
| Timing | The player may call `interact()` during its animation; `interact()` re-checks validity |
| Prompt | UI shows `prompt` for the selected object |
| Arguments | `interact()` takes none; objects do not hold a player reference |

Change needed from the prototype (SOK SANA): it selects by `has_method("interact")` only and should also check `can_interact()`.

### Standard objects

| Object | `can_interact()` | Effect |
|---|---|---|
| Tide Anchor | Tide is not already changing | `TideController.request_toggle()` |
| Release lever | Flag not set | `set_flag(flag)`; stays released |
| Puzzle switch | Flag not set, and tide matches its optional `required_tide` | `set_flag(flag)` |
| Ability pickup | Ability not owned | `gain_ability(id)`; hidden if already owned |

Checkpoints activate on touch † using `set_checkpoint(room_id, spawn_id)`.

## 6. Tide controller

Owner: TANG NAKRY (LT-016, LT-027). One per room scene.

| Member | Meaning |
|---|---|
| `request_toggle() -> bool` | Changes the tide if safe; returns `false` if refused or already changing |
| `is_changing: bool` | True during the transition |
| `change_refused` (signal) | UI and audio give feedback |

**Safety check:** before changing, the controller asks every node in group `tide_blockers` through `can_change_tide(target: GameTypes.Tide) -> bool`. Any `false` refuses the change (LT-038). If accepted, it sets `WorldState.tide`.

## 7. Reacting objects

Every tide, gate or water object follows this pattern: apply state instantly on load, animate on change.

```gdscript
# scripts/interactables/gate.gd
extends Node2D

@export var required_flags: Array[StringName] = []
@export var required_abilities: Array[StringName] = []


func _ready() -> void:
	WorldState.flag_changed.connect(_on_flag_changed)
	WorldState.ability_gained.connect(_on_ability_gained)
	_apply(false)


func _on_flag_changed(_flag: StringName, _value: bool) -> void:
	_apply(true)


func _on_ability_gained(_ability: StringName) -> void:
	_apply(true)


func is_open() -> bool:
	return required_flags.all(WorldState.has_flag) \
			and required_abilities.all(WorldState.has_ability)


func _apply(_animate: bool) -> void:
	$Blocker/CollisionShape2D.set_deferred(&"disabled", is_open())
```

| Object | Reads | Behaviour | Owner |
|---|---|---|---|
| Gate, shortcut | Flags, abilities | Open when **all** requirements are met | TEK CHANSETHA |
| Floating platform | Tide, release flag | Raised only if released and `HIGH`; otherwise lowered | TANG NAKRY |
| Deep-water barrier | `diving_bell` | Blocks entry until owned | SOK SANA |
| HUD, audio | Signals | Presentation only; never changes state | TEK CHANSETHA, TANG NAKRY |

## 8. Transitions and recovery

Owner: SRENG SOPHEAKANHA. Detailed contract follows in LT-018.

| Call | Meaning |
|---|---|
| `RoomTransitions.go_to(room_id, spawn_id)` | Used by doors |
| `Respawn.respawn(reason)` | Used by hazards (`&"hazard"`), bounds (`&"out_of_bounds"`) and the reset action (`&"reset"`) |

Order, for both: lock input → set `WorldState.tide` to the spawn's `entry_tide` → load or reload the room → place the player with zero velocity → unlock input. Repeated requests during this sequence are ignored.

## 9. R2 and R3 walkthrough

| Step | Action | State and signal | Reaction |
|---|---|---|---|
| 1 | Enter R2 | `tide` = spawn's `entry_tide` | R2 gate to R6 closed: no `diving_bell` |
| 2 | Enter R3 from R2 | `tide = LOW` | Platform lowered |
| 3 | Pull release lever | `flag_changed(r3.release_lever.released)` | Lever shows released; platform stays low |
| 4 | Use Tide Anchor | `tide_changed(HIGH)` | Platform rises, carrying the player |
| 5 | Leave and return | Flag kept; tide reset to `LOW` | Lever still released; anchor raises platform again |
| 6 | Respawn | Flag kept | Same as step 5 |
| 7 | Later: return from R6 | `tide = HIGH` | R2 safe at High Tide |

Level condition for TAK TOEK: in each room, the anchor needed to progress must be reachable from every spawn at its `entry_tide`.

## 10. Rooms R4–R7 (provisional)

| Room | Requirement | State |
|---|---|---|
| R4 | Gate and R2↔R4 shortcut need both switches | `R4_SWITCH_LOW` and `R4_SWITCH_HIGH` |
| R5 | Diving Bell pickup | ability `diving_bell` |
| R6 | Deep-water access | ability `diving_bell` |
| R7 | Ending needs three switches and fires once | `R7_SWITCH_A/B/C`, then `ENDING_TRIGGERED` |

## 11. Test cases for LT-017

1. Setting the same flag twice emits one signal.
2. Setting the current tide again emits nothing.
3. Gaining an owned ability emits nothing.
4. A gate with two requirements stays closed with one, in either order.
5. A room reloaded after changes shows the same gate and lever states.
6. Respawn keeps flags, abilities and checkpoint, and applies the entry tide.
7. `new_game()` restores every initial value.
8. A refused tide change leaves state unchanged.

## 12. Open items and review

| # | Item | Who |
|---|---|---|
| O1 | **World graph conflict.** The LT-008 draft (PR #5, unmerged) differs from the MVP scope for R4–R7: it adds a Tide Sigil, moves the Diving Bell to R6, includes boat-hook combat and a lighthouse guardian. The MVP scope requires one ability and excludes boss fights. Sections 9 step 7 and 10 may change. | TEK CHANSETHA, TAK TOEK |
| O2 | Is resetting the tide on every room entry acceptable for puzzles and play feel? | TANG NAKRY, TAK TOEK |
| O3 | Do checkpoints activate on touch or by interaction? | Team |
| O4 | Are crates (in the prototype) in scope? Their positions are not in this model. | TEK CHANSETHA |
| O5 | Confirm folder paths and autoload registration with LT-004. | TANG NAKRY |

| Reviewer | Decision | Date / evidence |
|---|---|---|
| SOK SANA | Pending | |
| TANG NAKRY | Pending | |
