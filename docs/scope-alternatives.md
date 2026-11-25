# LowTide v0.10: scope alternatives

Decision aid for the Nov 27 proposal discussion and Dec 4 re-estimation. Source: v0.10 plan.md (99 IDs, 435 primary hours, 13 booked secondary hours). This is a task-level scenario model, not three approved schedules. All estimates are hypotheses; no actual hours or instructor approval are assumed. Original completed tasks LT-001 and LT-002 are preserved, and their cost is included in every total; reconfirm scope rather than pretending previous work did not occur.

## Room topology and retained product

| Option | Rooms and route | Tide, ability, recovery and ending |
|---|---|---|
| Seven-room core | R1 tutorial ↔ R2 hub ↔ R3 Rising Platform; R4 floodgate, R5 archive; R2 ↔ R6 ↔ R7 lighthouse | Original puzzle chain, Diving Bell, three checkpoints; hazard/reset; no combat or decorative extras |
| Five-room | R1/R2/R3 retained; R4 floodgate includes archive/pickup; R2 ↔ R7 (short underwater entrance inside R7) | Single R4 lock and shortcut, bell, two checkpoints, simplified lighthouse switch; hazard/reset |
| Three-room | R2 tutorial hub ↔ R3 Rising Platform with bell reward; return to R2 ↔ R7 underwater entry and ending | One checkpoint in R2, safe reset, persistent bell flag, tide puzzles and ability-gated return, simple ending |

Room names retain original IDs for traceability. Confirm exact adjacency and traversal with LT-008. Five-room removes separate R5/R6; three-room additionally removes R1/R4. The five-room and three-room routes are design proposals, not established facts from the existing plan.

## Cost and capacity comparison

| Measure | Seven-room core | Five-room | Three-room |
| --- | --- | --- | --- |
| Retained tasks | 90 | 88 | 83 |
| Deferred tasks | 9 | 11 | 16 |
| Optimistic primary hours | 388 | 358 | 300 |
| Booked secondary hours | 12 | 12 | 12 |
| Optimistic engineering hours | 400 | 370 | 312 |
| Engineering without assumed simplification savings | 400 | 391 | 365 |
| Unvalidated savings | 0 | 21 | 53 |
| Coordination hours | 22.5 | 22.5 | 22.5 |
| Stress-budget excess range | +81.25 to +81.25 | +51.25 to +72.25 | -6.75 to +46.25 |
| Total effort at 20% overrun range | 502.5 to 502.5 | 466.5 to 491.7 | 396.9 to 460.5 |
| Capacity balance vs 405 h at 20% overrun | -97.5 to -97.5 | -86.7 to -61.5 | -55.5 to +8.1 |

Full optional backlog: 448 engineering hours + 22.5 coordination = 470.5 h. Stress budget = (405 − 22.5)/1.2 = 318.75 h. Positive engineering excess indicates a deficit; positive capacity balance indicates spare hours after applying the overrun. The optimistic scenario uses task edits below; the no-savings scenario retains original primary estimates for all retained IDs, including merged functions. Neither is a statistical interval or a proven upper bound; merged-room work may cost more. Review, mentoring and menu work beyond named bookings are unestimated. LT-014 includes 3 h PM and 4 secondary hours in every option. Original SP are provisional.

| Member | Seven-room h | Five-room range h | Three-room range h | Conservative engineering allowance |
| --- | --- | --- | --- | --- |
| TEK CHANSETHA | 84 | 82 to 84 | 75 to 84 | 76.5 |
| TANG NAKRY | 70 | 67 to 70 | 60 to 70 | 76.5 |
| SOK SANA | 70 | 70 | 64 to 70 | 76.5 |
| SRENG SOPHEAKANHA | 91 | 82 to 91 | 71 to 85 | 76.5 |
| TAK TOEK | 85 | 69 to 76 | 42 to 56 | 76.5 |

Owner ranges include revised reviews and gate effort. Rebalance only after verifying weekly capacity and capabilities. The three-room option is potentially feasible only if measured savings materialize; the five- and seven-room options exceed the stress budget even optimistically.

## Exact task and dependency matrix

Each cell is engineering hours (primary only), status and complete predecessor set. K = keep, M = modify, D = defer / out of option (0 h). A dash means no predecessor. All retained predecessors are checked for existence and cycles; dates must be rescheduled after selection. The register below gives revised acceptance outputs for each modified task; unchanged tasks use plan.md acceptance criteria interpreted for the selected topology. Historical completed items remain done only for their original evidence.

| ID | Owner | Seven-room: hours / status / deps | Five-room: hours / status / deps | Three-room: hours / status / deps |
|---|---|---|---|---|
| LT-001 | TEK CHANSETHA | 2 / K / — | 2 / K / — | 2 / K / — |
| LT-002 | TEK CHANSETHA | 3 / K / LT-001 | 3 / K / LT-001 | 3 / K / LT-001 |
| LT-003 | SRENG SOPHEAKANHA | 5 / K / — | 5 / K / — | 5 / K / — |
| LT-004 | TANG NAKRY | 5 / K / — | 5 / K / — | 5 / K / — |
| LT-005 | TANG NAKRY | 4 / K / LT-004 | 4 / K / LT-004 | 4 / K / LT-004 |
| LT-006 | SRENG SOPHEAKANHA | 4 / K / LT-004 | 4 / K / LT-004 | 4 / K / LT-004 |
| LT-007 | SRENG SOPHEAKANHA | 3 / K / LT-002 | 3 / K / LT-002 | 3 / K / LT-002 |
| LT-008 | TAK TOEK | 5 / K / — | 4 / M / — | 3 / M / — |
| LT-009 | TAK TOEK | 4 / K / LT-008 | 4 / K / LT-008 | 3 / M / LT-008 |
| LT-010 | SOK SANA | 5 / K / — | 5 / K / — | 5 / K / — |
| LT-011 | SOK SANA | 3 / K / LT-010 | 3 / K / LT-010 | 3 / K / LT-010 |
| LT-012 | TEK CHANSETHA | 5 / K / LT-002, LT-003, LT-007 | 5 / M / LT-002, LT-003, LT-007 | 4 / M / LT-002, LT-003, LT-007 |
| LT-013 | TEK CHANSETHA | 4 / K / LT-009, LT-012 | 4 / K / LT-009, LT-012 | 3 / M / LT-009, LT-012 |
| LT-014 | TEK CHANSETHA | 3 / K / LT-012, LT-015, LT-016, LT-017, LT-019 | 3 / K / LT-012, LT-015, LT-016, LT-017, LT-019 | 3 / K / LT-012, LT-015, LT-016, LT-017, LT-019 |
| LT-015 | SOK SANA | 5 / K / LT-005 | 5 / K / LT-005 | 5 / K / LT-005 |
| LT-016 | TANG NAKRY | 5 / K / LT-007 | 5 / K / LT-007 | 5 / K / LT-007 |
| LT-017 | SRENG SOPHEAKANHA | 5 / K / LT-007 | 5 / K / LT-007 | 5 / K / LT-007 |
| LT-018 | SRENG SOPHEAKANHA | 3 / K / LT-017 | 3 / M / LT-017 | 3 / M / LT-017 |
| LT-019 | TAK TOEK | 5 / K / LT-008, LT-015 | 5 / M / LT-008, LT-015 | 5 / M / LT-008, LT-015 |
| LT-020 | TAK TOEK | 5 / K / LT-009, LT-015 | 5 / K / LT-009, LT-015 | 4 / M / LT-009, LT-015 |
| LT-021 | TANG NAKRY | 0 / D / — | 0 / D / — | 0 / D / — |
| LT-022 | SOK SANA | 0 / D / — | 0 / D / — | 0 / D / — |
| LT-023 | TEK CHANSETHA | 3 / K / LT-014 | 3 / K / LT-014 | 3 / K / LT-014 |
| LT-024 | SRENG SOPHEAKANHA | 4 / K / LT-013 | 4 / K / LT-013 | 3 / M / LT-013 |
| LT-025 | TEK CHANSETHA | 2 / K / LT-023 | 2 / K / LT-023 | 2 / K / LT-023 |
| LT-026 | SOK SANA | 5 / K / LT-015 | 5 / K / LT-015 | 5 / K / LT-015 |
| LT-027 | TANG NAKRY | 6 / K / LT-016, LT-017 | 6 / K / LT-016, LT-017 | 6 / K / LT-016, LT-017 |
| LT-028 | TEK CHANSETHA | 5 / K / LT-017 | 5 / K / LT-017 | 5 / K / LT-017 |
| LT-029 | SRENG SOPHEAKANHA | 5 / K / LT-018 | 5 / K / LT-018 | 5 / K / LT-018 |
| LT-030 | TAK TOEK | 4 / K / LT-026 | 4 / K / LT-026 | 0 / D / — |
| LT-031 | TAK TOEK | 5 / K / LT-019, LT-029 | 5 / K / LT-019, LT-029 | 4 / M / LT-019, LT-029 |
| LT-032 | SOK SANA | 5 / K / LT-010 | 5 / K / LT-010 | 5 / K / LT-010 |
| LT-033 | TANG NAKRY | 3 / K / LT-011, LT-027 | 3 / K / LT-011, LT-027 | 3 / K / LT-011, LT-027 |
| LT-034 | TEK CHANSETHA | 4 / K / LT-024, LT-042 | 4 / K / LT-024, LT-042 | 4 / M / LT-024, LT-042 |
| LT-035 | TEK CHANSETHA | 4 / K / LT-034, LT-036 | 4 / K / LT-034, LT-036 | 4 / K / LT-034, LT-036 |
| LT-036 | TEK CHANSETHA | 2 / K / LT-034 | 2 / K / LT-034 | 2 / M / LT-034 |
| LT-037 | TANG NAKRY | 6 / K / LT-027 | 6 / K / LT-027 | 5 / M / LT-027 |
| LT-038 | SOK SANA | 4 / K / LT-027, LT-037 | 4 / K / LT-027, LT-037 | 4 / K / LT-027, LT-037 |
| LT-039 | SRENG SOPHEAKANHA | 7 / K / LT-018, LT-029 | 7 / K / LT-018, LT-029 | 7 / K / LT-018, LT-029 |
| LT-040 | SRENG SOPHEAKANHA | 4 / K / LT-029, LT-027 | 4 / K / LT-029, LT-027 | 4 / K / LT-029, LT-027 |
| LT-041 | TAK TOEK | 6 / K / LT-020, LT-037 | 6 / K / LT-020, LT-037 | 5 / M / LT-020, LT-037 |
| LT-042 | TAK TOEK | 5 / K / LT-041, LT-028, LT-039, LT-038, LT-040 | 5 / K / LT-041, LT-028, LT-039, LT-038, LT-040 | 4 / M / LT-041, LT-028, LT-039, LT-038, LT-040, LT-031 |
| LT-043 | SOK SANA | 0 / D / — | 0 / D / — | 0 / D / — |
| LT-044 | TEK CHANSETHA | 3 / K / LT-039, LT-033 | 3 / K / LT-039, LT-033 | 3 / K / LT-039, LT-033 |
| LT-045 | TEK CHANSETHA | 4 / K / LT-035 | 3 / M / LT-035 | 3 / M / LT-035 |
| LT-046 | TEK CHANSETHA | 3 / K / LT-045 | 3 / K / LT-045 | 3 / K / LT-045 |
| LT-047 | TANG NAKRY | 3 / K / LT-045 | 3 / K / LT-045 | 3 / M / LT-045 |
| LT-048 | SOK SANA | 6 / K / LT-026, LT-027 | 6 / K / LT-026, LT-027 | 5 / M / LT-026, LT-027 |
| LT-049 | SOK SANA | 3 / K / LT-048, LT-017 | 3 / K / LT-048, LT-017 | 3 / K / LT-048, LT-017 |
| LT-050 | SRENG SOPHEAKANHA | 6 / K / LT-028, LT-017 | 5 / M / LT-028, LT-017 | 4 / M / LT-028, LT-017 |
| LT-051 | SRENG SOPHEAKANHA | 5 / K / LT-050, LT-040 | 4 / M / LT-050, LT-040 | 3 / M / LT-050, LT-040 |
| LT-052 | TAK TOEK | 6 / K / LT-041, LT-045 | 5 / M / LT-041, LT-045 | 0 / D / — |
| LT-053 | TAK TOEK | 4 / K / LT-050, LT-052 | 3 / M / LT-050, LT-052 | 0 / D / — |
| LT-054 | TANG NAKRY | 0 / D / — | 0 / D / — | 0 / D / — |
| LT-055 | TANG NAKRY | 3 / K / LT-050, LT-032 | 3 / M / LT-050, LT-032 | 2 / M / LT-050, LT-032 |
| LT-056 | TEK CHANSETHA | 4 / K / LT-047, LT-053 | 4 / M / LT-047, LT-053 | 3 / M / LT-047, LT-042 |
| LT-057 | TEK CHANSETHA | 4 / K / LT-061, LT-062, LT-063, LT-064 | 4 / M / LT-061, LT-062, LT-063 | 3 / M / LT-062, LT-042 |
| LT-058 | TEK CHANSETHA | 2 / K / LT-057 | 2 / K / LT-057 | 2 / K / LT-057 |
| LT-059 | SOK SANA | 6 / K / LT-048, LT-049 | 6 / K / LT-048, LT-049 | 4 / M / LT-048, LT-049 |
| LT-060 | SOK SANA | 3 / K / LT-059 | 3 / M / LT-059 | 2 / M / LT-059 |
| LT-061 | SRENG SOPHEAKANHA | 6 / K / LT-050, LT-051, LT-053 | 4 / M / LT-050, LT-051, LT-053 | 0 / D / — |
| LT-062 | SRENG SOPHEAKANHA | 5 / K / LT-039, LT-059 | 4 / M / LT-039, LT-059, LT-061 | 4 / M / LT-039, LT-059, LT-051, LT-041 |
| LT-063 | TAK TOEK | 6 / K / LT-061, LT-052 | 4 / M / LT-061, LT-052, LT-062 | 0 / D / — |
| LT-064 | TAK TOEK | 4 / K / LT-052, LT-045 | 0 / D / — | 0 / D / — |
| LT-065 | TANG NAKRY | 0 / D / — | 0 / D / — | 0 / D / — |
| LT-066 | TANG NAKRY | 4 / K / LT-055, LT-062 | 4 / K / LT-055, LT-062 | 4 / K / LT-055, LT-062 |
| LT-067 | TEK CHANSETHA | 5 / K / LT-058, LT-070, LT-074 | 4 / M / LT-058, LT-070, LT-074 | 3 / M / LT-058, LT-070, LT-074 |
| LT-068 | TEK CHANSETHA | 3 / K / LT-067 | 3 / M / LT-067 | 2 / M / LT-067 |
| LT-069 | SOK SANA | 0 / D / — | 0 / D / — | 0 / D / — |
| LT-070 | TANG NAKRY | 4 / K / LT-060, LT-071 | 4 / M / LT-060, LT-071 | 3 / M / LT-060, LT-071 |
| LT-071 | SRENG SOPHEAKANHA | 5 / K / LT-060, LT-062, LT-040 | 4 / M / LT-060, LT-062, LT-040 | 4 / M / LT-060, LT-062, LT-040 |
| LT-072 | SRENG SOPHEAKANHA | 5 / K / LT-061, LT-059 | 3 / M / LT-061, LT-059 | 2 / M / LT-051, LT-059 |
| LT-073 | TAK TOEK | 5 / K / LT-060, LT-071 | 0 / D / — | 0 / D / — |
| LT-074 | TAK TOEK | 6 / K / LT-072, LT-073 | 6 / M / LT-072, LT-071 | 4 / M / LT-072, LT-071 |
| LT-075 | TANG NAKRY | 5 / K / LT-073 | 3 / M / LT-074 | 2 / M / LT-074 |
| LT-076 | TEK CHANSETHA | 0 / D / — | 0 / D / — | 0 / D / — |
| LT-077 | TEK CHANSETHA | 5 / K / LT-068, LT-084 | 5 / M / LT-068, LT-084 | 4 / M / LT-068, LT-084 |
| LT-078 | SOK SANA | 4 / K / LT-057, LT-056 | 4 / M / LT-057, LT-056 | 3 / M / LT-057, LT-056 |
| LT-079 | TEK CHANSETHA | 1 / K / LT-077, LT-081, LT-083, LT-085, LT-087 | 1 / K / LT-077, LT-081, LT-083, LT-085, LT-087 | 1 / K / LT-077, LT-081, LT-083, LT-085, LT-087 |
| LT-080 | SOK SANA | 0 / D / — | 0 / D / — | 0 / D / — |
| LT-081 | SOK SANA | 5 / K / LT-077, LT-070 | 5 / K / LT-077, LT-070 | 4 / M / LT-077, LT-070 |
| LT-082 | SRENG SOPHEAKANHA | 4 / K / LT-072, LT-074 | 3 / M / LT-072, LT-074 | 2 / M / LT-072, LT-074 |
| LT-083 | SRENG SOPHEAKANHA | 5 / K / LT-077, LT-071 | 5 / K / LT-077, LT-071 | 4 / M / LT-077, LT-071 |
| LT-084 | TAK TOEK | 5 / K / LT-074, LT-082 | 4 / M / LT-074, LT-082 | 3 / M / LT-074, LT-082 |
| LT-085 | TANG NAKRY | 5 / K / LT-084 | 4 / M / LT-084 | 3 / M / LT-084 |
| LT-086 | TANG NAKRY | 0 / D / — | 0 / D / — | 0 / D / — |
| LT-087 | TANG NAKRY | 4 / K / LT-082, LT-066 | 4 / K / LT-082, LT-066 | 3 / M / LT-082, LT-066 |
| LT-088 | TEK CHANSETHA | 7 / K / LT-078, LT-079 | 7 / M / LT-078, LT-079 | 7 / M / LT-078, LT-079 |
| LT-089 | TEK CHANSETHA | 4 / K / LT-088 | 4 / K / LT-088 | 4 / K / LT-088 |
| LT-090 | TEK CHANSETHA | 2 / K / LT-088, LT-089, LT-095, LT-096, LT-098, LT-099 | 2 / K / LT-088, LT-089, LT-095, LT-096, LT-098, LT-099 | 2 / K / LT-088, LT-089, LT-095, LT-096, LT-098, LT-099 |
| LT-091 | SOK SANA | 4 / K / LT-081 | 4 / K / LT-081 | 4 / K / LT-081 |
| LT-092 | SOK SANA | 5 / K / LT-091 | 5 / K / LT-091 | 5 / K / LT-091 |
| LT-093 | SRENG SOPHEAKANHA | 5 / K / LT-083, LT-082 | 5 / K / LT-083, LT-082 | 4 / M / LT-083, LT-082 |
| LT-094 | SRENG SOPHEAKANHA | 4 / K / LT-093 | 4 / K / LT-093 | 4 / K / LT-093 |
| LT-095 | TAK TOEK | 5 / K / LT-085, LT-094 | 4 / M / LT-085, LT-094 | 3 / M / LT-085, LT-094 |
| LT-096 | TAK TOEK | 4 / K / LT-095 | 4 / M / LT-095 | 3 / M / LT-095 |
| LT-097 | TANG NAKRY | 4 / K / LT-087 | 4 / K / LT-087 | 3 / M / LT-087 |
| LT-098 | TANG NAKRY | 4 / K / LT-097 | 4 / K / LT-097 | 4 / K / LT-097 |
| LT-099 | SOK SANA | 2 / K / LT-092, LT-094, LT-096, LT-097 | 2 / K / LT-092, LT-094, LT-096, LT-097 | 2 / K / LT-092, LT-094, LT-096, LT-097 |

## Five-room revised acceptance and exclusions

Deferred IDs: LT-021, LT-022, LT-043, LT-054, LT-064, LT-065, LT-069, LT-073, LT-076, LT-080, LT-086. Do not mark these done.

| Task | Revised primary hours | Revised acceptance / output |
|---|---:|---|
| LT-008 | 4 | Map R1/R2/R3/R4/R7; archive in R4, underwater entry within R7. |
| LT-012 | 5 | Revise GDD to five rooms and merged functions. |
| LT-018 | 3 | Safe spawn and checkpoint contracts for R2 to R7 direct return. |
| LT-019 | 5 | R2 hub, blocked direct R7 entry. |
| LT-045 | 3 | Specify one R4 tide-lock, pickup and shortcut; merged archive. |
| LT-050 | 5 | Reusable single-flag gate and ability gate. |
| LT-051 | 4 | Persist R4 lock, shortcut and bell flag. |
| LT-052 | 5 | Compact R4 lower/upper route with pickup alcove. |
| LT-053 | 3 | Place one tide lock, gate and shortcut. |
| LT-055 | 3 | Show lock and gate state with placeholders. |
| LT-056 | 4 | Demo route and capture for four rooms plus pickup. |
| LT-057 | 4 | Test R1–R4, bell and shortcut; midterm evidence. |
| LT-060 | 3 | Prototype underwater threshold for R7. |
| LT-061 | 4 | Persist single R4 lock and shortcut. |
| LT-062 | 4 | Bell pickup in R4; two checkpoints (hub and R4). |
| LT-063 | 4 | Verify R4 pickup and shortcut return. |
| LT-067 | 4 | Test five rooms, both tides, return and recovery. |
| LT-068 | 3 | Five-room graybox review; final integration follows. |
| LT-070 | 4 | Verify direct R7 entry/return safety. |
| LT-071 | 4 | Direct R2↔R7 ability gate and safe return. |
| LT-072 | 3 | One tide-controlled final switch unlocks ending. |
| LT-074 | 6 | R7 combined short underwater corridor and lighthouse puzzle. |
| LT-075 | 3 | Readable underwater boundary and hazards in R7. |
| LT-077 | 5 | Full five-room playtests; preserve tester target. |
| LT-078 | 4 | Interim evidence for four rooms and bell. |
| LT-082 | 3 | One-time final completion. |
| LT-084 | 4 | Integrate and validate five-room world. |
| LT-085 | 4 | Independent five-room hazard, tide and recovery pass. |
| LT-088 | 7 | Final report with five-room evidence and approved scope. |
| LT-095 | 4 | Five-room final acceptance playthrough. |
| LT-096 | 4 | Fix approved room blockers. |

All retained generic gates, final documentation and release criteria must refer to the approved room count. LT-002 is already completed against the former scope; LT-012/014 record the approved change, not a retroactive completion claim. Inherited calendar conflicts (predecessor dates at or after successor) introduced by this scenario:

LT-062 → LT-063

## Three-room revised acceptance and exclusions

Deferred IDs: LT-021, LT-022, LT-030, LT-043, LT-052, LT-053, LT-054, LT-061, LT-063, LT-064, LT-065, LT-069, LT-073, LT-076, LT-080, LT-086. Do not mark these done.

| Task | Revised primary hours | Revised acceptance / output |
|---|---:|---|
| LT-008 | 3 | Map R2/R3/R7; tutorial in hub, bell in R3, direct R7 underwater entry. |
| LT-009 | 3 | Sketch tutorial hub and R3 tide puzzle geometry. |
| LT-012 | 4 | GDD for compact three-room progression. |
| LT-013 | 3 | Expected solution, ability gate and recovery tests. |
| LT-018 | 3 | Safe spawn and reset contracts for three rooms. |
| LT-019 | 5 | R2 hub teaches movement/interact and contains blocked R7 gate. |
| LT-020 | 4 | Compact R3 platform and pickup geometry. |
| LT-024 | 3 | Observe tutorial and first puzzle. |
| LT-031 | 4 | Connect R2↔R3; no R1 scene. |
| LT-034 | 4 | Observe hub and R3 puzzle; preserve tester target. |
| LT-036 | 2 | Review R2/R3 build. |
| LT-037 | 5 | Fixed two-position platform; no dynamic water simulation. |
| LT-041 | 5 | R3 tide lever and platform with bell pickup placeholder. |
| LT-042 | 4 | R2↔R3 playable with hazard/reset; pickup hookup follows. |
| LT-045 | 3 | Specify R3 bell reward and R2↔R7 return, no R4/R5. |
| LT-047 | 3 | Document reset, bell and return cases. |
| LT-048 | 5 | Basic short underwater traversal; no advanced movement. |
| LT-050 | 4 | Single reusable ability/ending gate, no multi-lock system. |
| LT-051 | 3 | Persist bell and puzzle completion flags across returns. |
| LT-055 | 2 | Functional ability-gate feedback. |
| LT-056 | 3 | Demo capture for hub and R3; bell evidence follows. |
| LT-057 | 3 | R2/R3 and bell pickup verified by midterm. |
| LT-059 | 4 | Bell permits simple underwater traversal. |
| LT-060 | 2 | Test short underwater entry. |
| LT-062 | 4 | Bell reward in R3; one hub checkpoint. |
| LT-067 | 3 | Three rooms, both tides, safe returns and recovery. |
| LT-068 | 2 | Three-room placeholder review. |
| LT-070 | 3 | Check entry/return collision safety. |
| LT-071 | 4 | Direct R2↔R7 ability gate and safe return. |
| LT-072 | 2 | Single tide-dependent finale condition. |
| LT-074 | 4 | R7 short underwater entrance and single switch/exit. |
| LT-075 | 2 | Minimum boundary/hazard readability. |
| LT-077 | 4 | Full three-room playtests, preserve tester target or explain constraints. |
| LT-078 | 3 | Interim evidence for hub, R3 and bell. |
| LT-081 | 4 | Fix movement/tide regressions. |
| LT-082 | 2 | Completion trigger once on correct tide condition. |
| LT-083 | 4 | Fix state/return blockers. |
| LT-084 | 3 | Integrate final three-room world. |
| LT-085 | 3 | Independent safety pass of three rooms; both tides and reset. |
| LT-087 | 3 | Minimum ending and interaction feedback. |
| LT-088 | 7 | Final report with three-room evidence and approved scope. |
| LT-093 | 4 | Repeat bell, checkpoint, tide and ending regression cases. |
| LT-095 | 3 | Final three-room acceptance playthrough. |
| LT-096 | 3 | Fix retained level blockers. |
| LT-097 | 3 | Minimum sound and visual prompts. |

All retained generic gates, final documentation and release criteria must refer to the approved room count. LT-002 is already completed against the former scope; LT-012/014 record the approved change, not a retroactive completion claim. Inherited calendar conflicts (predecessor dates at or after successor) introduced by this scenario:

None in the retained predecessor links; weekly calendar and integration feasibility still require re-planning.

## Decision rule

On Dec 4 re-price retained and merged tasks from actual hours, including LT-074 absorbing the underwater entrance and LT-063 absorbing pickup integration. Select an instructor-approved option that meets measured capacity with contingency. Even a favorable aggregate stress margin does not resolve individual or weekly conflicts; re-estimate by owner, reserve review and testing time, and produce a new dated schedule before approving Sprint 1. Do not cut independent safety testing, state persistence, hazard/reset recovery or Windows export. If the three-room option does not fit measured capacity or the instructor rejects reduced room count, negotiate scope or deadline before baselining.
