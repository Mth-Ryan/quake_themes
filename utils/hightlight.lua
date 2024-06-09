--[[
 _____             _      _____ _                              
|  _  |           | |    |_   _| |                             
| | | |_   _  __ _| | _____| | | |__   ___ _ __ ___   ___  ___ 
| | | | | | |/ _` | |/ / _ \ | | '_ \ / _ \ '_ ` _ \ / _ \/ __|
\ \/' / |_| | (_| |   <  __/ | | | | |  __/ | | | | |  __/\__ \
 \_/\_\\__,_|\__,_|_|\_\___\_/ |_| |_|\___|_| |_| |_|\___||___/

 File:        quake_themes/utils/hightlight.lua
 Author:      Mateus Ryan <mthryan@protonmail.com>
 Description: Is something similar to Doom themes, but... you know, for Neovim
 Licence:     MIT

--]]

local hgl = {}

hgl.highlight = function (group, color)
  local style = color.st and "gui="   .. color.st or "gui=NONE"
  local fg    = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg    = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp    = color.sp and "guisp=" .. color.sp or ""

  local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

  vim.cmd(hl)
  if color.link then vim.cmd("highlight! link " .. group .. " " .. color.link) end
end

hgl.tableHighlight = function (table)
    for group, color in pairs(table) do
        hgl.highlight(group, color)
    end
end

hgl.setLspIcons = function (icons)
    for group, options in pairs(icons) do
        local icon = options.text
        local hl   = options.texthl
        local sg = "sign define " .. group .. " text=" .. icon .. " " .. " texthl=" .. hl

        vim.cmd(sg)
    end
end

return hgl
