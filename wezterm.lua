local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Settings
config.font = wezterm.font("JetBrainsMono NF", { weight = "Bold" })
config.color_scheme = "Catppuccin Mocha"
config.default_prog = { "pwsh.exe", "-NoLogo" }
config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = true
config.allow_win32_input_mode = true
config.hide_tab_bar_if_only_one_tab = true
config.font_size = 10
config.enable_scroll_bar = false
config.window_padding = {
	left = 5,
	right = 0,
	top = 10,
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

-- config.window_background_opacity = 1.0
-- config.win32_system_backdrop = "Acrylic"
-- config["colors"] = {
-- 	background = "black",
-- }

return config
