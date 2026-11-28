# LowTide — Week 1 Deliverables (SOK SANA)

**Sprint:** Start (Week 1: `2026-11-26` to `2026-11-27`)  
**Owner:** SOK SANA  
**Tasks Covered:** `LT-010` (5 h) + `LT-011` (3 h) = **8 h**

---

## 1. LT-010: Audit Art References, Assets, and Licenses (5 h · `2026-11-26`)

**Goal:** Record asset sources, licenses, and Godot 4 suitability so the team can build readable placeholders (`LT-032`) without license or scaling issues.

### Existing Repository Assets (`LowTide/`)
- **Player Sprites:** `LowTide/sprite/player/player_lamplighter.aseprite` and `64×64` PNG sheets in `LowTide/sprite/player/` (`idle`, `run`, `jump`, `fall`, `land`, `interact`, `hurt`, `push`, `pull`, `hook_use`, plus `practice/` sheets `swim`, `pogo`, `slash_up`, `slash_down`) configured in `LowTide/sprite/player/player_frames.tres`.
  - *Action:* Confirm and record that these are original team-created assets (note author and license).
- **Godot Project Settings (`LowTide/project.godot`):**
  - Stretch mode: `canvas_items` / `expand`.
  - Texture filtering: Use **Nearest** for pixel art and **16×16** or **32×32** tilesets so they align cleanly with the `64×64` player sprite.
  - Visual contrast across 2D physics layers: `Terrain` (Layer 1), `Interactables` (Layer 3), `Pushable bodies` (Layer 4), and `Water` (Layer 5).

### Recommended External Asset Sources & License Rules
- **Kenney.nl (`CC0 1.0` — Public Domain):** Best for **Input Prompts** (keyboard keys `E`, `F`, `W/A/S/D`, `Shift`, `Space`, `R`), basic UI panels, and placeholder SFX. No attribution required, commercial-safe.
- **OpenGameArt.org / itch.io (`CC0` or `CC-BY 4.0` only):** Use for stone/ruin tilesets, water/tide overlays, and lever/gate props. **Avoid** `GPL` or `NC` (Non-Commercial) licenses, and record attribution text if using `CC-BY`.

### Asset Audit Table
| Asset / Pack | Category | Source URL | Format & Size | License | Godot Suitability | Status |
|---|---|---|---|---|---|---|
| `player_lamplighter.aseprite` | Player | Repo (`sprite/player/`) | `64×64` PNG / Aseprite | Team original (confirm) | Ready (`player_frames.tres`) | In repo |
| *Input Prompts Pack* | UI / Keys | Kenney.nl | `16×16` / `32×32` PNG | `CC0 1.0` | High (matches `E`/`F`/`R`) | To verify |
| *Ruin / Lighthouse Tileset* | Tiles / Props | itch.io / OGA | `16×16` or `32×32` PNG | `CC0` or `CC-BY` | Check contrast vs. player | To select |
| *Basic Tide / Switch SFX* | Audio | Kenney / OGA | `.wav` / `.ogg` | `CC0` | Godot 4 native | To select |

---

## 2. LT-011: Sketch UI and Tide Feedback Direction (3 h · `2026-11-27`)

**Goal:** Agree on a legible, minimal HUD and world-space feedback direction with Tek and Nakry (minimum readability; no extended polish required yet).

### 1. Tide-State Feedback (Low vs. High Tide)
- **HUD Badge (Top-Right):** Simple 2-state icon + text label so it stays readable for colorblind players:
  - **Low Tide:** Sun/drained-water icon + `LOW TIDE` (warm amber/sand accent).
  - **High Tide:** Wave/submerged icon + `HIGH TIDE` (cool cyan/blue accent).
- **World-Space Cue:** Semi-transparent `Water` overlay tint (Layer 5) + a distinct bright surface waterline so flooded vs. drained paths are obvious at a glance.

### 2. Interaction Prompts (matching `LowTide/project.godot`)
Show a small floating keycap badge above the object when the player enters its `Interactables` / `Pushable bodies` trigger:
- `[E]` (`player_interact`) — Tide Anchor, levers, checkpoints, Diving Bell pedestal (`[E] Switch Tide`, `[E] Pull`, `[E] Checkpoint`).
- `[F]` (`player_grab`) — Pushable crates (`[F] Grab`).
- `[R]` (`practice_reset`) — Subtle corner hint only if needed for hazard/softlock reset testing.

### 3. Initial Ability & Health HUD (Top-Left)
- **Diving Bell Slot:** Always visible in core scope — dimmed/locked icon before R5 pickup, lit icon once unlocked.
- **Health Pips (Conditional):** Reserve space for 3–5 simple heart/lamp pips next to the Diving Bell icon, kept **hidden/inactive** unless combat (`LT-069` / `LT-076`) is approved at the Dec 4 gate.

---

## Week 1 Sign-Off Checklist
- [ ] Complete the **LT-010** audit table (confirming license/author of `player_lamplighter.aseprite`) and select 1 tileset + 1 input-prompt pack.
- [ ] Create a 1-page UI layout sketch (Figma, Aseprite, or paper/photo) for **LT-011** covering HUD corners, `[E]`/`[F]` world prompts, and Low/High Tide states.
- [ ] Review **LT-011** sketch with **Tek** (UI/puzzle owner) and **Nakry** (UX/tide lead) to mark `LT-010` and `LT-011` done.
- [ ] Log **8 h** (`5 h` LT-010 + `3 h` LT-011) and evidence links in `docs/actual-hours/`.
