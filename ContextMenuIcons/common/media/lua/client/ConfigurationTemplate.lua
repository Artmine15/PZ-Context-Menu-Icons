--[[
-- Checking a packs
ContextMenuIcons.iconPacks = ContextMenuIcons.iconPacks or {}
-- Defining your own pack category (Replace "simple" with your own)
ContextMenuIcons.iconPacks.simple = ContextMenuIcons.iconPacks.simple or {}

ContextMenuIcons.iconPacks.simple.options = {
    -- Option - icon texture name
    ["ContextMenu_Grab"] = "Grab.png",
    
    -- Option with icon and subOptions without icon
    ["ContextMenu_Eat"] = {
        subOptions = {
            ["ContextMenu_Eat_Quarter"] = "Quarter.png",
            ["ContextMenu_Eat_Half"] = "Half.png",
            ["ContextMenu_Eat_All"] = "Full.png"
        }
    },

    -- Option without icon and subOptions without icon
    ["ContextMenu_Eat"] = {
        iconTextureName = "Eat.png",
        subOptions = {
            ["ContextMenu_Eat_Quarter"] = "Quarter.png",
            ["ContextMenu_Eat_Half"] = "Half.png",
            ["ContextMenu_Eat_All"] = "Full.png"
        }
    },
}
--]]