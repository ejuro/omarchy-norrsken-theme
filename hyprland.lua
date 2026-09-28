-- Norrsken: frosted-glass terminals, hairline gradient edges and a soft glow
-- on the focused window.
--
-- Omarchy does not load this file for themes installed with
-- `omarchy theme install`, because Lua runs code. It applies only to a theme
-- you link or copy into ~/.config/omarchy/themes yourself. See the README.

local active_border_color = { colors = { "rgba(5dffb0ee)", "rgba(9d8cffcc)" }, angle = 45 }
local inactive_border_color = "rgba(ffffff1a)"

hl.config({
  general = {
    gaps_in = 8,
    gaps_out = 16,
    border_size = 1,
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },

  decoration = {
    rounding = 16,
    active_opacity = 1.0,
    inactive_opacity = 1.0,
    -- the "glow": a coloured shadow on the focused window only
    shadow = {
      enabled = true,
      range = 9,
      render_power = 3,
      color = "rgba(5dffb040)",
      color_inactive = "rgba(00000055)",
    },
    -- frosted glass behind translucent windows
    blur = {
      enabled = true,
      size = 10,
      passes = 3,
      new_optimizations = true,
      xray = false,
      contrast = 0.9,
      brightness = 0.75,
      noise = 0.02,
      vibrancy = 0.3,
      vibrancy_darkness = 0.2,
      special = true,
    },
  },
})

-- Terminals, the Omarchy agent and About windows, Omawrite and Flea become
-- glass panes; everything else stays opaque for readability.
hl.window_rule({
  match = { class = "^(com.mitchellh.ghostty|Alacritty|kitty|foot|org.omarchy.about|org.omarchy.agent|omawrite|com.thisisgm.flea)$" },
  tag = "-default-opacity",
  opacity = "0.84 override 0.76 override",
})
