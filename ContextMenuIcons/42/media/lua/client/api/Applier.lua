local iconsPath = "media/ui/icons/";
local function getIconPath(iconPack, iconName)
    return iconsPath .. "/" .. iconPack .. "/" .. iconName;
end

local function getOptionFromContext(optionName, context)
    local option = context:getOptionFromName(getText(optionName));
    return option;
end

local iconTextures = {}
local function getCachedIconTexture(iconName)
    path = getIconPath("simple", iconName)
    if not iconTextures[path] then
        iconTextures[path] = getTexture(path)
    end
    return iconTextures[path]
end

local function setIcon(iconName, option)
    option.iconTexture = getCachedIconTexture(iconName);
end

local function applyIcons(player, context)
    if not context then return end

    for optionName, details in pairs(ContextMenuIcons.options) do
        local option = getOptionFromContext(optionName, context)
        if not option then return end

        if type(details) == "string" then
            setIcon(details, option)
        end
    end
end

--Events.OnPreFillWorldObjectContextMenu.Add(getCachedIconTexture)
Events.OnFillWorldObjectContextMenu.Add(applyIcons)