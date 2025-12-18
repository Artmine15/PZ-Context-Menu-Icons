--rExpandedContextMenuIconBarricade
--[[
--]]

--rExpandedContextMenuIconClimbThrough
--[[
--]]

--rExpandedContextMenuIconCloseDoor
--[[
--]]

--rExpandedContextMenuIconCloseWindow
--[[
--]]

--rExpandedContextMenuIconLock
--[[

--]]

--rExpandedContextMenuIconOpenDoor
--[[
--]]

--rExpandedContextMenuIconOpenWindow
--]]

--rExpandedContextMenuIconPickUpBrokenGlass
--[[
--]]

--rExpandedContextMenuIconPlaceFilling
--[[
--]]

--rExpandedContextMenuIconRemoveBrokenGlass
--[[
--]]

--rExpandedContextMenuIconRemoveGrass
--[[
--]]

--rExpandedContextMenuIconRest
--[[
--]]
--[[
local originalCampingCreateMenu = ISCampingMenu.createMenu

function ISCampingMenu.doSleepOption(player, worldobjects, x, y, test)
    local context = originalCampingCreateMenu(player, worldobjects, x, y, test);
    if not context then return context end
    if type(context) ~= "table" then return context end
    local option = context:getOptionFromName(getText("ContextMenu_Rest"));
    if not option then return end
    option.iconTexture = getTexture("media/ui/icons/Expanded/Rest.png");
end
]]

--rExpandedContextMenuIconsFill
--[[
--]]

--rExpandedContextMenuIconSleepOnGround
--[[
--]]

--rExpandedContextMenuIconSmashWindow
--[[
--]]

--rExpandedContextMenuIconStoveSetting
--[[
--]]

--rExpandedContextMenuIconsWash
--[[
--]]

--rExpandedContextMenuIconUnbarricade
--[[
--]]

--rExpandedContextMenuIconUnlock
--[[
--]]

--rExpandedContextMenuIconWorldDrink
--[[
--]]

--rnExpandedContextMenuIconAreaInvestigation
--[[
--]]

--rnExpandedContextMenuIconEjectMagazine
--[[
--]]

--rnExpandedContextMenuIconInsertMagazine
--[[
--]]

--rnExpandedContextMenuIconUnloadMagazine
--[[
--]]