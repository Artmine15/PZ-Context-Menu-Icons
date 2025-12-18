local originalCreateMenu = ISWorldObjectContextMenu.createMenu;

function ISWorldObjectContextMenu.createMenu(player, worldobjects, x, y, test)
    return GetWorldCreateMenuContextIconized(originalCreateMenu, "ContextMenu_PickupBrokenGlass", getExpandedIconPath, "PickupBrokenGlass.png", player, worldobjects, x, y, test);
end