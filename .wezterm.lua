local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

local scheme = "OneHalfDark"
-- Obtain the definition of that color scheme
local scheme_def = wezterm.color.get_builtin_schemes()[scheme]

config.color_scheme = scheme
config.colors = {
	-- cursor_fg = "#282c34",
	-- cursor_bg = "#abb2bf",
	tab_bar = {
		active_tab = {
			bg_color = scheme_def.background,
			fg_color = scheme_def.foreground,
		},
	},
}
config.force_reverse_video_cursor = true
config.cursor_blink_rate = 0

config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 14

-- config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- config.window_frame = {}
-- config.window_padding = {
-- 	left = 0,
-- 	right = 0,
-- 	top = 0,
-- 	bottom = 0,
-- }
config.window_padding = {
	bottom = 0,
}

config.mouse_bindings = {
	-- Ctrl-click will open the link under the mouse cursor
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = wezterm.action.OpenLinkAtMouseCursor,
	},
}

-- input lag on wayland
-- config.enable_wayland = false

return config
