local originalDoMagazineMenu = ISInventoryPaneContextMenu.doMagazineMenu;

function ISInventoryPaneContextMenu.doMagazineMenu(playerObj, magazine, context)
    originalDoMagazineMenu(playerObj, magazine, context);
    local option = GetOptionFromContext("ContextMenu_UnloadMagazine", context);
    if not option then return end;
    SetIcon(getExpandedIconPath, "UnloadMagazine.png", option);
end