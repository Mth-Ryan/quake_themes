--[[
 _____             _      _____ _                              
|  _  |           | |    |_   _| |                             
| | | |_   _  __ _| | _____| | | |__   ___ _ __ ___   ___  ___ 
| | | | | | |/ _` | |/ / _ \ | | '_ \ / _ \ '_ ` _ \ / _ \/ __|
\ \/' / |_| | (_| |   <  __/ | | | | |  __/ | | | | |  __/\__ \
 \_/\_\\__,_|\__,_|_|\_\___\_/ |_| |_|\___|_| |_| |_|\___||___/

 File:        quake_themes/themes/yat.lua
 Author:      Mateus Ryan <mthryan@protonmail.com>
 Description: Is something similar to Doom themes, but... you know, for Neovim
 Licence:     MIT

--]]

local theme  = require("quake_themes.utils.theme_interface").new()
local colors = {
    non = "NONE",
    bg1 = "#1B1C24",
    fg1 = "#D4D2CF",
    fg2 = "#c3c1be",
    fg3 = "#b2b0ae",
    fg4 = "#a1a09d",
    bg2 = "#232431",
    bg3 = "#323340",
    bg4 = "#40414D",
    yel = "#fecc86",
    org = "#E39B71",
    pur = "#a6adef",
    red = "#d93861",
    gra = "#525863",
    blu = "#679DCB",
    cya = "#60B7A5",
    gre = "#C2D076",
    err = "#c13535",
    war = "#f0c674",
}

theme.loadEditor = function()
    local ui = {
        Normal       = { fg = colors.fg1, bg = colors.bg1, },
        NonText      = { fg = colors.bg4, bg = colors.bg1, },
        EndOfBuffer  = { fg = colors.bg4, bg = colors.bg1, },
        Cursor       = { fg = colors.bg1, bg = colors.fg1, },
        CursorLineNr = { fg = colors.cya,                  },
        CursorLine   = {                  bg = colors.bg2, },
        CursorColumn = {                  bg = colors.bg4, },
        ColorColumn  = {                  bg = colors.bg4, },
        SignColumn   = {                                   },
        LineNr       = { fg = colors.gra,                  },
        VertSplit    = { fg = colors.bg2, bg = colors.non, },
        Visual       = { fg = colors.fg1, bg = colors.bg4, },
        MatchParen   = { fg = colors.err, st = "underline" },
        StatusLine   = { fg = colors.fg2, bg = colors.bg1, },
        StatusLineNC = { fg = colors.fg3, bg = colors.bg1, st = "NONE" },
        Pmenu        = { fg = colors.fg2, bg = colors.bg2, },
        PmenuSel     = { fg = colors.bg1, bg = colors.blu, },
        PmenuSbar    = {                  bg = colors.bg3, },
        PmenuThumb   = {                  bg = colors.bg4, },
        IncSearch    = { fg = colors.bg2, bg = colors.fg1, },
        Search       = { fg = colors.err, st = "underline" },
        Directory    = { fg = colors.red,                  },
        Folded       = { fg = colors.fg4,                  },
        WildMenu     = { fg = colors.cya,                  },
        DiffAdd      = { fg = colors.cya, st = "underline" },
        DiffDelete   = { fg = colors.err,                  },
        DiffChange   = { fg = colors.war, st = "bold"      },
        DiffText     = { fg = colors.red, st = "bold"      },
        ErrorMsg     = { fg = colors.err, st = "bold"      },
        WarningMsg   = { fg = colors.war,                  },
        NvimTreeFolderName       = { fg = colors.fg2, },
        NvimTreeEmptyFolderName  = { fg = colors.fg2, },
        NvimTreeOpenedFolderName = { fg = colors.fg2, },
    }
    return ui
end

theme.loadSyntax = function()
    local syntax = {
        Label        = { fg = colors.fg1,                  },
        Title        = { fg = colors.fg1,                  },
        SpecialKey   = { fg = colors.cya,                  },
        Todo         = { fg = colors.blu, st = "bold"      },
        Underlined   = {                  st = "underline" },
        Comment      = { fg = colors.gra,                  },
        Type         = { fg = colors.cya,                  },
        Character    = { fg = colors.gre,                  },
        String       = { fg = colors.gre,                  },
        Conditional  = { fg = colors.pur,                  },
        Repeat       = { fg = colors.pur,                  },
        Constant     = { fg = colors.org,                  },
        Float        = { fg = colors.org,                  },
        Number       = { fg = colors.org,                  },
        Function     = { fg = colors.fg1, st = "italic"    },
        Special      = { fg = colors.fg1,                  },
        Identifier   = { fg = colors.fg1,                  },
        Keyword      = { fg = colors.blu,                  },
        Statement    = { fg = colors.blu,                  },
        Tag          = { fg = colors.blu,                  },
        PreProc      = { fg = colors.yel,                  },
        Define       = { fg = colors.yel,                  },
        Operator     = { fg = colors.red,                  },
        StorageClass = { fg = colors.Pur,                  },
    }
    return syntax
end

theme.loadSpecific = function()
    local syntax = {
        -- Scheme
        schemeLibrarySyntax = { fg = colors.yel },
        schemeSyntaxSyntax  = { fg = colors.yel },
        schemeFunction      = { fg = colors.red },
        schemeQuote         = { fg = colors.pur },
        schemeQuasiquote    = { fg = colors.pur },
        schemeData          = { fg = colors.pur },
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
        LspDiagnosticsDefaultInformation     = { fg = colors.blu, },
        LspDiagnosticsVirtualTextInformation = { fg = colors.blu, },
        LspDiagnosticsUnderlineInformation   = { fg = colors.blu, },
        LspDiagnosticsFloatingInformation    = { fg = colors.blu, },
        LspDiagnosticsSignInformation        = { fg = colors.blu, },
        LspDiagnosticsDefaultHint            = { fg = colors.pur, },
        LspDiagnosticsVirtualTextHint        = { fg = colors.pur, },
        LspDiagnosticsUnderlineHint          = { fg = colors.pur, },
        LspDiagnosticsFloatingHint           = { fg = colors.pur, },
        LspDiagnosticsSignHint               = { fg = colors.pur, },
        DiagnosticVirtualTextError           = { fg = colors.err, },
        DiagnosticUnderlineError             = { fg = colors.err, },
        DiagnosticFloatingError              = { fg = colors.err, },
        DiagnosticSignError                  = { fg = colors.err, },
        DiagnosticVirtualTextWarn            = { fg = colors.war, },
        DiagnosticUnderlineWarn              = { fg = colors.war, },
        DiagnosticFloatingWarn               = { fg = colors.war, },
        DiagnosticSignWarn                   = { fg = colors.war, },
        DiagnosticVirtualTextInfo            = { fg = colors.blu, },
        DiagnosticUnderlineInfo              = { fg = colors.blu, },
        DiagnosticFloatingInfo               = { fg = colors.blu, },
        DiagnosticSignInfo                   = { fg = colors.blu, },
        DiagnosticVirtualTextHint            = { fg = colors.pur, },
        DiagnosticUnderlineHint              = { fg = colors.pur, },
        DiagnosticFloatingHint               = { fg = colors.pur, },
        DiagnosticSignHint                   = { fg = colors.pur, },
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
