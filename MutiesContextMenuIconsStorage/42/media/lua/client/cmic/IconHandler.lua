require "cmic/Initialization"
require "cmic/Utils"

ContextMenuIcons.IconHandler = ContextMenuIcons.IconHandler or {}
local v = ContextMenuIcons.IconHandler

local utils = ContextMenuIcons.Utils

local iconsPath = "media/ui/iconPacks";
function v.getIconPath(packName, iconTextureName)
    if not packName then
        return "INVALIDPATH"
    end
    return iconsPath .. "/" .. packName .. "/" .. iconTextureName;
end

local iconTextures = {}
local function getCachedIconTexture(packName, iconTextureName)
    local path = v.getIconPath(packName, iconTextureName)
    if path ~= "INVALIDPATH" then
        if not iconTextures[path] then
            iconTextures[path] = getTexture(path)

            if not iconTextures[path] then
                utils.log("No icon found from path: " .. path)
                return
            end
        end
        return iconTextures[path]
    else
        return nil
    end
end

function v.resetIconTexturesCache()
    iconTextures = {}
end

function v.setIcon(option, iconPackList, iconTextureName)
    local icon = nil
    for packName, _ in pairs(iconPackList) do
        icon = getCachedIconTexture(packName, iconTextureName)
        if icon ~= nil then
            option.iconTexture = icon;
            return
        end
    end
end