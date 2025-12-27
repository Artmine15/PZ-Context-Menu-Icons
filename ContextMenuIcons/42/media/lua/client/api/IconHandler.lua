require "Namespaces"
require "api/Utils"

ContextMenuIcons.IconHandler = ContextMenuIcons.IconHandler or {}
local v = ContextMenuIcons.IconHandler

local utils = ContextMenuIcons.Utils

local iconsPath = "media/ui/icons";
function v.getIconPath(packName, iconTextureName)
    return iconsPath .. "/" .. packName .. "/" .. iconTextureName;
end

local iconTextures = {}
local function getCachedIconTexture(packName, iconTextureName)
    local path = v.getIconPath(packName, iconTextureName)
    if not iconTextures[path] then
        iconTextures[path] = getTexture(path)

        if not iconTextures[path] then
            utils.log("No icon found from path: " .. path)
            return
        end
    end
    return iconTextures[path]
end

function v.resetIconTexturesCache()
    iconTextures = {}
end

function v.setIcon(option, packName, iconTextureName, color)
    option.iconTexture = getCachedIconTexture(packName, iconTextureName);
    option.color = color or {r = 1, g = 1, b = 1, a = 1}
end