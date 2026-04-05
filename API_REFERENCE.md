# Public `iso_` Reference

This file only documents globals whose names start with `iso_`.
Everything else in these configs is either a Grid builtin, a local variable, or private config state.

## Callable Functions

### `iso_go(x, y)`

Shared by BU16 and VSN1.

Resets grid discovery and starts a fresh setup pass. The call is ignored unless `x` and `y` match the module's current horizontal and vertical step settings, which prevents stale broadcasts from older settings from retriggering the layout.

Parameters:
- `x`: current horizontal step
- `y`: current vertical step

### `iso_gu(x, y)`

Shared by BU16 and VSN1.

Updates the tracked minimum raw module coordinates during discovery. Each module calls this after reading its physical position so the whole layout can be normalized to a common origin.

Parameters:
- `x`: raw module X position
- `y`: raw module Y position

### `iso_ir()`

Shared by BU16 and VSN1.

Rebuilds `iso_ri` from `module_rotation()`. This is what keeps the musical layout continuous even when a module is rotated.

### `iso_si(x, y, a)`

Shared by BU16 and VSN1.

Sets the current horizontal step, vertical step, and root note, then calls `iso_go(x, y)` to rebuild the layout. The VSN1 uses this to push layout changes to the rest of the grid.

Parameters:
- `x`: new horizontal step
- `y`: new vertical step
- `a`: new root note

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
- `0`: waiting to broadcast a restart
- `1`: collecting module positions
- `2`: normalizing coordinates and scheduling note updates
- `3`: settled

### `iso_gx`

Shared by BU16 and VSN1.

The module's normalized grid X coordinate after discovery.

### `iso_gy`

Shared by BU16 and VSN1.

The module's normalized grid Y coordinate after discovery.

### `iso_min_gx`

Shared by BU16 and VSN1.

The smallest raw module X position seen during the current discovery pass. Used to shift the full layout to a common origin.

### `iso_min_gy`

Shared by BU16 and VSN1.

The smallest raw module Y position seen during the current discovery pass. Used to shift the full layout to a common origin.

### `iso_ri`

Shared by BU16 and VSN1.

Rotation-corrected button index map.

- On BU16, it contains 16 entries.
- On VSN1, it contains 8 entries.

Button timers read from `iso_ri` before calculating note positions, so this table is the link between physical rotation and musical continuity.

### `iso_pg`

VSN1 only.

Current VSN1 encoder target:
- `1`: horizontal step
- `2`: vertical step
- `3`: root note
- `4`: blank screen

## Practical Notes

- `iso_go`, `iso_gu`, `iso_ir`, and `iso_si` are the shared helpers to rely on when extending the grid.
- `iso_e2o`, `iso_o2e`, and `iso_pg` are VSN1 UI helpers.
- `iso_gx`, `iso_gy`, and `iso_ri` are the most useful read-only globals when calculating note positions in custom code.
