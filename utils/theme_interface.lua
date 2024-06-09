--[[
 _____             _      _____ _                              
|  _  |           | |    |_   _| |                             
| | | |_   _  __ _| | _____| | | |__   ___ _ __ ___   ___  ___ 
| | | | | | |/ _` | |/ / _ \ | | '_ \ / _ \ '_ ` _ \ / _ \/ __|
\ \/' / |_| | (_| |   <  __/ | | | | |  __/ | | | | |  __/\__ \
 \_/\_\\__,_|\__,_|_|\_\___\_/ |_| |_|\___|_| |_| |_|\___||___/

 File:        quake_themes/utils/theme_interface.lua
 Author:      Mateus Ryan <mthryan@protonmail.com>
 Description: Is something similar to Doom themes, but... you know, for Neovim
 Licence:     MIT

--]]

local theme_interface = {}

local interface_default = function()
    return { }
end

theme_interface.new = function()
    local interface = {}

    interface.loadEditor   = interface_default
    interface.loadSyntax   = interface_default
    interface.loadLsp      = interface_default
    interface.loadSpecific = interface_default
    interface.loadLspIcons = interface_default

    return interface
end

return theme_interface
