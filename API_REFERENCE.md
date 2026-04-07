# Public `iso_` Reference

Globals whose names start with `iso_`. Everything else is a Grid builtin, a local, or private config state.

## Functions

### `iso_go(x, y[, a][, v])` — "go" (apply layout and go through discovery)

Applies layout parameters and reruns grid discovery. All modules should receive the same values so the cluster stays in tune.

- `x`: horizontal step
- `y`: vertical step
- `a`: root note. `nil` leaves `ISO_A` unchanged.
- `v`: velocity enable flag. `nil` leaves `iso_v` unchanged.

### `iso_nj()` — "notify join"

Hot-plug hook. Non-leader modules broadcast this so the leader can respond with `iso_go` and pull the new module through discovery.

### `iso_gu(x, y)` — "grid update" (min position)

Tracks the minimum raw module position during discovery so the layout can be normalized to a common origin.

### `iso_ir()` — "index rotation"

Rebuilds the rotation-corrected button index map (`iso_ri`) from `module_rotation()`.

### `iso_e2o(x)` / `iso_o2e(x)` — "encoder to offset" / "offset to encoder"

VSN1 only. Convert between the encoder's `0..127` range and signed step values.

## State

### `iso_ss` — "setup step"

Discovery state machine: `0` init, `1` leader broadcast, `2` collecting positions, `3` normalizing, `4` settled.

### `iso_gx` / `iso_gy` — "grid x/y"

Normalized grid coordinates for this module after discovery.

### `iso_mx` / `iso_my` — "min x/y"

Minimum raw module position seen during the current discovery pass.

### `iso_ri` — "rotation index"

Rotation-corrected button index map (16 entries on BU16, 8 on VSN1).

### `iso_ld` — "leader"

`true` on the leader module at grid position `(0, 0)`.

### `iso_bt` — "boot"

Boot guard. `true` until the leader's first broadcast, prevents premature `iso_nj` handling.

### `iso_v` — "velocity"

Velocity enable. `true` sends pressure-sensitive velocity, `false` sends 127.

### `iso_vd` — "velocity display"

VSN1 only. Temporarily `true` while the LCD shows the velocity toggle confirmation.

### `iso_pg` — "page"

VSN1 only. Current encoder page: `1` X step, `2` Y step, `3` root note, `4` off.
