require "Namespaces"

ContextMenuIcons.Utils = ContextMenuIcons.Utils or {}
local v = ContextMenuIcons.Utils

function v.log(debugType, message)
    if getDebug() == false then return end
    
    DebugLog.log(debugType, message)
end

local iconsPath = "media/ui/icons";
function v.getIconPath(packName, iconTextureName)
    return iconsPath .. "/" .. packName .. "/" .. iconTextureName;
end
--[[
function v.getOptionFromContext(context, optionKey)
    local localizedText = getText(optionKey)
    
    if not string.find(localizedText, "%%", 1, true) then
        return context:getOptionFromName(localizedText)
    end

    for i = 1, #context.options do
        local option = context.options[i]
        if option.name and string.match(option.name, pattern) then
            v.log(DebugType.Mod, "Found dynamic option: " .. optionKey .. " -> " .. option.name)
            return option
        end
    end
    
    return nil
end
--]]

local iconTextures = {}
local function getCachedIconTexture(packName, iconTextureName)
    local path = v.getIconPath(packName, iconTextureName)
    if not iconTextures[path] then
        iconTextures[path] = getTexture(path)

        if not iconTextures[path] then
            v.log(DebugType.Mod, "No icon found from path: " .. path)
            return
        end
    end
    return iconTextures[path]
end

function v.setIcon(option, packName, iconTextureName)
    option.iconTexture = getCachedIconTexture(packName, iconTextureName);
    option.color = {r=1, g=1, b=1, a=0.5}
end