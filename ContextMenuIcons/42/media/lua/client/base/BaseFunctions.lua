--[[
local context = GetWorldCreateMenuContext(originalCreateMenu, player, worldobjects, x, y, test);
if type(context) ~= "table" then return context end;
if not context then return context end;
--]]
function GetWorldCreateMenuContext(menu, player, worldobjects, x, y, test)
    local context = menu(player, worldobjects, x, y, test);
    return context;
end

--[[
local context = GetInventoryCreateMenuContext(originalCreateMenu, player, isInPlayerInventory, items, x, y, origin);
if not context then return context end;
--]]
function GetInventoryCreateMenuContext(menu, player, isInPlayerInventory, items, x, y, origin)
    local context = menu(player, isInPlayerInventory, items, x, y, origin);
    return context;
end

--[[
local option = GetOptionFromContext("Option", context);
if not option then return end;
or for createMenu
if not option then return context end;
--]]
function GetOptionFromContext(optionName, context)
    local option = context:getOptionFromName(getText(optionName));
    return option;
end

--[[
GetSubContextFromOption(option, context);
if not subContext then return end;
--]]
function GetSubContextFromOption(option, context)
    local subContext = context:getSubMenu(option.subOption);
    return subContext;
end

-- return GetWorldCreateMenuContext(originalCreateMenu, "Option", getIconPath, "Icon.png", player, worldobjects, x, y, test);
function GetWorldCreateMenuContextIconized(menu, optionName, iconMethod, iconName, player, worldobjects, x, y, test)
    local context = GetWorldCreateMenuContext(menu, player, worldobjects, x, y, test);
    if type(context) ~= "table" then return context end;
    if not context then return context end;
    local option = GetOptionFromContext(optionName, context);
    if not option then return context end;
    SetIcon(iconMethod, iconName, option);
    return context;
end

-- return GetInventoryCreateMenuContext(originalCreateMenu, "Option", getIconPath, "Icon.png", player, isInPlayerInventory, items, x, y, origin);
function GetInventoryCreateMenuContextIconized(menu, optionName, iconMethod, iconName, player, isInPlayerInventory, items, x, y, origin)
    local context = GetInventoryCreateMenuContext(menu, player, isInPlayerInventory, items, x, y, origin);
    if not context then return context end;
    local option = GetOptionFromContext(optionName, context);
    if not option then return context end;
    SetIcon(iconMethod, iconName, option);
    return context;
end

-- SetIcon(getIconPath, "Icon.png", option);
function SetIcon(iconMethod, iconName, option)
    option.iconTexture = getTexture(iconMethod(iconName));
end

-- SetIconInVariation(getIconPath, "Icon.png", option);
function SetIconInVariation(iconMethod, iconName, option)
    if option then
        SetIcon(iconMethod, iconName, option);
    end
end