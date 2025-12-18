local originalDoReloadMenuForWeapon = ISInventoryPaneContextMenu.doReloadMenuForWeapon

function ISInventoryPaneContextMenu.doReloadMenuForWeapon(playerObj, weapon, context)
    originalDoReloadMenuForWeapon(playerObj, weapon, context);
    local option = context:getOptionFromName(getText("ContextMenu_Rack", weapon:getDisplayName()));
    if not option then return context end;
    SetIcon(getExpandedIconPath, "Rack.png", option);
end