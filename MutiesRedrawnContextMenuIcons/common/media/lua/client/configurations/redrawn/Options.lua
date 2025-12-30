require "configurations/redrawn/Aliases"

local aliases = ContextMenuIcons.iconPacks.redrawn.options.aliases

ContextMenuIcons.iconPacks.redrawn.options.inventory = {
    ["IGUI_invpanel_Inspect"] = aliases.inspect,
    ["ContextMenu_Attach"] = aliases.attach,
    ["ContextMenu_Unpack"] = aliases.unpack,
    ["ContextMenu_Smoke"] = aliases.smoke,
    ["IGUI_MakeUp"] = aliases.makeUp,
    ["ContextMenu_Drop"] = aliases.drop,

    ["ContextMenu_RenameBag"] = aliases.rename,
    ["ContextMenu_RenameFood"] = aliases.rename,
    ["ContextMenu_RenameMap"] = aliases.rename,

    ["ContextMenu_Equip_Primary"] = aliases.equipPrimary,
    ["ContextMenu_Equip_Secondary"] = aliases.equipSecondary,
    ["ContextMenu_Equip_Two_Hands"] = aliases.equipTwoHands,
    ["ContextMenu_Unequip"] = aliases.unequip,

    ["ContextMenu_PlaceItemOnGround"] = {
        iconTextureName = aliases.place,
        subOptions = {
            ["ContextMenu_PlaceOne"] = aliases.place,
        }
    },
    
    ["ContextMenu_Eat"] = {
        subOptions = aliases.portionsOptions
    },

    ["ContextMenu_OpenAndEat"] = {
        subOptions = aliases.portionsOptions
    },

    ["ContextMenu_Drink"] = {
        subOptions = aliases.portionsOptions
    },

    ["ContextMenu_OpenAndDrink"] = {
        subOptions = aliases.portionsOptions
    },
}

ContextMenuIcons.iconPacks.redrawn.options.world = {
    ["ContextMenu_SitGround"] = aliases.sitOnGround,
    ["ContextMenu_Walk_to"] = aliases.walkTo,
    ["ContextMenu_Sleep"] = aliases.sleep,
    ["ContextMenu_Drink"] = aliases.drink,
    ["ContextMenu_DropNamedItem"] = aliases.drop,
}