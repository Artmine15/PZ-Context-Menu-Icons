local originalCreateMenu = ISInventoryPaneContextMenu.createMenu;

function ISInventoryPaneContextMenu.createMenu(player, isInPlayerInventory, items, x, y, origin)
    return GetInventoryCreateMenuContextIconized(originalCreateMenu, "IGUI_invpanel_Inspect", getRedrawnIconPath, "Search.png", player, isInPlayerInventory, items, x, y, origin)
end