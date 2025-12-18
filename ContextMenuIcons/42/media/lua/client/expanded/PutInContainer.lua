local originalCreateMenu = ISInventoryPaneContextMenu.createMenu

function ISInventoryPaneContextMenu.createMenu(player, isInPlayerInventory, items, x, y, origin)
    local context = GetInventoryCreateMenuContext(originalCreateMenu, player, isInPlayerInventory, items, x, y, origin);
    local loot = getPlayerLoot(player);
    local option = context:getOptionFromName(getText("ContextMenu_PutInContainer", loot.title));
    if not option then return context end;
    SetIcon(getExpandedIconPath, "PutInContainer.png", option);
    return context;
end

local originalCreateMenu2 = ISInventoryPaneContextMenu.createMenu;

function ISInventoryPaneContextMenu.createMenu(player, isInPlayerInventory, items, x, y, origin)
    return GetInventoryCreateMenuContextIconized(originalCreateMenu2, "ContextMenu_Move_To", getExpandedIconPath, "MoveTo.png", player, isInPlayerInventory, items, x, y, origin)
end

local originalCreateMenu3 = ISInventoryPaneContextMenu.createMenu;

function ISInventoryPaneContextMenu.createMenu(player, isInPlayerInventory, items, x, y, origin)
    return GetInventoryCreateMenuContextIconized(originalCreateMenu3, "IGUI_invpage_Transfer_all", getExpandedIconPath, "PutInContainer.png", player, isInPlayerInventory, items, x, y, origin)
end

local originalCreateMenu4 = ISInventoryPaneContextMenu.createMenu;

function ISInventoryPaneContextMenu.createMenu(player, isInPlayerInventory, items, x, y, origin)
    return GetInventoryCreateMenuContextIconized(originalCreateMenu4, "IGUI_invpage_Loot_all", getExpandedIconPath, "TakeAll.png", player, isInPlayerInventory, items, x, y, origin)
end