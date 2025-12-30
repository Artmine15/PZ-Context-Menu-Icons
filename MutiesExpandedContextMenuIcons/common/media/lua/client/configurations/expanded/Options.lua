require "configurations/expanded/Aliases"

local aliases = ContextMenuIcons.iconPacks.expanded.options.aliases

ContextMenuIcons.iconPacks.expanded.options.inventory = {
    ["ContextMenu_PutInContainer"] = aliases.putInContainer,

    ["ContextMenu_Rack"] = aliases.rackWeapon,
    ["ContextMenu_InsertMagazine"] = aliases.insertMagazine,
    ["ContextMenu_EjectMagazine"] = aliases.ejectMagazine,
    ["ContextMenu_InsertBulletsInMagazine"] = aliases.insertBulletsInMagazine,
    ["ContextMenu_UnloadMagazine"] = aliases.unloadMagazine,

    ["ContextMenu_Grab"] = aliases.grab,
    ["ContextMenu_Grab_one"] = aliases.grab,
    ["ContextMenu_Grab_half"] = aliases.grabHalf,
    ["ContextMenu_Grab_all"] = aliases.grabAll,

    ["ContextMenu_PlaceItemOnGround"] = {
        subOptions = {
            ["ContextMenu_PlaceHalf"] = aliases.placeHalf,
            ["ContextMenu_PlaceAll"] = aliases.placeAll
        }
    },
}

ContextMenuIcons.iconPacks.expanded.options.world = {
    ["ContextMenu_SleepOnGround"] = aliases.sleepOnGround,
    ["ContextMenu_Rest"] = aliases.rest,
    ["ContextMenu_Wash"] = aliases.wash,
    ["ContextMenu_StoveSetting"] = aliases.settings,

    ["ContextMenu_Fill"] = {
        iconTextureName = aliases.fill,
        subOptions = {
            ["ContextMenu_FillOne"] = aliases.fill,
            ["ContextMenu_FillAll"] = aliases.fillAll
        }
    },

    ["ContextMenu_Close_door"] = aliases.closeDoor,
    ["ContextMenu_Open_door"] = aliases.openDoor,
    ["ContextMenu_LockDoor"] = aliases.lockDoor,
    ["ContextMenu_UnlockDoor"] = aliases.unlockDoor,

    ["ContextMenu_Close_window"] = aliases.closeWindow,
    ["ContextMenu_Open_window"] = aliases.openWindow,
    ["ContextMenu_Smash_window"] = aliases.smashWindow,
    ["ContextMenu_RemoveBrokenGlass"] = aliases.removeBrokenGlass,
    ["ContextMenu_PickupBrokenGlass"] = aliases.pickupBrokenGlass,
    ["ContextMenu_Climb_through"] = aliases.climbThrough,

    ["ContextMenu_Gardening"] = {
        iconTextureName = aliases.gardening,
        subOptions = {
            ["ContextMenu_DigWithHands"] = aliases.digWithHands,
            ["ContextMenu_RemoveGrass"] = aliases.removeGrass
        }
    },

    ["ContextMenu_GeneratorInfo"] = aliases.info,
    ["ContextMenu_GeneratorTake"] = aliases.grab,
}