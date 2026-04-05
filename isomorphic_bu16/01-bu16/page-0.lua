-- grid: page=0

-- grid:event element=0 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 2, 3)

-- ============================================================

-- grid:event element=0 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(-1)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, self:button_value())
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index(), 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=0 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 0, 0)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
local idx = self:element_index()
local ri = iso_ri[idx]
local local_x = ri % 4
local local_y = 3 - math.floor(ri / 4)
local x = (iso_gx * 4) + local_x
local y = (iso_gy * 4) + local_y
self.note_number = math.max(0, math.min(127, ISO_A + x * ISO_X + y * ISO_Y))
local r, g, b = table.unpack(({ { 255, 0, 0 }, { 255, 128, 0 }, { 255, 255, 0 }, { 128, 255, 0 }, { 0, 255, 0 }, { 0, 255, 128 }, { 0, 255, 255 }, { 0, 128, 255 }, { 255, 0, 255 }, { 128, 0, 255 }, { 200, 200, 200 }, { 255, 0, 128 } })[(self.note_number % 12) + 1])
led_color(idx, 1, r, g, b)
led_value(idx, 1, 64)

-- ============================================================

-- grid:event element=1 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 2, 3)

-- ============================================================

-- grid:event element=1 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(-1)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, self:button_value())
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index(), 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=1 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 0, 0)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
local idx = self:element_index()
local ri = iso_ri[idx]
local local_x = ri % 4
local local_y = 3 - math.floor(ri / 4)
local x = (iso_gx * 4) + local_x
local y = (iso_gy * 4) + local_y
self.note_number = math.max(0, math.min(127, ISO_A + x * ISO_X + y * ISO_Y))
local r, g, b = table.unpack(({ { 255, 0, 0 }, { 255, 128, 0 }, { 255, 255, 0 }, { 128, 255, 0 }, { 0, 255, 0 }, { 0, 255, 128 }, { 0, 255, 255 }, { 0, 128, 255 }, { 255, 0, 255 }, { 128, 0, 255 }, { 200, 200, 200 }, { 255, 0, 128 } })[(self.note_number % 12) + 1])
led_color(idx, 1, r, g, b)
led_value(idx, 1, 64)

-- ============================================================

-- grid:event element=2 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 2, 3)

-- ============================================================

-- grid:event element=2 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(-1)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, self:button_value())
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index(), 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=2 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 0, 0)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
local idx = self:element_index()
local ri = iso_ri[idx]
local local_x = ri % 4
local local_y = 3 - math.floor(ri / 4)
local x = (iso_gx * 4) + local_x
local y = (iso_gy * 4) + local_y
self.note_number = math.max(0, math.min(127, ISO_A + x * ISO_X + y * ISO_Y))
local r, g, b = table.unpack(({ { 255, 0, 0 }, { 255, 128, 0 }, { 255, 255, 0 }, { 128, 255, 0 }, { 0, 255, 0 }, { 0, 255, 128 }, { 0, 255, 255 }, { 0, 128, 255 }, { 255, 0, 255 }, { 128, 0, 255 }, { 200, 200, 200 }, { 255, 0, 128 } })[(self.note_number % 12) + 1])
led_color(idx, 1, r, g, b)
led_value(idx, 1, 64)

-- ============================================================

-- grid:event element=3 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 2, 3)

-- ============================================================

-- grid:event element=3 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(-1)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, self:button_value())
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index(), 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=3 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 0, 0)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
local idx = self:element_index()
local ri = iso_ri[idx]
local local_x = ri % 4
local local_y = 3 - math.floor(ri / 4)
local x = (iso_gx * 4) + local_x
local y = (iso_gy * 4) + local_y
self.note_number = math.max(0, math.min(127, ISO_A + x * ISO_X + y * ISO_Y))
local r, g, b = table.unpack(({ { 255, 0, 0 }, { 255, 128, 0 }, { 255, 255, 0 }, { 128, 255, 0 }, { 0, 255, 0 }, { 0, 255, 128 }, { 0, 255, 255 }, { 0, 128, 255 }, { 255, 0, 255 }, { 128, 0, 255 }, { 200, 200, 200 }, { 255, 0, 128 } })[(self.note_number % 12) + 1])
led_color(idx, 1, r, g, b)
led_value(idx, 1, 64)

-- ============================================================

-- grid:event element=4 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 2, 3)

-- ============================================================

-- grid:event element=4 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(-1)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, self:button_value())
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index(), 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=4 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 0, 0)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
local idx = self:element_index()
local ri = iso_ri[idx]
local local_x = ri % 4
local local_y = 3 - math.floor(ri / 4)
local x = (iso_gx * 4) + local_x
local y = (iso_gy * 4) + local_y
self.note_number = math.max(0, math.min(127, ISO_A + x * ISO_X + y * ISO_Y))
local r, g, b = table.unpack(({ { 255, 0, 0 }, { 255, 128, 0 }, { 255, 255, 0 }, { 128, 255, 0 }, { 0, 255, 0 }, { 0, 255, 128 }, { 0, 255, 255 }, { 0, 128, 255 }, { 255, 0, 255 }, { 128, 0, 255 }, { 200, 200, 200 }, { 255, 0, 128 } })[(self.note_number % 12) + 1])
led_color(idx, 1, r, g, b)
led_value(idx, 1, 64)

-- ============================================================

-- grid:event element=5 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 2, 3)

-- ============================================================

-- grid:event element=5 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(-1)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, self:button_value())
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index(), 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=5 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 0, 0)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
local idx = self:element_index()
local ri = iso_ri[idx]
local local_x = ri % 4
local local_y = 3 - math.floor(ri / 4)
local x = (iso_gx * 4) + local_x
local y = (iso_gy * 4) + local_y
self.note_number = math.max(0, math.min(127, ISO_A + x * ISO_X + y * ISO_Y))
local r, g, b = table.unpack(({ { 255, 0, 0 }, { 255, 128, 0 }, { 255, 255, 0 }, { 128, 255, 0 }, { 0, 255, 0 }, { 0, 255, 128 }, { 0, 255, 255 }, { 0, 128, 255 }, { 255, 0, 255 }, { 128, 0, 255 }, { 200, 200, 200 }, { 255, 0, 128 } })[(self.note_number % 12) + 1])
led_color(idx, 1, r, g, b)
led_value(idx, 1, 64)

-- ============================================================

-- grid:event element=6 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 2, 3)

-- ============================================================

-- grid:event element=6 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(-1)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, self:button_value())
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index(), 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=6 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 0, 0)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
local idx = self:element_index()
local ri = iso_ri[idx]
local local_x = ri % 4
local local_y = 3 - math.floor(ri / 4)
local x = (iso_gx * 4) + local_x
local y = (iso_gy * 4) + local_y
self.note_number = math.max(0, math.min(127, ISO_A + x * ISO_X + y * ISO_Y))
local r, g, b = table.unpack(({ { 255, 0, 0 }, { 255, 128, 0 }, { 255, 255, 0 }, { 128, 255, 0 }, { 0, 255, 0 }, { 0, 255, 128 }, { 0, 255, 255 }, { 0, 128, 255 }, { 255, 0, 255 }, { 128, 0, 255 }, { 200, 200, 200 }, { 255, 0, 128 } })[(self.note_number % 12) + 1])
led_color(idx, 1, r, g, b)
led_value(idx, 1, 64)

-- ============================================================

-- grid:event element=7 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 2, 3)

-- ============================================================

-- grid:event element=7 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(-1)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, self:button_value())
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index(), 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=7 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 0, 0)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
local idx = self:element_index()
local ri = iso_ri[idx]
local local_x = ri % 4
local local_y = 3 - math.floor(ri / 4)
local x = (iso_gx * 4) + local_x
local y = (iso_gy * 4) + local_y
self.note_number = math.max(0, math.min(127, ISO_A + x * ISO_X + y * ISO_Y))
local r, g, b = table.unpack(({ { 255, 0, 0 }, { 255, 128, 0 }, { 255, 255, 0 }, { 128, 255, 0 }, { 0, 255, 0 }, { 0, 255, 128 }, { 0, 255, 255 }, { 0, 128, 255 }, { 255, 0, 255 }, { 128, 0, 255 }, { 200, 200, 200 }, { 255, 0, 128 } })[(self.note_number % 12) + 1])
led_color(idx, 1, r, g, b)
led_value(idx, 1, 64)

-- ============================================================

-- grid:event element=8 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 2, 3)

-- ============================================================

-- grid:event element=8 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(-1)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, self:button_value())
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index(), 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=8 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 0, 0)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
local idx = self:element_index()
local ri = iso_ri[idx]
local local_x = ri % 4
local local_y = 3 - math.floor(ri / 4)
local x = (iso_gx * 4) + local_x
local y = (iso_gy * 4) + local_y
self.note_number = math.max(0, math.min(127, ISO_A + x * ISO_X + y * ISO_Y))
local r, g, b = table.unpack(({ { 255, 0, 0 }, { 255, 128, 0 }, { 255, 255, 0 }, { 128, 255, 0 }, { 0, 255, 0 }, { 0, 255, 128 }, { 0, 255, 255 }, { 0, 128, 255 }, { 255, 0, 255 }, { 128, 0, 255 }, { 200, 200, 200 }, { 255, 0, 128 } })[(self.note_number % 12) + 1])
led_color(idx, 1, r, g, b)
led_value(idx, 1, 64)

-- ============================================================

-- grid:event element=9 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 2, 3)

-- ============================================================

-- grid:event element=9 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(-1)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, self:button_value())
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index(), 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=9 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 0, 0)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
local idx = self:element_index()
local ri = iso_ri[idx]
local local_x = ri % 4
local local_y = 3 - math.floor(ri / 4)
local x = (iso_gx * 4) + local_x
local y = (iso_gy * 4) + local_y
self.note_number = math.max(0, math.min(127, ISO_A + x * ISO_X + y * ISO_Y))
local r, g, b = table.unpack(({ { 255, 0, 0 }, { 255, 128, 0 }, { 255, 255, 0 }, { 128, 255, 0 }, { 0, 255, 0 }, { 0, 255, 128 }, { 0, 255, 255 }, { 0, 128, 255 }, { 255, 0, 255 }, { 128, 0, 255 }, { 200, 200, 200 }, { 255, 0, 128 } })[(self.note_number % 12) + 1])
led_color(idx, 1, r, g, b)
led_value(idx, 1, 64)

-- ============================================================

-- grid:event element=10 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 2, 3)

-- ============================================================

-- grid:event element=10 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(-1)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, self:button_value())
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index(), 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=10 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 0, 0)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
local idx = self:element_index()
local ri = iso_ri[idx]
local local_x = ri % 4
local local_y = 3 - math.floor(ri / 4)
local x = (iso_gx * 4) + local_x
local y = (iso_gy * 4) + local_y
self.note_number = math.max(0, math.min(127, ISO_A + x * ISO_X + y * ISO_Y))
local r, g, b = table.unpack(({ { 255, 0, 0 }, { 255, 128, 0 }, { 255, 255, 0 }, { 128, 255, 0 }, { 0, 255, 0 }, { 0, 255, 128 }, { 0, 255, 255 }, { 0, 128, 255 }, { 255, 0, 255 }, { 128, 0, 255 }, { 200, 200, 200 }, { 255, 0, 128 } })[(self.note_number % 12) + 1])
led_color(idx, 1, r, g, b)
led_value(idx, 1, 64)

-- ============================================================

-- grid:event element=11 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 2, 3)

-- ============================================================

-- grid:event element=11 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(-1)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, self:button_value())
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index(), 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=11 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 0, 0)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
local idx = self:element_index()
local ri = iso_ri[idx]
local local_x = ri % 4
local local_y = 3 - math.floor(ri / 4)
local x = (iso_gx * 4) + local_x
local y = (iso_gy * 4) + local_y
self.note_number = math.max(0, math.min(127, ISO_A + x * ISO_X + y * ISO_Y))
local r, g, b = table.unpack(({ { 255, 0, 0 }, { 255, 128, 0 }, { 255, 255, 0 }, { 128, 255, 0 }, { 0, 255, 0 }, { 0, 255, 128 }, { 0, 255, 255 }, { 0, 128, 255 }, { 255, 0, 255 }, { 128, 0, 255 }, { 200, 200, 200 }, { 255, 0, 128 } })[(self.note_number % 12) + 1])
led_color(idx, 1, r, g, b)
led_value(idx, 1, 64)

-- ============================================================

-- grid:event element=12 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 2, 3)

-- ============================================================

-- grid:event element=12 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(-1)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, self:button_value())
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index(), 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=12 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 0, 0)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
local idx = self:element_index()
local ri = iso_ri[idx]
local local_x = ri % 4
local local_y = 3 - math.floor(ri / 4)
local x = (iso_gx * 4) + local_x
local y = (iso_gy * 4) + local_y
self.note_number = math.max(0, math.min(127, ISO_A + x * ISO_X + y * ISO_Y))
local r, g, b = table.unpack(({ { 255, 0, 0 }, { 255, 128, 0 }, { 255, 255, 0 }, { 128, 255, 0 }, { 0, 255, 0 }, { 0, 255, 128 }, { 0, 255, 255 }, { 0, 128, 255 }, { 255, 0, 255 }, { 128, 0, 255 }, { 200, 200, 200 }, { 255, 0, 128 } })[(self.note_number % 12) + 1])
led_color(idx, 1, r, g, b)
led_value(idx, 1, 64)

-- ============================================================

-- grid:event element=13 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 2, 3)

-- ============================================================

-- grid:event element=13 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(-1)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, self:button_value())
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index(), 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=13 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 0, 0)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
local idx = self:element_index()
local ri = iso_ri[idx]
local local_x = ri % 4
local local_y = 3 - math.floor(ri / 4)
local x = (iso_gx * 4) + local_x
local y = (iso_gy * 4) + local_y
self.note_number = math.max(0, math.min(127, ISO_A + x * ISO_X + y * ISO_Y))
local r, g, b = table.unpack(({ { 255, 0, 0 }, { 255, 128, 0 }, { 255, 255, 0 }, { 128, 255, 0 }, { 0, 255, 0 }, { 0, 255, 128 }, { 0, 255, 255 }, { 0, 128, 255 }, { 255, 0, 255 }, { 128, 0, 255 }, { 200, 200, 200 }, { 255, 0, 128 } })[(self.note_number % 12) + 1])
led_color(idx, 1, r, g, b)
led_value(idx, 1, 64)

-- ============================================================

-- grid:event element=14 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 2, 3)

-- ============================================================

-- grid:event element=14 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(-1)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, self:button_value())
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index(), 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=14 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 0, 0)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
local idx = self:element_index()
local ri = iso_ri[idx]
local local_x = ri % 4
local local_y = 3 - math.floor(ri / 4)
local x = (iso_gx * 4) + local_x
local y = (iso_gy * 4) + local_y
self.note_number = math.max(0, math.min(127, ISO_A + x * ISO_X + y * ISO_Y))
local r, g, b = table.unpack(({ { 255, 0, 0 }, { 255, 128, 0 }, { 255, 255, 0 }, { 128, 255, 0 }, { 0, 255, 0 }, { 0, 255, 128 }, { 0, 255, 255 }, { 0, 128, 255 }, { 255, 0, 255 }, { 128, 0, 255 }, { 200, 200, 200 }, { 255, 0, 128 } })[(self.note_number % 12) + 1])
led_color(idx, 1, r, g, b)
led_value(idx, 1, 64)

-- ============================================================

-- grid:event element=15 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 2, 3)

-- ============================================================

-- grid:event element=15 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(-1)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, self:button_value())
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index(), 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=15 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(iso_ri[self:element_index()], 1, 0, 0, 0)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
local idx = self:element_index()
local ri = iso_ri[idx]
local local_x = ri % 4
local local_y = 3 - math.floor(ri / 4)
local x = (iso_gx * 4) + local_x
local y = (iso_gy * 4) + local_y
self.note_number = math.max(0, math.min(127, ISO_A + x * ISO_X + y * ISO_Y))
local r, g, b = table.unpack(({ { 255, 0, 0 }, { 255, 128, 0 }, { 255, 255, 0 }, { 128, 255, 0 }, { 0, 255, 0 }, { 0, 255, 128 }, { 0, 255, 255 }, { 0, 128, 255 }, { 255, 0, 255 }, { 128, 0, 255 }, { 200, 200, 200 }, { 255, 0, 128 } })[(self.note_number % 12) + 1])
led_color(idx, 1, r, g, b)
led_value(idx, 1, 64)

-- ============================================================

-- grid:event element=255 event=init
-- action: Comment Block (c)
--[[@c]]
--[[Standard spacing for bass,guitar,Linnstrument,etc. Adjust for different layouts.]]

-- ------------------------------------------------------------
-- action: Global (g)
--[[@g]]
ISO_X, ISO_Y, ISO_A = 2, 5, 42

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
iso_ri = {}
function iso_ir()
  local r = module_rotation()
  for i = 0, 15 do
    local x = i % 4
    local y = math.floor(i / 4)
    local rx, ry
    if r == 0 then
      rx, ry = x, y
    elseif r == 1 then
      rx = 3 - y
      ry = x
    elseif r == 2 then
      rx = 3 - x
      ry = 3 - y
    else
      rx = y
      ry = 3 - x
    end
    iso_ri[i] = ry * 4 + rx
  end
end

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
iso_ss = 0
iso_gx = 0
iso_gy = 0
iso_min_gx = 0
iso_min_gy = 0
function min(a, b)
  return a < b and a or b
end
function iso_go(x, y)
  if x ~= ISO_X or y ~= ISO_Y then
    return
  end
  iso_gx = 0
  iso_gy = 0
  iso_min_gx = 0
  iso_min_gy = 0
  for i = 0, 15 do
    element[i]:ini()
  end
  iso_ss = 1
  timer_stop(self:element_index())
  timer_start(self:element_index(), 30)
end
function iso_gu(x, y)
  iso_min_gx = min(x, iso_min_gx)
  iso_min_gy = min(y, iso_min_gy)
end
function iso_si(x, y, a)
  ISO_X = x
  ISO_Y = y
  ISO_A = a
  iso_go(x, y)
end
timer_start(self:element_index(), 500)

-- ============================================================

-- grid:event element=255 event=timer
-- action: Code Block (cb)
--[[@cb]]
if iso_ss == 0 then
  immediate_send(nil, nil, "if iso_go then iso_go(" .. ISO_X .. "," .. ISO_Y .. ")end")
elseif iso_ss == 1 then
  iso_gx = module_position_x()
  iso_gy = module_position_y()
  immediate_send(nil, nil, "if iso_gu then iso_gu(" .. iso_gx .. "," .. iso_gy .. ")end")
  iso_ss = iso_ss + 1
  timer_start(self:element_index(), 30)
elseif iso_ss == 2 then
  iso_gx = iso_gx - iso_min_gx
  iso_gy = iso_gy - iso_min_gy
  iso_ir()
  for i = 0, 15 do
    local ri = iso_ri[i]
    local x = ri % 4 + iso_gx * 4
    local y = 3 - math.floor(ri / 4) + iso_gy * 4
    local delay = (1 + x + y * 4) * 30
    timer_start(i, delay)
  end
  iso_ss = iso_ss + 1
end
