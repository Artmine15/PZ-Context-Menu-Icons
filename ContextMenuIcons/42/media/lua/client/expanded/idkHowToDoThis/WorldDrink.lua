--[[
local originalDoDrinkWaterMenu = ISWorldObjectContextMenu.doDrinkWaterMenu;

function ISWorldObjectContextMenu.doDrinkWaterMenu(object, player, context)
    originalDoDrinkWaterMenu(object, player, context);
    --local subContext = context:getSubMenu(option.subOption);
    --if not subContext then return context end

    WorldSetIcon("ContextMenu_Drink", getExpandedIconPath, "Drink.png", context);
end
--]]