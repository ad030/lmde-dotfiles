-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- disable tab bar
config.enable_tab_bar = false

-- set terminal background opacity
config.window_background_opacity = 0.60

-- configure font
config.font = wezterm.font("JetBrains Mono")
config.font_size = 14
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

-- set the color scheme
config.color_scheme = "Catppuccin Mocha"

-- disable annoying system bell
config.audible_bell = "Disabled"

-- and finally, return the configuration to wezterm
return config
