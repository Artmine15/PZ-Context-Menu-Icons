local originalDoEquipOption = ISInventoryPaneContextMenu.doEquipOption;

function ISInventoryPaneContextMenu.doEquipOption(context, playerObj, isWeapon, items, player)
    originalDoEquipOption(context, playerObj, isWeapon, items, player);
    
    local option = GetOptionFromContext("ContextMenu_Equip_Primary", context);
    SetIconInVariation(getRedrawnIconPath, "EquipPrimary.png", option);
    
    option = GetOptionFromContext("ContextMenu_Equip_Secondary", context);
    SetIconInVariation(getRedrawnIconPath, "EquipSecondary.png", option);
end

local originalCreateMenu = ISInventoryPaneContextMenu.createMenu

function ISInventoryPaneContextMenu.createMenu(player, isInPlayerInventory, items, x, y, origin)
    local context = GetInventoryCreateMenuContext(originalCreateMenu, player, isInPlayerInventory, items, x, y, origin);

    local option = GetOptionFromContext("ContextMenu_Equip_on_your_Back", context);
    SetIconInVariation(getRedrawnIconPath, "EquipOnBack.png", option);

    option = GetOptionFromContext("ContextMenu_Equip_Two_Hands", context);
    SetIconInVariation(getRedrawnIconPath, "EquipTwoHands.png", option);

    return context;
end