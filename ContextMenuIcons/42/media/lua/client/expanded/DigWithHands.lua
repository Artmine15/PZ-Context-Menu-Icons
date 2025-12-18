local originalDoFarmingMenu2 = ISFarmingMenu.doFarmingMenu2;

function ISFarmingMenu.doFarmingMenu2(player, context, worldobjects, test)
    originalDoFarmingMenu2(player, context, worldobjects, test);
    local option = GetOptionFromContext("ContextMenu_DigWithHands", context);
    if not option then return end;
    SetIcon(getExpandedIconPath, "Dig.png", option);
end