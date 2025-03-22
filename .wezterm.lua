-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices-- For example, changing the color scheme:
config.color_scheme = 'Dark+'
config.font = wezterm.font 'Consolas'
config.font_size = 11

-- config.default_prog = { 'C:/WINDOWS/system32/wsl.exe', '-d', 'Ubuntu' }
-- config.default_cwd = '/home/eric'

config.wsl_domains = {
  {
    name = 'WSL :: Ubuntu',
    distribution = 'Ubuntu',
    default_cwd = '/home/eric',
  },
}

config.default_domain = 'WSL :: Ubuntu'

-- and finally, return the configuration to wezterm
return config
