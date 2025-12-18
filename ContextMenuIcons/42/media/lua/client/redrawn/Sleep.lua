local originalCampingDoSleepOption = ISCampingMenu.doSleepOption;

function ISCampingMenu.doSleepOption(context, bed, player, playerObj)
    originalCampingDoSleepOption(context, bed, player, playerObj);
    local option = GetOptionFromContext("ContextMenu_Sleep", context);
    if not option then return end;
    SetIcon(getRedrawnIconPath, "Sleep.png", option);
end

local originalDoSleepOption = ISWorldObjectContextMenu.doSleepOption

function ISWorldObjectContextMenu.doSleepOption(context, bed, player, playerObj)
    originalDoSleepOption(context, bed, player, playerObj);
    --if type(context) ~= "table" then return context end;
    local option = GetOptionFromContext("ContextMenu_Sleep", context);
    if not option then return end;
    SetIcon(getRedrawnIconPath, "Sleep.png", option);
end