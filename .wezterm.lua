-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
config.font_size = 15

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_background_opacity = 1

config.colors = {
	foreground = "#BDBFCB",
	background = "#060914",
	cursor_bg = "#C6DFEC",
	cursor_border = "#C6DFEC",
	cursor_fg = "#1D202B",
	selection_bg = "#C6DFEC",
	selection_fg = "#1D202B",
	ansi = { "#0C0F1A", "#F05C60", "#80AA6E", "#BA9A5E", "#597BC0", "#B4647F", "#A188C3", "#7AA8A7" },
	brights = { "#656771", "#F47171", "#9CB67D", "#D6B476", "#788AD3", "#DA72A2", "#958EBE", "#85C7B8" },
}

-- config.macos_window_background_blur = 10

-- and finally, return the configuration to wezterm
return config
