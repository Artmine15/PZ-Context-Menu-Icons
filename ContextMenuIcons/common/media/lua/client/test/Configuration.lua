ContextMenuIcons.iconPacks = ContextMenuIcons.iconPacks or {}
ContextMenuIcons.iconPacks.test = ContextMenuIcons.iconPacks.test or {}
ContextMenuIcons.iconPacks.test.options = ContextMenuIcons.iconPacks.test.options or {}

ContextMenuIcons.iconPacks.test.options.aliases = {
    sitOnGround = "32.png",
    walkTo = "642.png",
    sleepOnGround = "962.png"
}

local aliases = ContextMenuIcons.iconPacks.test.options.aliases

ContextMenuIcons.iconPacks.test.options.inventory = {
    
}

ContextMenuIcons.iconPacks.test.options.world = {
    ["ContextMenu_SitGround"] = aliases.sitOnGround,
    ["ContextMenu_Walk_to"] = aliases.walkTo,
    ["ContextMenu_SleepOnGround"] = aliases.sleepOnGround,
}