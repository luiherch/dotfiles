local wezterm = require "wezterm"

-- This table will hold the configuration.
local config = {}

-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.audible_bell = "SystemBeep"

-- Fonts Settings
-- config.colors = {
    -- foreground = "#d9fa02",
-- }
config.color_scheme = "catppuccin-macchiato"
config.font = wezterm.font_with_fallback({
		{
			family = "JetBrainsMonoNL Nerd Font",
			weight = "Regular",
			-- stretch = "Expanded",
			italic = false,
		}, })
config.font = wezterm.font('JetBrainsMonoNL Nerd Font', { weight = 'Bold' })

config.default_domain = 'WSL:Ubuntu-20.04'
config.font_size = 13
config.window_background_opacity = 0.95
config.window_decorations = "RESIZE"
config.scrollback_lines = 100000
config.enable_scroll_bar = true
config.enable_tab_bar = true
config.tab_bar_at_bottom = false
config.show_tabs_in_tab_bar = true

-- Initial Windows
config.initial_rows = 27
config.initial_cols = 93

require('events.right-status').setup()
require('events.tab-title').setup()
require('events.new-tab-button').setup()

return config