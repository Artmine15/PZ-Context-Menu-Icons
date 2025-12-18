local originalCreateMenu = ISInventoryPaneContextMenu.createMenu;

function ISInventoryPaneContextMenu.createMenu(player, isInPlayerInventory, items, x, y, origin)
    local context = GetInventoryCreateMenuContextIconized(originalCreateMenu, "ContextMenu_Eat", getRedrawnIconPath, "Eat.png", player, isInPlayerInventory, items, x, y, origin);

    local option = GetOptionFromContext("ContextMenu_Eat", context);
    if not option then return context end;
    local subContext = GetSubContextFromOption(option, context);
    if not subContext then return context end;

    option = GetOptionFromContext("ContextMenu_Eat_Quarter", subContext);
    SetIconInVariation(getRedrawnIconPath, "Quarter.png", option);
    
    option = GetOptionFromContext("ContextMenu_Eat_Half", subContext);
    SetIconInVariation(getRedrawnIconPath, "Half.png", option);
    
    option = GetOptionFromContext("ContextMenu_Eat_All", subContext);
    SetIconInVariation(getOriginalIconPath, "Full.png", option);
--[[
    local quarterOption = GetOptionFromContext("ContextMenu_Eat_Quarter", subContext);
    SetIconInVariation(getRedrawnIconPath, "Quarter.png", quarterOption);
    
    local halfOption = GetOptionFromContext("ContextMenu_Eat_Half", subContext);
    SetIconInVariation(getRedrawnIconPath, "Half.png", halfOption);
    
    local allOption = GetOptionFromContext("ContextMenu_Eat_All", subContext);
    SetIconInVariation(getOriginalIconPath, "Full.png", allOption);
    --]]
    return context;
end