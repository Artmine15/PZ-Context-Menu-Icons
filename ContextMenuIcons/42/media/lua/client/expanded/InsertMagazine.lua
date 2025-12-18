local originalDoReloadMenuForWeapon = ISInventoryPaneContextMenu.doReloadMenuForWeapon;

function ISInventoryPaneContextMenu.doReloadMenuForWeapon(playerObj, weapon, context)
    originalDoReloadMenuForWeapon(playerObj, weapon, context);
    local option = GetOptionFromContext("ContextMenu_InsertMagazine", context);
    if not option then return end;
    SetIcon(getExpandedIconPath, "InsertMagazine.png", option);
end

local originalDoReloadMenuForMagazine = ISInventoryPaneContextMenu.doReloadMenuForMagazine;

function ISInventoryPaneContextMenu.doReloadMenuForMagazine(playerObj, magazine, context)
    originalDoReloadMenuForMagazine(playerObj, magazine, context);
    local option = GetOptionFromContext("ContextMenu_InsertMagazine", context);
    if not option then return end;
    SetIcon(getExpandedIconPath, "InsertMagazine.png", option);
end