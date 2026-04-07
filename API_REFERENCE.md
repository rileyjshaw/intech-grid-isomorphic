# Public `iso_` Reference

This file only documents globals whose names start with `iso_`.
Everything else in these configs is either a Grid builtin, a local variable, or private config state.

## Callable Functions

### `iso_go(x, y, a)`

Shared by BU16 and VSN1.

Applies the given layout parameters and resets grid discovery: clears normalized state, reinits all keys on this module, sets `iso_ss` to `1`, and starts the timer-driven position pass. Every module should use the same `x`, `y`, and `a` after broadcasts so the cluster stays in tune.

Parameters:

- `x`: horizontal step
- `y`: vertical step
- `a`: root note (optional). If omitted or `nil`, `ISO_A` is left unchanged—useful when only `x`/`y` change (e.g. VSN1 encoder on step pages).

### `iso_nj()`

Shared by BU16 and VSN1.

Hot-plug / “new join” hook. Non-leader modules broadcast this (via `immediate_send`) from the timer when `iso_ss == 0` so the hardware leader at grid position `(0, 0)` can broadcast `iso_go` and pull the whole layout back through discovery. While `iso_bt` is true on the leader, `iso_nj` returns immediately so this is a no-op for modules present at boot.

### `iso_gu(x, y)`

Shared by BU16 and VSN1.

Updates the tracked minimum raw module coordinates during discovery. Each module calls this after reading its physical position so the whole layout can be normalized to a common origin.

Parameters:

- `x`: raw module X position
- `y`: raw module Y position

### `iso_ir()`

Shared by BU16 and VSN1.

Rebuilds `iso_ri` from `module_rotation()`. This is what keeps the musical layout continuous even when a module is rotated.

### `iso_e2o(x)`

VSN1 only.

Converts the VSN1 encoder's raw `0..127` value into the signed step values used by the layout UI. The output range is `-13..-1` and `1..13`; zero is skipped.

Parameters:

- `x`: raw encoder value

### `iso_o2e(x)`

VSN1 only.

Converts a signed step value back into the encoder's `0..127` range so the VSN1 can restore and display the current setting.

Parameters:

- `x`: signed step value

## Global State

### `iso_ss`

Shared by BU16 and VSN1.

Setup state for the timer-driven discovery pass:

- `0`: first tick at 100ms. Everyone resolves `iso_ld`. Non-leaders broadcast `iso_nj` (ignored while `iso_bt` is true). Leader starts a 400ms timer. All modules advance to `1`.
- `1`: only the leader reaches this (at ~500ms). Clears `iso_bt`, broadcasts `iso_go` with full tuning. `iso_go` sets `iso_ss` to `2` on every module.
- `2`: collecting module positions
- `3`: normalizing coordinates and scheduling note updates
- `4`: settled

### `iso_gx`

Shared by BU16 and VSN1.

The module's normalized grid X coordinate after discovery.

### `iso_gy`

Shared by BU16 and VSN1.

The module's normalized grid Y coordinate after discovery.

### `iso_mx`

Shared by BU16 and VSN1.

The smallest raw module X position seen during the current discovery pass. Used to shift the full layout to a common origin.

### `iso_my`

Shared by BU16 and VSN1.

The smallest raw module Y position seen during the current discovery pass. Used to shift the full layout to a common origin.

### `iso_ri`

Shared by BU16 and VSN1.

Rotation-corrected button index map.

- On BU16, it contains 16 entries.
- On VSN1, it contains 8 entries.

Button timers read from `iso_ri` before calculating note positions, so this table is the link between physical rotation and musical continuity.

### `iso_ld`

Shared by BU16 and VSN1.

`true` on the hardware leader module at grid position `(0, 0)`, `false` on all others. Set once during init.

### `iso_bt`

Shared by BU16 and VSN1.

Starts `true` on init. The leader clears it to `false` when handling `iso_ss == 0` (first broadcast after the 500ms delay). While `true`, `iso_nj` does nothing so non-leaders’ immediate pings do not trigger `iso_go` before the leader is ready.

### `iso_v`

Shared by BU16 and VSN1.

Velocity enable flag. When `true` (the default), note-on messages send the pressure-sensitive `button_value()` as velocity. When `false`, all note-on messages send `127` (full velocity). Toggled on the VSN1 by pressing the encoder button (element 8).

### `iso_vd`

VSN1 only.

Velocity-display flag. Set to `true` when the encoder button (element 8) toggles `iso_v`, which also starts a 2-second timer on that element. While `true` the LCD draw routine shows "Velocity ON" or "Velocity OFF" instead of the normal encoder page. The element 8 timer callback resets it to `false`.

### `iso_pg`

VSN1 only.

Current VSN1 encoder target:

- `1`: horizontal step
- `2`: vertical step
- `3`: root note
- `4`: blank screen

## Practical Notes

- `iso_go`, `iso_gu`, `iso_ir`, and `iso_nj` are the shared helpers to rely on when extending the grid.
- `iso_e2o`, `iso_o2e`, and `iso_pg` are VSN1 UI helpers.
- `iso_gx`, `iso_gy`, and `iso_ri` are the most useful read-only globals when calculating note positions in custom code.
