local wezterm = require 'wezterm'
local config = {}
local window = wezterm.window

-- Appearance
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 16
config.color_scheme = 'Catppuccin Mocha'

local dimmer = {
    brightness = 0.012,
    saturation = 1.0,
    hue = 1.0,
}
config.background = {
    -- This is the deepest/back-most layer. It will be rendered first
    {
        source = {
            File = '/Users/tom/Downloads/nvim.png',
        },
        hsb = dimmer,
        vertical_align = "Bottom",
    },
}

config.initial_rows = 40
config.initial_cols = 160

wezterm.on("gui-startup", function(cmd)
    window:set_position(0, 0)
end)

return config
