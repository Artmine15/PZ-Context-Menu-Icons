local originalDoSleepOption = ISWorldObjectContextMenu.doSleepOption

function ISWorldObjectContextMenu.doSleepOption(context, bed, player, playerObj)
    originalDoSleepOption(context, bed, player, playerObj);
    local option = GetOptionFromContext("ContextMenu_SleepOnGround", context);
    if not option then return end;
    SetIcon(getExpandedIconPath, "SleepOnGround.png", option);
end