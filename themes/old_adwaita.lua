--[[
 _____             _      _____ _                              
|  _  |           | |    |_   _| |                             
| | | |_   _  __ _| | _____| | | |__   ___ _ __ ___   ___  ___ 
| | | | | | |/ _` | |/ / _ \ | | '_ \ / _ \ '_ ` _ \ / _ \/ __|
\ \/' / |_| | (_| |   <  __/ | | | | |  __/ | | | | |  __/\__ \
 \_/\_\\__,_|\__,_|_|\_\___\_/ |_| |_|\___|_| |_| |_|\___||___/

 File:        quake_themes/themes/old_adwaita.lua
 Author:      Mateus Ryan <mthryan@protonmail.com>
 Description: Is something similar to Doom themes, but... you know, for Neovim
 Licence:     MIT

--]]

local theme  = require("quake_themes.utils.theme_interface").new()
local colors = {
    blue1          = "#99c1f1",
    blue2          = "#62a0ea",
    blue3          = "#3584e4",
    blue4          = "#1c71d8",
    blue5          = "#1a5fb4",
    dark1          = "#77767b",
    dark2          = "#5e5c64",
    dark3          = "#3d3846",
    dark4          = "#241f31",
    dark5          = "#000000",
    green1         = "#8ff0a4",
    green2         = "#57e389",
    green3         = "#33d17a",
    green4         = "#2ec27e",
    green5         = "#26a269",
    light1         = "#ffffff",
    light2         = "#f6f5f4",
    light3         = "#deddda",
    light4         = "#c0bfbc",
    light5         = "#9a9996",
    orange1        = "#ffbe6f",
    orange2        = "#ffa348",
    orange3        = "#ff7800",
    orange4        = "#e66100",
    orange5        = "#c64600",
    purple1        = "#dc8add",
    purple2        = "#c061cb",
    purple3        = "#9141ac",
    purple4        = "#813d9c",
    purple5        = "#613583",
    red1           = "#f66151",
    red2           = "#ed333b",
    red3           = "#e01b24",
    red4           = "#c01c28",
    red5           = "#a51d2d",
    yellow1        = "#f9f06b",
    yellow2        = "#f8e45c",
    yellow3        = "#f6d32d",
    yellow4        = "#f5c211",
    yellow5        = "#e5a50a",
    content_bg     = "#101010",
    content_bg_alt = "#6e6e6e",
    content_alt    = "#3e3e3e",
}

theme.loadEditor = function()
    local ui = {
        Normal       = { fg = colors.light4, bg = colors.content_bg,      },
        NonText      = { fg = colors.content_alt, bg = colors.content_bg, },
        EndOfBuffer  = { link = "NonText",                                },
        Cursor       = { fg = colors.green5, bg = colors.light4,          },
        CursorLineNr = { fg = colors.fg1,                                 },
        LineNr       = { fg = colors.content_alt,                         },
        VertSplit    = { link = "NonText",                                },
        SignColumn   = { bg = colors.content_bg                           },
        Visual       = { fg = colors.light4, bg = colors.dark4,           },
        MatchParen   = { fg = colors.orange3, st = "underline",           },
        StatusLine   = { fg = colors.light3, bg = colors.dark4,           },
        StatusLineNC = { fg = colors.light5, bg = colors.dark4,           },
        Pmenu        = { link = "StatusLine",                             },
        PmenuSel     = { fg = colors.content_bg_alt, bg = colors.dark3,   },
        PmenuSbar    = { bg = colors.dark2,                               },
        PmenuThumb   = { bg = colors.dark3,                               },
        IncSearch    = { fg = colors.blue4,                               },
        Search       = { fg = colors.blue4, st = "underline",             },
        Directory    = { fg = colors.light4,                              },
        Folded       = { fg = colors.light4,                              },
        WildMenu     = { fg = colors.light4,                              },
        FloatBorder  = { link = "Normal",                                 },
        SagaNormal   = { link = "Normal",                                 },
        WinSeparator = { link = "NonText",                                },
        DiffAdd      = { fg = colors.green3,                              },
        DiffDelete   = { fg = colors.red3,                                },
        DiffChange   = { fg = colors.orange3,                             },
        DiffText     = { fg = colors.light4,                              },
        ErrorMsg     = { fg = colors.red3,                                },
        WarningMsg   = { fg = colors.yellow3,                             },
    }
    return ui
end

theme.loadSyntax = function()
    local syntax = {
        Title        = { fg = colors.light4, st="bold"     },
        SpecialKey   = { fg = colors.dark4,                },
        Todo         = { fg = colors.light4, st = "bold"   },
        Underlined   = { st = "underline"                  },
        Comment      = { fg = colors.dark3, st = "italic" },

        Type         = { fg = colors.light3, st = "bold"   },
        Typedef      = { link = "Constant",                },

        Constant     = { fg = colors.red1,                 },
        Float        = { fg = colors.orange4,              },
        Number       = { fg = colors.purple1,              },
        Boolean      = { fg = colors.purple1,              },
        String       = { fg = colors.yellow5,              },
        Character    = { fg = colors.yellow5,              },

        Identifier   = { fg = colors.dark1,                },
        Function     = { fg = colors.dark1, st="bold"      },

        Keyword      = { fg = colors.light4, st="bold"     },
        Conditional  = { link = "Keyword",                 },
        Repeat       = { link = "Keyword",                 },
        Statement    = { fg = colors.green5,               },
        Label        = { link = "Keyword",                 },
        Define       = { fg = colors.orange3,              },
        PreProc      = { fg = colors.orange3,              },
        Include      = { fg = colors.orange3,              },
        Special      = { link = "Keyword",                 },

        Tag          = { fg = colors.light3,               },
        StorageClass = { fg = colors.light3,               },

        Noise        = { fg = colors.light4,               },
        Parens       = { link = "Noise",                   },
        Braces       = { link = "Noise",                   },
        Assign       = { link = "Noise",                   },
        Comma        = { link = "Noise",                   },
        Delimiter    = { link = "Noise",                   },
        Operator     = { link = "Noise",                   },

        TSNamespace  = { fg = colors.green5, st = "italic" },
    }
    return syntax
end

theme.loadSpecific = function()
    local syntax = {
        -- HTML/XML/JSX tags
        ["@tag"]           = { link = "Keyword",        },
        ["@tag.attribute"] = { fg = colors.purple1,     },
        ["@tag.delimiter"] = { fg = colors.content_alt, },

        -- Defaults
        ["@type.qualifier"]    = { link = "Keyword",    },
        ["@keyword.return"]    = { link = "Statement",  },
        ["@attribute"]         = { fg = colors.purple1, },
        ["@keyword.coroutine"] = { fg = colors.orange3, },
    }
    return syntax
end

theme.loadLsp = function()
    local lsp = {
        LspDiagnosticsDefaultError           = { link = "ErrorMsg",   },
        LspDiagnosticsVirtualTextError       = { link = "ErrorMsg",   },
        LspDiagnosticsUnderlineError         = { link = "ErrorMsg",   },
        LspDiagnosticsFloatingError          = { link = "ErrorMsg",   },
        LspDiagnosticsSignError              = { link = "ErrorMsg",   },
        LspDiagnosticsDefaultWarning         = { link = "WarningMsg", },
        LspDiagnosticsVirtualTextWarning     = { link = "WarningMsg", },
        LspDiagnosticsUnderlineWarning       = { link = "WarningMsg", },
        LspDiagnosticsFloatingWarning        = { link = "WarningMsg", },
        LspDiagnosticsSignWarning            = { link = "WarningMsg", },
        LspDiagnosticsDefaultInformation     = { fg = colors.purple1, },
        LspDiagnosticsVirtualTextInformation = { fg = colors.purple1, },
        LspDiagnosticsUnderlineInformation   = { fg = colors.purple1, },
        LspDiagnosticsFloatingInformation    = { fg = colors.purple1, },
        LspDiagnosticsSignInformation        = { fg = colors.purple1, },
        LspDiagnosticsDefaultHint            = { fg = colors.blue3,   },
        LspDiagnosticsVirtualTextHint        = { fg = colors.blue3,   },
        LspDiagnosticsUnderlineHint          = { fg = colors.blue3,   },
        LspDiagnosticsFloatingHint           = { fg = colors.blue3,   },
        LspDiagnosticsSignHint               = { fg = colors.blue3,   },
        DiagnosticVirtualTextError           = { link = "ErrorMsg",   },
        DiagnosticUnderlineError             = { link = "ErrorMsg",   },
        DiagnosticFloatingError              = { link = "ErrorMsg",   },
        DiagnosticSignError                  = { link = "ErrorMsg",   },
        DiagnosticVirtualTextWarn            = { link = "WarningMsg", },
        DiagnosticUnderlineWarn              = { link = "WarningMsg", },
        DiagnosticFloatingWarn               = { link = "WarningMsg", },
        DiagnosticSignWarn                   = { link = "WarningMsg", },
        DiagnosticVirtualTextInfo            = { fg = colors.purple1, },
        DiagnosticUnderlineInfo              = { fg = colors.purple1, },
        DiagnosticFloatingInfo               = { fg = colors.purple1, },
        DiagnosticSignInfo                   = { fg = colors.purple1, },
        DiagnosticVirtualTextHint            = { fg = colors.blue3,   },
        DiagnosticUnderlineHint              = { fg = colors.blue3,   },
        DiagnosticFloatingHint               = { fg = colors.blue3,   },
        DiagnosticSignHint                   = { fg = colors.blue3,   },
    }
    return lsp
end

theme.loadLspIcons = function()
    local lsp = {
        LspDiagnosticsSignError = {
            text = "",
            texthl = "LspDiagnosticsDefaultError"
        },
        LspDiagnosticsSignWarning = {
            text = "",
            texthl = "LspDiagnosticsDefaultWarning"
        },
        LspDiagnosticsSignInformation = {
            text = "",
            texthl = "LspDiagnosticsDefaultInformation"
        },
    }
    return lsp
end

return theme
