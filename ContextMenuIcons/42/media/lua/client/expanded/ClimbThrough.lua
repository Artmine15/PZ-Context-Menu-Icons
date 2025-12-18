local originalCreateMenu = ISWorldObjectContextMenu.createMenu;

function ISWorldObjectContextMenu.createMenu(player, worldobjects, x, y, test)
    return GetWorldCreateMenuContextIconized(originalCreateMenu, "ContextMenu_Climb_through", getExpandedIconPath, "ClimbThrough.png", player, worldobjects, x, y, test);
end