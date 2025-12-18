local originalCreateMenu = ISInventoryPaneContextMenu.createMenu

function ISInventoryPaneContextMenu.createMenu(player, isInPlayerInventory, items, x, y, origin)
    return GetInventoryCreateMenuContextIconized(originalCreateMenu, "ContextMenu_Unequip", getRedrawnIconPath, "Unequip.png", player, isInPlayerInventory, items, x, y, origin);
end