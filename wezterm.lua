local wezterm = require("wezterm")
local config = wezterm.config_builder()
local mux = wezterm.mux

-- Settings
config.font = wezterm.font("JetBrainsMono NF", { weight = "Bold" })
config.color_scheme = "Catppuccin Mocha"
-- config.color_scheme = "gruvbox_material_dark_hard"
config.color_schemes = {
	["gruvbox_material_dark_hard"] = {
		foreground = "#D4BE98",
		background = "#000000",
		cursor_bg = "#D4BE98",
		cursor_border = "#D4BE98",
		cursor_fg = "#1D2021",
		selection_bg = "#D4BE98",
		selection_fg = "#3C3836",

		ansi = { "#1d2021", "#ea6962", "#a9b665", "#d8a657", "#7daea3", "#d3869b", "#89b482", "#d4be98" },
		brights = { "#eddeb5", "#ea6962", "#a9b665", "#d8a657", "#7daea3", "#d3869b", "#89b482", "#d4be98" },
	},
}
-- config.window_background_opacity = 0.8
-- config.win32_system_backdrop = "Disable"
config.front_end = "OpenGL"
config.default_prog = { "pwsh.exe" }
config.default_cwd = "C:/Users/thesa"
config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.allow_win32_input_mode = true
config.hide_tab_bar_if_only_one_tab = false
config.show_new_tab_button_in_tab_bar = false
config.font_size = 10
config.enable_scroll_bar = false
config.tab_max_width = 48
config.window_padding = {
	left = 0,
	right = 0,
	top = "0.25cell",
	-- top = 1,
	bottom = 0,
}

config.keys = {
	{
		key = "l",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ShowLauncher,
	},
	{
		key = "Backspace",
		mods = "CTRL",
		action = wezterm.action.SendString("\x17"),
	},
	{
		key = "w",
		mods = "ALT",
		action = wezterm.action.CloseCurrentTab({ confirm = true }),
	},
	{
		key = '"',
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitHorizontal,
	},
	{
		key = "%",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitVertical,
	},
	{
		key = "+",
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Up", 5 }),
	},
	{
		key = "-",
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Down", 5 }),
	},
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "j",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "l",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{ key = "1", mods = "CTRL", action = wezterm.action.ActivateTab(0) },
	{ key = "2", mods = "CTRL", action = wezterm.action.ActivateTab(1) },
	{ key = "3", mods = "CTRL", action = wezterm.action.ActivateTab(2) },
	{ key = "4", mods = "CTRL", action = wezterm.action.ActivateTab(3) },
	{ key = "5", mods = "CTRL", action = wezterm.action.ActivateTab(4) },
	{ key = "6", mods = "CTRL", action = wezterm.action.ActivateTab(5) },
	{ key = "7", mods = "CTRL", action = wezterm.action.ActivateTab(6) },
	{ key = "8", mods = "CTRL", action = wezterm.action.ActivateTab(7) },
	{ key = "9", mods = "CTRL", action = wezterm.action.ActivateTab(-1) },
}

-- Launch menu for right-click on tab bar or `Ctrl+Shift+L`
config.launch_menu = {
	{
		label = "PowerShell 7",
		args = { "pwsh.exe", "-NoLogo" },
	},
	{
		label = "Git Bash",
		args = { "C:\\Program Files\\Git\\bin\\bash.exe", "--login", "-i" },
	},
	{
		label = "WSL - Ubuntu",
		args = { "wsl.exe", "-d", "Ubuntu" }, -- change name if you use another distro
	},
}

return config
