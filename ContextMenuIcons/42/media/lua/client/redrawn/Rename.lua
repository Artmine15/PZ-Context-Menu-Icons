local originalCreateMenu = ISInventoryPaneContextMenu.createMenu;

function ISInventoryPaneContextMenu.createMenu(player, isInPlayerInventory, items, x, y, origin)
    local context = GetInventoryCreateMenuContext(originalCreateMenu, player, isInPlayerInventory, items, x, y, origin);
    
    local option = GetOptionFromContext("ContextMenu_RenameBag", context);
    SetIconInVariation(getRedrawnIconPath, "Rename.png", option);

    option = GetOptionFromContext("ContextMenu_RenameFood", context);
    SetIconInVariation(getRedrawnIconPath, "Rename.png", option);

    option = GetOptionFromContext("ContextMenu_RenameMap", context);
    SetIconInVariation(getRedrawnIconPath, "Rename.png", option);

    return context;
end