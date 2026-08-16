-- ==============================================================================
-- WezTerm Configuration - Catppuccin Mocha Theme
-- ==============================================================================
local wezterm = require 'wezterm'
local act = wezterm.action

local config = wezterm.config_builder and wezterm.config_builder() or {}

-- Color Scheme
config.color_scheme = 'Catppuccin Mocha'

-- Typography
config.font = wezterm.font_with_fallback({
  { family = 'JetBrainsMono Nerd Font', weight = 'Regular' },
  { family = 'JetBrains Mono', weight = 'Regular' },
  { family = 'Noto Color Emoji' },
})
config.font_size = 12.0
config.line_height = 1.15

-- Window Appearance & Wayland
config.enable_wayland = false
config.window_decorations = 'RESIZE'
config.window_background_opacity = 0.95
config.text_background_opacity = 1.0
config.window_padding = {
  left = 14,
  right = 14,
  top = 12,
  bottom = 10,
}

-- Performance & Rendering (OpenGL default for rock-solid stability)
config.front_end = 'OpenGL'
config.max_fps = 144
config.animation_fps = 60
config.scrollback_lines = 10000
config.enable_scroll_bar = false
config.window_close_confirmation = 'NeverPrompt'

-- Cursor Styling
config.default_cursor_style = 'BlinkingBar'
config.cursor_blink_rate = 600
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'

-- Tab Bar Configuration
config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 32

-- Catppuccin Mocha Tab Bar & UI Colors
config.colors = {
  tab_bar = {
    background = '#11111b',
    active_tab = {
      bg_color = '#cba6f7',
      fg_color = '#11111b',
      intensity = 'Bold',
    },
    inactive_tab = {
      bg_color = '#181825',
      fg_color = '#a6adc8',
    },
    inactive_tab_hover = {
      bg_color = '#313244',
      fg_color = '#cdd6f4',
    },
    new_tab = {
      bg_color = '#181825',
      fg_color = '#a6adc8',
    },
    new_tab_hover = {
      bg_color = '#313244',
      fg_color = '#cdd6f4',
    },
  },
}

-- Keybindings
config.leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = {
  -- Tab Management
  { key = 't', mods = 'CTRL|SHIFT', action = act.SpawnTab 'CurrentPaneDomain' },
  { key = 'w', mods = 'CTRL|SHIFT', action = act.CloseCurrentTab { confirm = false } },
  { key = 'Tab', mods = 'CTRL', action = act.ActivateTabRelative(1) },
  { key = 'Tab', mods = 'CTRL|SHIFT', action = act.ActivateTabRelative(-1) },
  { key = '{', mods = 'CTRL|SHIFT', action = act.ActivateTabRelative(-1) },
  { key = '}', mods = 'CTRL|SHIFT', action = act.ActivateTabRelative(1) },
  { key = '1', mods = 'ALT', action = act.ActivateTab(0) },
  { key = '2', mods = 'ALT', action = act.ActivateTab(1) },
  { key = '3', mods = 'ALT', action = act.ActivateTab(2) },
  { key = '4', mods = 'ALT', action = act.ActivateTab(3) },
  { key = '5', mods = 'ALT', action = act.ActivateTab(4) },

  -- Pane Splitting & Navigation
  { key = '|', mods = 'CTRL|SHIFT', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = '_', mods = 'CTRL|SHIFT', action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
  { key = 'h', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Left' },
  { key = 'l', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Right' },
  { key = 'k', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Up' },
  { key = 'j', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Down' },
  { key = 'x', mods = 'CTRL|SHIFT', action = act.CloseCurrentPane { confirm = false } },
  { key = 'z', mods = 'CTRL|SHIFT', action = act.TogglePaneZoomState },

  -- Zellij Shortcut (Launch Zellij in new tab)
  { key = 'e', mods = 'CTRL|SHIFT', action = act.SpawnCommandInNewTab { args = { 'zellij' } } },

  -- Clipboard & Search
  { key = 'c', mods = 'CTRL|SHIFT', action = act.CopyTo 'Clipboard' },
  { key = 'v', mods = 'CTRL|SHIFT', action = act.PasteFrom 'Clipboard' },
  { key = 'f', mods = 'CTRL|SHIFT', action = act.Search 'CurrentSelectionOrEmptyString' },

  -- Font Size Controls
  { key = '+', mods = 'CTRL|SHIFT', action = act.IncreaseFontSize },
  { key = '_', mods = 'CTRL|SHIFT', action = act.DecreaseFontSize },
  { key = ')', mods = 'CTRL|SHIFT', action = act.ResetFontSize },

  -- Configuration Reload
  { key = 'r', mods = 'CTRL|SHIFT', action = act.ReloadConfiguration },
}

return config
