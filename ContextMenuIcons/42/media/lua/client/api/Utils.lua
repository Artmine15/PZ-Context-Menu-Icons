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

function v.getOptionFromContext(context, optionName, ...)
    return context:getOptionFromName(getText(optionName, ...))
end

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
end