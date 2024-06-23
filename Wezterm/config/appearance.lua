local wezterm = require('wezterm')
local gpu_adapters = require('utils.gpu_adapter')
local colors = require('colors.custom')

return {
    animation_fps = 60,                                                -- 最大动画帧率
    max_fps = 60,                                                      -- 最大显示帧率
    front_end = 'WebGpu',                                              -- 渲染前端
    webgpu_power_preference = 'HighPerformance',                       -- 配置了渲染前端为 `WebGpu` 时的电源选项
    webgpu_preferred_adapter = gpu_adapters:pick(),                    -- 

    -- color scheme
    colors = colors,                                                   -- 指定颜色调色的 scheme 方案

    -- background
    background = {                                                     -- 背景
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

    enable_scroll_bar = true,                                          -- 开启滚动条

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
