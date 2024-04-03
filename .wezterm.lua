local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

local scheme = "OneHalfDark"
-- Obtain the definition of that color scheme
local scheme_def = wezterm.color.get_builtin_schemes()[scheme]

config.color_scheme = scheme
config.colors = {
	tab_bar = {
		active_tab = {
			bg_color = scheme_def.background,
			fg_color = scheme_def.foreground,
		},
	},
}

config.font = wezterm.font("Fira Code Nerd Font")

-- config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.window_frame = {}
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.force_reverse_video_cursor = true
config.cursor_blink_rate = 0
config.hide_mouse_cursor_when_typing = true

config.mouse_bindings = {
	-- Ctrl-click will open the link under the mouse cursor
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = wezterm.action.OpenLinkAtMouseCursor,
	},
}

return config
