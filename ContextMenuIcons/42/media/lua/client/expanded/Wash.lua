local originalDoWashClothingMenu = ISWorldObjectContextMenu.doWashClothingMenu;

function ISWorldObjectContextMenu.doWashClothingMenu(sink, player, context)
    originalDoWashClothingMenu(sink, player, context);
    local option = GetOptionFromContext("ContextMenu_Wash", context);
    if not option then return end;
    SetIcon(getExpandedIconPath, "Wash.png", option);
end