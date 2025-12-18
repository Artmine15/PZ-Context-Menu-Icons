local originalCreateMenu = ISInventoryPaneContextMenu.createMenu;

function ISInventoryPaneContextMenu.createMenu(player, isInPlayerInventory, items, x, y, origin)
    return GetInventoryCreateMenuContextIconized(originalCreateMenu, "ContextMenu_Take_pills", getRedrawnIconPath, "TakePills.png", player, isInPlayerInventory, items, x, y, origin);
end