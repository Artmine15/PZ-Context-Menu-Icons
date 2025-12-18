local originalDoorCreateMenu = ISWorldObjectContextMenu.createMenu;

function ISWorldObjectContextMenu.createMenu(player, worldobjects, x, y, test)
    return GetWorldCreateMenuContextIconized(originalDoorCreateMenu, "ContextMenu_UnlockDoor", getExpandedIconPath, "Unlock.png", player, worldobjects, x, y, test);
end

local originalVehicleDoorsCreateMenu = ISWorldObjectContextMenu.createMenu;

function ISWorldObjectContextMenu.createMenu(player, worldobjects, x, y, test)
    return GetWorldCreateMenuContextIconized(originalVehicleDoorsCreateMenu, "ContextMenu_Unlock_Doors", getExpandedIconPath, "Unlock.png", player, worldobjects, x, y, test);
end