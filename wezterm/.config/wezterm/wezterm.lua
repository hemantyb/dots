local wezterm = require("wezterm")
local config = {

	initial_cols = 118,
	initial_rows = 27,

	font_size = 14,
	font = wezterm.font("FiraCode Nerd Font"),
	window_decorations = "TITLE | RESIZE",
	color_scheme = "GitHub Dark",
	window_background_opacity = 0.4,
	kde_window_background_blur = true,
	window_padding = {
		left = 1,
		right = 0,
		top = 0,
		bottom = 0,
	},
}

local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
bar.apply_to_config(config, {
	modules = {
		username = {
			enabled = false,
		},
		hostname = {
			enabled = false,
		},
		workspace = {
			enabled = false,
		},
	},
})

return config
