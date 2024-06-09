--[[
 _____             _      _____ _                              
|  _  |           | |    |_   _| |                             
| | | |_   _  __ _| | _____| | | |__   ___ _ __ ___   ___  ___ 
| | | | | | |/ _` | |/ / _ \ | | '_ \ / _ \ '_ ` _ \ / _ \/ __|
\ \/' / |_| | (_| |   <  __/ | | | | |  __/ | | | | |  __/\__ \
 \_/\_\\__,_|\__,_|_|\_\___\_/ |_| |_|\___|_| |_| |_|\___||___/

 File:        quake_themes/themes/postmodern.lua
 Author:      Mateus Ryan <mthryan@protonmail.com>
 Description: Is something similar to Doom themes, but... you know, for Neovim
 Licence:     MIT

--]]

local theme  = require("quake_themes.utils.theme_interface").new()
local colors = {
    bg1    = "#14161A",
    fg1    = "#CBD7E6",
    fg2    = "#4F5A69",
    fg3    = "#626C7A",
    bg2    = "#272D34",
    bg3    = "#323943",

    com    = "#929bed",
    accent = "#5FB7C8",
    prime  = "#DF4987",
    git    = "#FD9149",

    err    = "#C13535",
    war    = "#F0C674",
    inf    = "#679DCB",
    hin    = "#A6ADEF",
}

theme.loadEditor = function()
    local ui = {
        Normal       = { fg = colors.fg1, bg = colors.bg1,    },
        NonText      = { fg = colors.bg3, bg = colors.bg1,    },
        EndOfBuffer  = { fg = colors.bg3, bg = colors.bg1,    },
        Cursor       = { fg = colors.bg1, bg = colors.fg1,    },
        CursorLineNr = { fg = colors.fg1,                     },
        LineNr       = { fg = colors.bg3,                     },
        VertSplit    = { fg = colors.bg3, bg = colors.bg1,    },
        SignColumn   = { bg = colors.bg1                      },
        Visual       = { fg = colors.fg1, bg = colors.bg3,    },
        MatchParen   = { fg = colors.err, st = "underline"    },
        StatusLine   = { fg = colors.fg1, bg = colors.bg1,    },
        StatusLineNC = { fg = colors.fg3, bg = colors.bg1,    },
        Pmenu        = { fg = colors.fg1, bg = colors.bg2,    },
        PmenuSel     = { fg = colors.bg1, bg = colors.accent, },
        PmenuSbar    = { bg = colors.bg3,                     },
        PmenuThumb   = { bg = colors.fg3,                     },
        IncSearch    = { fg = colors.err,                     },
        Search       = { fg = colors.err, st = "underline"    },
        Directory    = { fg = colors.fg1,                     },
        Folded       = { fg = colors.fg3,                     },
        WildMenu     = { fg = colors.fg1,                     },
        FloatBorder  = { link = "Normal",                     },
        SagaNormal   = { link = "Normal",                     },
        WinSeparator = { fg = colors.bg3,                     },
        DiffAdd      = { fg = colors.fg1, st = "underline"    },
        DiffDelete   = { fg = colors.err,                     },
        DiffChange   = { fg = colors.war, st = "bold"         },
        DiffText     = { fg = colors.fg1, st = "bold"         },
        ErrorMsg     = { fg = colors.err, st = "bold"         },
        WarningMsg   = { fg = colors.war,                     },
    }
    return ui
end

theme.loadSyntax = function()
    local syntax = {
        Title        = { fg = colors.accent,               },
        SpecialKey   = { fg = colors.accent,               },
        Todo         = { fg = colors.accent, st = "bold"   },
        Underlined   = { st = "underline"                  },
        Comment      = { fg = colors.com,    st = "italic" },

        Type         = { fg = colors.fg3,                  },
        Typedef      = { link = "Constant",                },

        Constant     = { fg = colors.accent,               },
        Float        = { link = "Constant",                },
        Number       = { link = "Constant",                },
        Boolean      = { link = "Constant",                },
        String       = { link = "Constant",                },
        Character    = { link = "Constant",                },

        Identifier   = { fg = colors.fg1,                  },
        Function     = { link = "Identifier",              },

        Keyword      = { fg = colors.prime,                },
        Conditional  = { link = "Keyword",                 },
        Repeat       = { link = "Keyword",                 },
        Statement    = { link = "Keyword",                 },
        Label        = { link = "Keyword",                 },
        Define       = { link = "Keyword",                 },
        PreProc      = { link = "Keyword",                 },
        Include      = { link = "Keyword",                 },
        Special      = { link = "Keyword",                 },

        Tag          = { fg = colors.fg1,                  },
        StorageClass = { fg = colors.fg1,                  },

        Noise        = { fg = colors.fg2,                  },
        Parens       = { link = "Noise",                   },
        Braces       = { link = "Noise",                   },
        Assign       = { link = "Noise",                   },
        Comma        = { link = "Noise",                   },
        Delimiter    = { link = "Noise",                   },
        Operator     = { link = "Noise",                   },

        TSNamespace  = { fg = colors.fg3, st = "italic"    },
    }
    return syntax
end

theme.loadSpecific = function()
    local syntax = {
        -- HTML/XML/JSX tags
        ["@tag"]           = { fg = colors.prime, },
        ["@tag.attribute"] = { fg = colors.fg3,   },
        ["@tag.delimiter"] = { fg = colors.fg3,   },
    }
    return syntax
end

theme.loadLsp = function()
    local lsp = {
        LspDiagnosticsDefaultError           = { fg = colors.err, },
        LspDiagnosticsVirtualTextError       = { fg = colors.err, },
        LspDiagnosticsUnderlineError         = { fg = colors.err, },
        LspDiagnosticsFloatingError          = { fg = colors.err, },
        LspDiagnosticsSignError              = { fg = colors.err, },
        LspDiagnosticsDefaultWarning         = { fg = colors.war, },
        LspDiagnosticsVirtualTextWarning     = { fg = colors.war, },
        LspDiagnosticsUnderlineWarning       = { fg = colors.war, },
        LspDiagnosticsFloatingWarning        = { fg = colors.war, },
        LspDiagnosticsSignWarning            = { fg = colors.war, },
        LspDiagnosticsDefaultInformation     = { fg = colors.inf, },
        LspDiagnosticsVirtualTextInformation = { fg = colors.inf, },
        LspDiagnosticsUnderlineInformation   = { fg = colors.inf, },
        LspDiagnosticsFloatingInformation    = { fg = colors.inf, },
        LspDiagnosticsSignInformation        = { fg = colors.inf, },
        LspDiagnosticsDefaultHint            = { fg = colors.hin, },
        LspDiagnosticsVirtualTextHint        = { fg = colors.hin, },
        LspDiagnosticsUnderlineHint          = { fg = colors.hin, },
        LspDiagnosticsFloatingHint           = { fg = colors.hin, },
        LspDiagnosticsSignHint               = { fg = colors.hin, },
        DiagnosticVirtualTextError           = { fg = colors.err, },
        DiagnosticUnderlineError             = { fg = colors.err, },
        DiagnosticFloatingError              = { fg = colors.err, },
        DiagnosticSignError                  = { fg = colors.err, },
        DiagnosticVirtualTextWarn            = { fg = colors.war, },
        DiagnosticUnderlineWarn              = { fg = colors.war, },
        DiagnosticFloatingWarn               = { fg = colors.war, },
        DiagnosticSignWarn                   = { fg = colors.war, },
        DiagnosticVirtualTextInfo            = { fg = colors.inf, },
        DiagnosticUnderlineInfo              = { fg = colors.inf, },
        DiagnosticFloatingInfo               = { fg = colors.inf, },
        DiagnosticSignInfo                   = { fg = colors.inf, },
        DiagnosticVirtualTextHint            = { fg = colors.hin, },
        DiagnosticUnderlineHint              = { fg = colors.hin, },
        DiagnosticFloatingHint               = { fg = colors.hin, },
        DiagnosticSignHint                   = { fg = colors.hin, },
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
