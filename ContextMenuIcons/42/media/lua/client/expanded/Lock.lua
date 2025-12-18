local originalDoorCreateMenu = ISWorldObjectContextMenu.createMenu;

function ISWorldObjectContextMenu.createMenu(player, worldobjects, x, y, test)
    return GetWorldCreateMenuContextIconized(originalDoorCreateMenu, "ContextMenu_LockDoor", getExpandedIconPath, "Lock.png", player, worldobjects, x, y, test);
end

local originalVehicleDoorsCreateMenu = ISWorldObjectContextMenu.createMenu;

function ISWorldObjectContextMenu.createMenu(player, worldobjects, x, y, test)
    return GetWorldCreateMenuContextIconized(originalVehicleDoorsCreateMenu, "ContextMenu_Lock_Doors", getExpandedIconPath, "Lock.png", player, worldobjects, x, y, test);
end