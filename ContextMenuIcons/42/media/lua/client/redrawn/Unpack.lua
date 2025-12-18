local originalCreateMenu = ISInventoryPaneContextMenu.createMenu

function ISInventoryPaneContextMenu.createMenu(player, isInPlayerInventory, items, x, y, origin)
    return GetInventoryCreateMenuContextIconized(originalCreateMenu, "ContextMenu_Unpack", getRedrawnIconPath, "Unpack.png", player, isInPlayerInventory, items, x, y, origin);
end