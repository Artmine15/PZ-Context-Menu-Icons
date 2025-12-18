local originalDoPlace3DItemOption = ISInventoryPaneContextMenu.doPlace3DItemOption;

function ISInventoryPaneContextMenu.doPlace3DItemOption(items, player, context)
    originalDoPlace3DItemOption(items, player, context);

	local option = GetOptionFromContext("ContextMenu_PlaceItemOnGround", context);
    if not option then return end;
    local subContext = GetSubContextFromOption(option, context);
    if not subContext then return end;

    option = GetOptionFromContext("ContextMenu_PlaceOne", subContext);
    SetIconInVariation(getRedrawnIconPath, "Place.png", option);

    option = GetOptionFromContext("ContextMenu_PlaceHalf", subContext);
    SetIconInVariation(getExpandedIconPath, "PlaceHalf.png", option);

    option = GetOptionFromContext("ContextMenu_PlaceAll", subContext);
    SetIconInVariation(getExpandedIconPath, "PlaceAll.png", option);
end