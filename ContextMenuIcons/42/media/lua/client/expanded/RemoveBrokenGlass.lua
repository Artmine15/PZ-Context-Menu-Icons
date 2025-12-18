local originalCreateMenu = ISWorldObjectContextMenu.createMenu;

function ISWorldObjectContextMenu.createMenu(player, worldobjects, x, y, test)
    return GetWorldCreateMenuContextIconized(originalCreateMenu, "ContextMenu_RemoveBrokenGlass", getExpandedIconPath, "RemoveBrokenGlass.png", player, worldobjects, x, y, test);
end