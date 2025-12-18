local originalDoFillWaterMenu = ISWorldObjectContextMenu.doFillWaterMenu;

function ISWorldObjectContextMenu.doFillWaterMenu(sink, playerNum, context)
    originalDoFillWaterMenu(sink, playerNum, context);
    local option = GetOptionFromContext("ContextMenu_Fill", context);
    if not option then return end;
    SetIcon(getExpandedIconPath, "Fill.png", option);
end