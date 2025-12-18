--ISWorldObjectContextMenu.createMenu()
--[[
local originalCreateMenu = ISWorldObjectContextMenu.createMenu;

function ISWorldObjectContextMenu.createMenu(player, worldobjects, x, y, test)
    local context = originalCreateMenu(player, worldobjects, x, y, test);
    if not context then return context end
    if type(context) ~= "table" then return context end
    local option = context:getOptionFromName(getText("OPTION_NAME"));
    if not option then return context end
    option.iconTexture = getTexture(getSTORAGEIconPath("NAME.png"));
    return context;
end
--]]

--World specific menu
--[[
local originalHandleGrabWorldItem = ISWorldObjectContextMenu.handleGrabWorldItem

function ISWorldObjectContextMenu.handleGrabWorldItem(x, y, test, context, worldobjects, playerObj, playerInv)
    originalHandleGrabWorldItem(x, y, test, context, worldobjects, playerObj, playerInv);
    local option = context:getOptionFromName(getText("OPTION_NAME"));
    if not option then return end
    option.iconTexture = getTexture(getSTORAGEIconPath("NAME.png"));
end
--]]

--ISInventoryPaneContextMenu.createMenu()
--[[
local originalCreateMenu = ISInventoryPaneContextMenu.createMenu;

function ISInventoryPaneContextMenu.createMenu(player, isInPlayerInventory, items, x, y, origin)
    local context = originalCreateMenu(player, isInPlayerInventory, items, x, y, origin);
    if not context then return context end
    local option = context:getOptionFromName(getText("OPTION_NAME"));
    if not option then return context end
    option.iconTexture = getTexture(getSTORAGEIconPath("NAME.png"));
    return context;
end
--]]

--Inventory specific menu
--[[
local originalDoLiteratureMenu = ISInventoryPaneContextMenu.doLiteratureMenu;

function ISInventoryPaneContextMenu.doLiteratureMenu(context, items, player)
        originalDoLiteratureMenu(context, items, player);
        local option = context:getOptionFromName(getText("OPTION_NAME"));
        if not option then return context end
        option.iconTexture = getTexture(getSTORAGEIconPath("NAME.png"));
end
--]]