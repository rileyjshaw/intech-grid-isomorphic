# Self-Organizing Isomorphic Grid

This turns Intech Grid into a playable modular MIDI instrument.

Install the BU16 config on one or more BU16s, optionally add a VSN1, and connected modules will behave like one seamless note grid. The modules handle the layout themselves; once you’ve installed the configs, you can put your computer away.

## Project

I’ve typically seen Grid modules used for parameter control. Now that it has velocity-sensitive buttons, I thought it would make a nice instrument. The goal here is to make isomorphic controllers easier to try without needing dedicated hardware (eg. Linnstrument).

An isomorphic layout keeps the same chord and scale shapes everywhere on the grid. That makes it approachable for beginners, and familiar for guitar and bass players.

## What It Does

- Sends MIDI note-on and note-off messages, using velocity when the module supports it.
- Lets multiple modules act like one continuous instrument.
- Rebuilds the layout automatically if you connect, unplug, move, or rotate a module.
- Lets a VSN1 change the layout from the hardware.

## Quick Start

1. Install the BU16 config on every BU16 you want to use.
2. Optional: install the VSN1 config on a VSN1.
3. Connect the modules together.
4. Route Grid MIDI to your synth, sampler, or DAW.
5. Play.

## VSN1

The four buttons under the screen select what the encoder changes:

1. Horizontal step
2. Vertical step
3. Root note
4. Clear the screen

The eight main VSN1 buttons still play notes, so it works as part of the grid too.

## Files

- `isomorphic_bu16/01-bu16/page-0.lua`: BU16 config
- `isomorphic_vsn1/01-vsn1l/page-0.lua`: VSN1 config
- [API_REFERENCE.md](API_REFERENCE.md): Public API and developer notes

## Bulk Flashing

The easiest way I could find to flash multiple modules at once is [thorinside/grid-cli](https://github.com/thorinside/grid-cli). Clone that repo, drag in the BU16 config folder, plug in any number of connected BU16 modules, and run:

```bash
npm install
npm run build
node dist/cli.js push ./isomorphic_bu16 --all
```
