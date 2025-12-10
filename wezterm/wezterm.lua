-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- list of color schemes i like
local color_schemes = {
	"Catppuccin Mocha",
	"Catppuccin Macchiato",
	"Catppuccin Frappe",
	"Catppuccin Latte",
	"Gruvbox Material (Gogh)",
	"Tokyo Night Storm",
}

-- set the color scheme
config.color_scheme = color_schemes[2]

-- disable tab bar
config.enable_tab_bar = false

-- set terminal background opacity
-- config.window_background_opacity = 0.50
config.window_background_opacity = 0.55

-- fonts stored in fonts directory
config.font_dirs = {
	"fonts",
	"~/.local/share/fonts/",
}

-- configure font
config.font = wezterm.font_with_fallback({
	-- "Meslo LGM Nerd Font Mono",
	"JetBrains Mono",
})
config.font_size = 14
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

-- disable annoying system bell
config.audible_bell = "Disabled"

-- and finally, return the configuration to wezterm
return config
