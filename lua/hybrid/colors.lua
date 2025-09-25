local utils = require("hybrid.utils")

local M = {}

M.palettes = {
-- stylua: ignore start
palette_old = {
    bright_black    = "#373b41",
    black           = "#17181a",
    dull_black      = "#151718",

    bright_white    = "#eaeaea",
    white           = "#c5c8c6",
    dull_white      = "#707880",

    bright_red      = "#d54e53",
    red             = "#cc6666",
    dull_red        = "#a54242",

    bright_green    = "#b9ca4a",
    green           = "#b5bd68",
    dull_green      = "#8c9440",

    bright_yellow   = "#e7c547",
    yellow          = "#f0c674",
    dull_yellow     = "#de935f",

    bright_blue     = "#7aa6da",
    blue            = "#81a2be",
    dull_blue       = "#5f819d",

    bright_magenta  = "#c397d8",
    magenta         = "#b294bb",
    dull_magenta    = "#85678f",

    bright_cyan     = "#70c0b1",
    cyan            = "#8abeb7",
    dull_cyan       = "#5e8d87",
},

palette = {
    bright_black    = "#4a4f55",
    black           = "#121314",
    dull_black      = "#0f1011",

    bright_white    = "#ffffff",
    white           = "#e0e0e0",
    dull_white      = "#9a9fa5",

    bright_red      = "#e05a5f",
    red             = "#d36f6f",
    dull_red        = "#b84d4d",

    bright_green    = "#c6dc57",
    green           = "#c0c96f",
    dull_green      = "#9db34b",

    bright_yellow   = "#f5d557",
    yellow          = "#f9d47f",
    dull_yellow     = "#e8a86a",

    bright_blue     = "#89b7eb",
    blue            = "#8fb7cf",
    dull_blue       = "#6a93b0",

    bright_magenta  = "#d1a3e9",
    magenta         = "#c1a1cd",
    dull_magenta    = "#93729d",

    bright_cyan     = "#7fd3c2",
    cyan            = "#97cfc8",
    dull_cyan       = "#6ba9a1",
},
default = {
    bright_black    = "#4a4f55",
    black           = "#121314",
    dull_black      = "#0f1011",

    bright_white    = "#ffffff",
    white           = "#e0e0e0",
    dull_white      = "#9a9fa5",

    bright_red      = "#e05a5f",
    red             = "#d36f6f",
    dull_red        = "#b84d4d",

    bright_green    = "#c6dc57",
    green           = "#c0c96f",
    dull_green      = "#9db34b",

    bright_yellow   = "#f5d557",
    yellow          = "#f9d47f",
    dull_yellow     = "#e8a86a",

    bright_blue     = "#89b7eb",
    blue            = "#8fb7cf",
    dull_blue       = "#6a93b0",

    bright_magenta  = "#d1a3e9",
    magenta         = "#c1a1cd",
    dull_magenta    = "#93729d",

    bright_cyan     = "#7fd3c2",
    cyan            = "#97cfc8",
    dull_cyan       = "#6ba9a1",
},

anysphere = {
        bright_black    = "#383838",
        black           = "#181818",
        dull_black      = "#0f0f0f",

        bright_white    = "#ffffff",
        white           = "#d6d6dd",
        dull_white      = "#7a797a",

        bright_red      = "#f14c4c",
        red             = "#ea7620",
        dull_red        = "#b73a34",

        bright_green    = "#15ac91",
        green           = "#83d6c5",
        dull_green      = "#5a964d",

        bright_yellow   = "#e5b95c",
        yellow          = "#f8c762",
        dull_yellow     = "#cca700",

        bright_blue     = "#228df2",
        blue            = "#4c9df3",
        dull_blue       = "#163761",

        bright_magenta  = "#e567dc",
        magenta         = "#c586c0",
        dull_magenta    = "#b180d7",

        bright_cyan     = "#75d3ba",
        cyan            = "#82d2ce",
        dull_cyan       = "#6ba9a1",
    }
,
}

-- stylua: ignore end
--

function M.setup(opts)
    opts = opts or {}
    local palette_name = opts.palette or "default"

    local p = M.palettes[palette_name]

    -- stylua: ignore start
    local colors = {
        none            = "NONE",

        bg_hard         = p.dull_black,
        bg              = p.black,
        bg_soft         = p.bright_black,

        fg_soft         = p.dull_white,
        fg              = p.white,
        fg_hard         = p.bright_white,

        bright_red      = p.bright_red,
        bright_green    = p.bright_green,
        bright_yellow   = p.bright_yellow,
        bright_blue     = p.bright_blue,
        bright_magenta  = p.bright_magenta,
        bright_cyan     = p.bright_cyan,

        red             = p.red,
        green           = p.green,
        yellow          = p.yellow,
        blue            = p.blue,
        magenta         = p.magenta,
        cyan            = p.cyan,

        dull_red        = p.dull_red,
        dull_green      = p.dull_green,
        dull_yellow     = p.dull_yellow,
        dull_blue       = p.dull_blue,
        dull_magenta    = p.dull_magenta,
        dull_cyan       = p.dull_cyan,

        diff = {
            delete      = p.dull_red,
            add         = p.dull_green,
            change      = p.dull_blue,
            text        = p.dull_white,
        },

        diag = {
            error       = p.bright_red,
            warning     = p.bright_yellow,
            info        = p.bright_blue,
            hint        = p.bright_cyan,
            ok          = p.bright_green,
        },

        float = {
            bg          = p.dull_black,
            border      = p.bright_black,
            title       = p.blue,
            footer      = p.green,
        },

        line            = utils.darken(p.bright_black, 0.4, p.black),
        comment         = p.dull_white,
        selection       = p.bright_black,
        match           = p.blue,
        primary         = p.bright_blue,
    }
    -- stylua: ignore end

    return colors
end

M.palette = M.palettes.default

return M
