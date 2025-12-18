local originalDoWearClothingMenu = ISInventoryPaneContextMenu.doWearClothingMenu;

function ISInventoryPaneContextMenu.doWearClothingMenu(player, clothing, items, context)
    originalDoWearClothingMenu(player, clothing, items, context);
    local option = GetOptionFromContext("ContextMenu_Wear", context);
    if not option then return end;
    SetIcon(getOriginalIconPath, "Wear.png", option);
end

local originalDoClothingItemExtraMenu = ISInventoryPaneContextMenu.doClothingItemExtraMenu;

function ISInventoryPaneContextMenu.doClothingItemExtraMenu(context, clothingItemExtra, playerObj)
    originalDoClothingItemExtraMenu(context, clothingItemExtra, playerObj);
    local option = GetOptionFromContext("ContextMenu_Wear", context);
    if not option then return end;
    SetIcon(getOriginalIconPath, "Wear.png", option);
end