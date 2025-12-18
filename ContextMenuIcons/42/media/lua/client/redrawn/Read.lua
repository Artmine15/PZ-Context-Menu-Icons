local originalDoLiteratureMenu = ISInventoryPaneContextMenu.doLiteratureMenu;

function ISInventoryPaneContextMenu.doLiteratureMenu(context, items, player)
    originalDoLiteratureMenu(context, items, player);
    local option = GetOptionFromContext("ContextMenu_Read", context);
    if not option then return end;
    SetIcon(getOriginalIconPath, "Read.png", option);
end

local originalCreateMenu = ISInventoryPaneContextMenu.createMenu;

function ISInventoryPaneContextMenu.createMenu(player, isInPlayerInventory, items, x, y, origin)
    return GetInventoryCreateMenuContextIconized(originalCreateMenu, "ContextMenu_Read_Note", getOriginalIconPath, "Read.png", player, isInPlayerInventory, items, x, y, origin);
end