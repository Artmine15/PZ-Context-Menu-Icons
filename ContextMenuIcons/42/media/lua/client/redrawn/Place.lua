local originalDoPlace3DItemOption = ISInventoryPaneContextMenu.doPlace3DItemOption;

function ISInventoryPaneContextMenu.doPlace3DItemOption(items, player, context)
    originalDoPlace3DItemOption(items, player, context);
    local option = GetOptionFromContext("ContextMenu_PlaceItemOnGround", context);
    if not option then return end;
    SetIcon(getRedrawnIconPath, "Place.png", option);
end