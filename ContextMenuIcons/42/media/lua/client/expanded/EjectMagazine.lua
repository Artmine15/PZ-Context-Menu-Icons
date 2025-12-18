local originalDoReloadMenuForWeapon = ISInventoryPaneContextMenu.doReloadMenuForWeapon;

function ISInventoryPaneContextMenu.doReloadMenuForWeapon(playerObj, weapon, context)
    originalDoReloadMenuForWeapon(playerObj, weapon, context);
    local option = GetOptionFromContext("ContextMenu_EjectMagazine", context);
    if not option then return end;
    SetIcon(getExpandedIconPath, "EjectMagazine.png", option);
end