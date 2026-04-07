-- grid: page=0

-- grid:event element=0 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(self:element_index(), 1, 0, 2, 3)

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
local vel = iso_v and self:button_value() or 127
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, vel)
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index() + 10, 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=0 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(self:element_index(), 1, 0, 0, 0)

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
local idx_fix = idx + 10
led_color(idx_fix, 1, r, g, b)
led_value(idx_fix, 1, 64)

-- ============================================================

-- grid:event element=1 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(self:element_index(), 1, 0, 2, 3)

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
local vel = iso_v and self:button_value() or 127
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, vel)
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index() + 10, 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=1 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(self:element_index(), 1, 0, 0, 0)

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
local idx_fix = idx + 10
led_color(idx_fix, 1, r, g, b)
led_value(idx_fix, 1, 64)

-- ============================================================

-- grid:event element=2 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(self:element_index(), 1, 0, 2, 3)

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
local vel = iso_v and self:button_value() or 127
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, vel)
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index() + 10, 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=2 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(self:element_index(), 1, 0, 0, 0)

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
local idx_fix = idx + 10
led_color(idx_fix, 1, r, g, b)
led_value(idx_fix, 1, 64)

-- ============================================================

-- grid:event element=3 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(self:element_index(), 1, 0, 2, 3)

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
local vel = iso_v and self:button_value() or 127
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, vel)
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index() + 10, 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=3 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(self:element_index(), 1, 0, 0, 0)

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
local idx_fix = idx + 10
led_color(idx_fix, 1, r, g, b)
led_value(idx_fix, 1, 64)

-- ============================================================

-- grid:event element=4 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(self:element_index(), 1, 0, 2, 3)

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
local vel = iso_v and self:button_value() or 127
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, vel)
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index() + 10, 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=4 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(self:element_index(), 1, 0, 0, 0)

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
local idx_fix = idx + 10
led_color(idx_fix, 1, r, g, b)
led_value(idx_fix, 1, 64)

-- ============================================================

-- grid:event element=5 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(self:element_index(), 1, 0, 2, 3)

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
local vel = iso_v and self:button_value() or 127
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, vel)
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index() + 10, 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=5 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(self:element_index(), 1, 0, 0, 0)

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
local idx_fix = idx + 10
led_color(idx_fix, 1, r, g, b)
led_value(idx_fix, 1, 64)

-- ============================================================

-- grid:event element=6 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(self:element_index(), 1, 0, 2, 3)

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
local vel = iso_v and self:button_value() or 127
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, vel)
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index() + 10, 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=6 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(self:element_index(), 1, 0, 0, 0)

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
local idx_fix = idx + 10
led_color(idx_fix, 1, r, g, b)
led_value(idx_fix, 1, 64)

-- ============================================================

-- grid:event element=7 event=init
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(1, { { -1, -1, -1, 1 } })
self:led_value(1, -1)

-- ------------------------------------------------------------
-- action: Start Animation (glat)
--[[@glat]]
led_animation_phase_rate_type(self:element_index(), 1, 0, 2, 3)

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
local vel = iso_v and self:button_value() or 127
if self:button_state() > 0 then
  midi_send(0, 0x90, self.note_number, vel)
else
  midi_send(0, 0x80, self.note_number, 0)
end

-- ------------------------------------------------------------
-- action: Intensity (glp)
--[[@glp]]
led_value(self:element_index() + 10, 1, math.max(64, self:button_value()))

-- ============================================================

-- grid:event element=7 event=timer
-- action: Stop Animation (glap)
--[[@glap]]
led_animation_phase_rate_type(self:element_index(), 1, 0, 0, 0)

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
local idx_fix = idx + 10
led_color(idx_fix, 1, r, g, b)
led_value(idx_fix, 1, 64)

-- ============================================================

-- grid:event element=8 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(0)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(-1, { { -1, -1, -1, 1 } })
self:led_value(-1, -1)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if self:button_value() > 0 then
  iso_v = not iso_v
  iso_vd = true
  timer_start(self:element_index(), 2000)
  immediate_send(nil, nil, "iso_v=" .. tostring(iso_v))
end

-- ============================================================

-- grid:event element=8 event=timer
-- action: Code Block (cb)
--[[@cb]]
iso_vd = false

-- ============================================================

-- grid:event element=8 event=endless
-- action: Endless Mode (sen)
--[[@sen]]
self:endless_mode(0)
self:endless_velocity(50)
self:endless_min(0)
self:endless_max(127)
self:endless_sensitivity(100)

-- ------------------------------------------------------------
-- action: Simple Color (sglc)
--[[@sglc]]
self:led_color(-1, { { -1, -1, -1, 1 } })
self:led_value(-1, -1)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
if iso_pg == 4 then
  return
end
local val = self:endless_value()
if iso_pg < 3 then
  val = iso_e2o(val)
end
if val == iso_prev then
  return
end
iso_prev = val
if iso_pg == 1 then
  ISO_X = val
elseif iso_pg == 2 then
  ISO_Y = val
elseif iso_pg == 3 then
  ISO_A = val
end
immediate_send(nil, nil, "if iso_go then iso_go(" .. ISO_X .. "," .. ISO_Y .. "," .. ISO_A .. ")end")
iso_go(ISO_X, ISO_Y)

-- ============================================================

-- grid:event element=9 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(0)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
iso_pg = self:element_index() - 8
iso_prev = ISO_X
element[8]:endless_value(iso_o2e(ISO_X))

-- ============================================================

-- grid:event element=10 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(0)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
iso_pg = self:element_index() - 8
iso_prev = ISO_Y
element[8]:endless_value(iso_o2e(ISO_Y))

-- ============================================================

-- grid:event element=11 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(0)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
iso_pg = self:element_index() - 8
iso_prev = ISO_A
element[8]:endless_value(ISO_A)

-- ============================================================

-- grid:event element=12 event=button
-- action: Button Mode (sbc)
--[[@sbc]]
self:button_mode(0)
self:button_min(0)
self:button_max(127)

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
iso_pg = self:element_index() - 8
iso_prev = nil

-- ============================================================

-- grid:event element=13 event=draw
-- action: Code Block (cb)
--[[@cb]]
local function midi_to_label(n)
  local names = { "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B" }
  local note = names[(n % 12) + 1]
  local octave = math.floor(n / 12) - 1
  if octave >= 0 then
    return note .. tostring(octave)
  else
    return note
  end
end
self:draw_rectangle_filled(0, 0, self:screen_width(), self:screen_height(), { 0, 0, 0 })
if iso_vd then
  lcd_set_backlight(200)
  local msg = iso_v and "Velocity ON" or "Velocity OFF"
  self:draw_text_fast(msg, 20 + (iso_v and 10 or 0), 108, 20, { 255, 22, 22 })
else
  local val = element[8]:endless_value()
  local label = ""
  if iso_pg < 3 then
    val = (val * 24 + 63) // 127 - 12
  end
  if iso_pg == 1 then
    val = ISO_X
    label = "X"
  elseif iso_pg == 2 then
    val = ISO_Y
    label = "Y"
  elseif iso_pg == 3 then
    val = ISO_A
    label = midi_to_label(val)
  end
  if iso_pg == 4 then
    lcd_set_backlight(0)
  else
    lcd_set_backlight(200)
    self:draw_text_fast(label, 0, 12, 100, { 255, 22, 22 })
    self:draw_text_fast(val, 0, 120, 108, { 255, 22, 22 })
  end
end
self:draw_swap()

-- ============================================================

-- grid:event element=255 event=init
-- action: Global (g)
--[[@g]]
ISO_X, ISO_Y, ISO_A = 2, 5, 42

-- ------------------------------------------------------------
-- action: Code Block (cb)
--[[@cb]]
iso_ri = {}
iso_pg = 4
iso_ss = 0
iso_gx = 0
iso_gy = 0
iso_mx = 0
iso_my = 0
iso_bt = true
iso_ld = false
iso_prev = nil
iso_v = true
iso_vd = false

function iso_e2o(x)
  return (x < 64) and ((x * 12) // 64 - 12) or ((x - 64) * 12 // 64 + 1)
end
function iso_o2e(x)
  return (x < 0) and ((x + 12) * 64 + 32) // 12 or (64 + ((x - 1) * 64 + 32) // 12)
end
function iso_go(x, y, a, v)
  ISO_X = x
  ISO_Y = y
  if a ~= nil then
    ISO_A = a
  end
  if v ~= nil then
    iso_v = v
  end
  for i = 0, 7 do
    timer_stop(i)
  end
  iso_gx = module_position_x()
  iso_gy = module_position_y()
  iso_mx = 0
  iso_my = 0
  iso_ir()
  for i = 0, 7 do
    element[i]:ini()
  end
  iso_ss = 2
  timer_stop(self:element_index())
  timer_start(self:element_index(), 30)
end

function iso_gu(x, y)
  iso_mx, iso_my = math.min(x, iso_mx), math.min(y, iso_my)
end
function iso_nj()
  if iso_ld and not iso_bt then
    immediate_send(nil, nil, "if iso_go then iso_go(" .. ISO_X .. "," .. ISO_Y .. "," .. ISO_A .. "," .. tostring(iso_v) .. ")end")
    iso_go(ISO_X, ISO_Y, ISO_A)
  end
end

timer_start(self:element_index(), 100)

-- ============================================================

-- grid:event element=255 event=timer
-- action: Code Block (cb)
--[[@cb]]
function iso_ir()
  local r = module_rotation()
  for i = 0, 7 do
    local x, y = (i + 8) % 4, (i + 8) // 4
    if r == 1 then
      x, y = 3 - y, x
    elseif r == 2 then
      x, y = 3 - x, 3 - y
    elseif r == 3 then
      x, y = y, 3 - x
    end
    iso_ri[i] = y * 4 + x
  end
end
if iso_ss == 0 then
  iso_gx = module_position_x()
  iso_gy = module_position_y()
  iso_ld = iso_gx == 0 and iso_gy == 0
  if iso_ld then
    iso_ss = iso_ss + 1
    timer_start(self:element_index(), 400)
  else
    immediate_send(nil, nil, "if iso_nj then iso_nj()end")
  end
elseif iso_ss == 1 then
  iso_bt = false
  immediate_send(nil, nil, "if iso_go then iso_go(" .. ISO_X .. "," .. ISO_Y .. "," .. ISO_A .. "," .. tostring(iso_v) .. ")end")
  iso_go(ISO_X, ISO_Y, ISO_A)
elseif iso_ss == 2 then
  immediate_send(nil, nil, "if iso_gu then iso_gu(" .. iso_gx .. "," .. iso_gy .. ")end")
  iso_ss = iso_ss + 1
  timer_start(self:element_index(), 30)
elseif iso_ss == 3 then
  iso_ss = iso_ss + 1
  iso_gx = iso_gx - iso_mx
  iso_gy = iso_gy - iso_my
  for i = 0, 7 do
    local r = iso_ri[i]
    local x, y = r % 4 + iso_gx * 4, 3 - r // 4 + iso_gy * 4
    local t = (1 + x + y * 4) * 30
    timer_start(i, t)
  end
end
