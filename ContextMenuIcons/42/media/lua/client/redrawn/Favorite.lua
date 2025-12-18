local originalCreateMenu = ISInventoryPaneContextMenu.createMenu;

function ISInventoryPaneContextMenu.createMenu(player, isInPlayerInventory, items, x, y, origin)
    local context = GetInventoryCreateMenuContext(originalCreateMenu, player, isInPlayerInventory, items, x, y, origin);
    
    local option = GetOptionFromContext("IGUI_CraftUI_Favorite", context);
    SetIconInVariation(getRedrawnIconPath, "Favorite.png", option);

    option = GetOptionFromContext("ContextMenu_Unfavorite", context);
    SetIconInVariation(getRedrawnIconPath, "Unfavorite.png", option);
    
    return context;
end