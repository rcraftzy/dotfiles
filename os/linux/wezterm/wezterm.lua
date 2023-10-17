local wezterm = require('wezterm')

local config = {
  enable_wayland = true,
  font = wezterm.font({
    family="DankMono Nerd Font",
    harfbuzz_features={"calt=1", "clig=1", "liga=1"},
    weight = 'Medium',
  }),
  font_size = 14,
  -- 11.3
  use_fancy_tab_bar = false,
  enable_tab_bar = false,
  line_height = 1.3
  -- 1.2
  -- hide_tab_bar_if_only_tab = true,
}

config.color_scheme = 'Wombat'
config.window_padding = {
  left = 2,
  right = 1,
  top = 7,
  bottom = 0
}


return config
