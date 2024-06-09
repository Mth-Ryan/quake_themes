--[[
 _____             _      _____ _                              
|  _  |           | |    |_   _| |                             
| | | |_   _  __ _| | _____| | | |__   ___ _ __ ___   ___  ___ 
| | | | | | |/ _` | |/ / _ \ | | '_ \ / _ \ '_ ` _ \ / _ \/ __|
\ \/' / |_| | (_| |   <  __/ | | | | |  __/ | | | | |  __/\__ \
 \_/\_\\__,_|\__,_|_|\_\___\_/ |_| |_|\___|_| |_| |_|\___||___/

 File:        quake_themes/init.lua
 Author:      Mateus Ryan <mthryan@protonmail.com>
 Description: Is something similar to Doom themes, but... you know, for Neovim
 Licence:     MIT

--]]

local hgl = require("quake_themes.utils.hightlight")

function setup(options)
    local themes = require("quake_themes.themes")
    local theme = themes[options.theme]

    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.background    = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name   = "postmodern"

    local editor   = theme.loadEditor()
    local syntax   = theme.loadSyntax()
    local lsp      = theme.loadLsp()
    local specific = theme.loadSpecific()
    local lspIcons = theme.loadLspIcons()

    hgl.tableHighlight(editor)
    hgl.tableHighlight(syntax)
    hgl.tableHighlight(lsp)
    hgl.tableHighlight(specific)
    hgl.setLspIcons(lspIcons)
end

return { setup = setup }
