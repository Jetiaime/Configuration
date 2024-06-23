local wezterm = require('wezterm')
local gpu_adapters = require('utils.gpu_adapter')
local colors = require('colors.custom')

return {
    animation_fps = 60,
    max_fps = 60,
    front_end = 'WebGpu',
    webgpu_power_preference = 'HighPerformance',
    webgpu_preferred_adapter = gpu_adapters:pick(),

    -- color scheme
    colors = colors,

    -- background
    background = {
        {
            source = { File = wezterm.GLOBAL.background },
        },
        {
            source = { Color = colors.background },
            height = '100%',
            width = '100%',
            opacity = 0.96,
        },
    },

    --------------------------------
    --         SCROLLBAR          --
    --------------------------------

    enable_scroll_bar = true,

    --------------------------------
    --            TAB             --
    --------------------------------

    enable_tab_bar = true,
    use_fancy_tab_bar = true,
    tab_bar_at_bottom = false,
    show_tab_index_in_tab_bar = false,
    hide_tab_bar_if_only_one_tab = false,
    switch_to_last_active_tab_when_closing_tab = true,
    tab_max_width = 25,

    --------------------------------
    --           WINDOWS          --
    --------------------------------

    window_close_confirmation = 'NeverPrompt',
    window_padding = {
        left = 5,
        right = 10,
        top = 12,
        bottom = 7,
    },
    window_frame = {
        active_titlebar_bg = '#090909',
    },
    inactive_pane_hsb = {
        saturation = 0.9,
        brightness = 0.65,
    },
}
