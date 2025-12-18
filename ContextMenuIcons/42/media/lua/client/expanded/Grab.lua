local originalDoGrabMenu = ISInventoryPaneContextMenu.doGrabMenu

function ISInventoryPaneContextMenu.doGrabMenu(context, items, player)
    originalDoGrabMenu(context, items, player);

    local option = GetOptionFromContext("ContextMenu_Grab", context);
    SetIconInVariation(getExpandedIconPath, "Grab.png", option);

    option = GetOptionFromContext("ContextMenu_Grab_one", context);
    SetIconInVariation(getExpandedIconPath, "Grab.png", option);

    option = GetOptionFromContext("ContextMenu_Grab_half", context);
    SetIconInVariation(getExpandedIconPath, "GrabHalf.png", option);
    
    option = GetOptionFromContext("ContextMenu_Grab_all", context);
    SetIconInVariation(getExpandedIconPath, "GrabAll.png", option);
end

local originalHandleGrabWorldItem = ISWorldObjectContextMenu.handleGrabWorldItem

function ISWorldObjectContextMenu.handleGrabWorldItem(x, y, test, context, worldobjects, playerObj, playerInv)
    originalHandleGrabWorldItem(x, y, test, context, worldobjects, playerObj, playerInv);
    local option = GetOptionFromContext("ContextMenu_Grab", context);
    if not option then return end;
    SetIcon(getExpandedIconPath, "Grab.png", option);
end