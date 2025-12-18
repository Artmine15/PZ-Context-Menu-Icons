--[[
local originalOnFillWorldObjectContextMenu = ISSearchWindow.OnFillWorldObjectContextMenu;

function ISSearchWindow.OnFillWorldObjectContextMenu(player, context)
    originalOnFillWorldObjectContextMenu(player, context);
    --if not context then return context end
    --if type(context) ~= "table" then return context end
    
    SetIconInVariation("UI_investigate_area_window_show", getExpandedIconPath, "InvestigateArea.png", context);
    SetIconInVariation("UI_investigate_area_window_hide", getExpandedIconPath, "StopInvestigateArea.png", context);
end
--]]