-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- disable tab bar
config.enable_tab_bar = false

-- set terminal background opacity
config.window_background_opacity = 0.65

-- configure font
config.font = wezterm.font("JetBrains Mono")
config.font_size = 14
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Mocha"

-- and finally, return the configuration to wezterm
return config
