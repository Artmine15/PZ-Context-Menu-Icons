ContextMenuIcons.iconPacks = ContextMenuIcons.iconPacks or {}
ContextMenuIcons.iconPacks.simple = ContextMenuIcons.iconPacks.simple or {}
ContextMenuIcons.iconPacks.simple.options = ContextMenuIcons.iconPacks.simple.options or {}

ContextMenuIcons.iconPacks.simple.options.aliases = {
    stub = "Stub.png",
    inspect = "Inspect.png",
    attach = "Attach.png",
    unpack = "Unpack.png",
    smoke = "Smoke.png",
    makeUp = "MakeUp.png",
    rename = "Rename.png",
    drop = "Drop.png",
    putInContainer = "PutInContainer.png",

    rackWeapon = "Rack.png",
    insertMagazine = "InsertMagazine.png",
    ejectMagazine = "EjectMagazine.png",
    insertBulletsInMagazine = "InsertBulletsInMagazine.png",
    unloadMagazine = "UnloadMagazine.png",

    grab = "Grab.png",
    grabHalf = "GrabHalf.png",
    grabAll = "GrabAll.png",

    place = "Place.png",
    placeHalf = "PlaceHalf.png",
    placeAll = "PlaceAll.png",

    equipPrimary = "EquipPrimary.png",
    equipSecondary = "EquipSecondary.png",
    equipTwoHands = "EquipTwoHands.png",
    unequip = "Unequip.png",

    portionsOptions = {
        ["ContextMenu_Eat_Quarter"] = "Quarter.png",
        ["ContextMenu_Eat_Half"] = "Half.png",
        ["ContextMenu_Eat_All"] = "Full.png"
    },

    drink = "Drink.png",

    sitOnGround = "SitOnGround.png",
    walkTo = "WalkTo.png",
    sleep = "Sleep.png",
    sleepOnGround = "SleepOnGround.png",
    rest = "Rest.png",
    wash = "Wash.png",
    settings = "Settings.png",

    fill = "Fill.png",
    fillAll = "FillAll.png",

    closeDoor = "CloseDoor.png",
    openDoor = "OpenDoor.png",
    lockDoor = "Lock.png",
    unlockDoor = "Unlock.png",

    closeWindow = "CloseWindow.png",
    openWindow = "OpenWindow.png",
    smashWindow = "SmashWindow.png",
    removeBrokenGlass = "RemoveBrokenGlass.png",
    pickupBrokenGlass = "PickupBrokenGlass.png",
    climbThrough = "ClimbThrough.png",

    digWithHands = "Dig.png",
    removeGrass = "RemoveGrass.png"
}

local aliases = ContextMenuIcons.iconPacks.simple.options.aliases

ContextMenuIcons.iconPacks.simple.options.inventory = {
    ["IGUI_invpanel_Inspect"] = aliases.inspect,
    ["ContextMenu_More"] = aliases.stub,
    ["ContextMenu_Attach"] = aliases.attach,
    ["ContextMenu_Unpack"] = aliases.unpack,
    ["ContextMenu_Smoke"] = aliases.smoke,
    ["IGUI_MakeUp"] = aliases.makeUp,
    ["ContextMenu_Drop"] = aliases.drop,
    ["ContextMenu_PutInContainer"] = aliases.putInContainer,

    ["ContextMenu_RenameBag"] = aliases.rename,
    ["ContextMenu_RenameFood"] = aliases.rename,
    ["ContextMenu_RenameMap"] = aliases.rename,

    ["ContextMenu_Rack"] = aliases.rackWeapon,
    ["ContextMenu_InsertMagazine"] = aliases.insertMagazine,
    ["ContextMenu_EjectMagazine"] = aliases.ejectMagazine,
    ["ContextMenu_InsertBulletsInMagazine"] = aliases.insertBulletsInMagazine,
    ["ContextMenu_UnloadMagazine"] = aliases.unloadMagazine,

    ["ContextMenu_Grab"] = aliases.grab,
    ["ContextMenu_Grab_one"] = aliases.grab,
    ["ContextMenu_Grab_half"] = aliases.grabHalf,
    ["ContextMenu_Grab_all"] = aliases.grabAll,

    ["ContextMenu_Equip_Primary"] = aliases.equipPrimary,
    ["ContextMenu_Equip_Secondary"] = aliases.equipSecondary,
    ["ContextMenu_Equip_Two_Hands"] = aliases.equipTwoHands,
    ["ContextMenu_Unequip"] = aliases.unequip,

    ["ContextMenu_PlaceItemOnGround"] = {
        iconTextureName = aliases.place,
        subOptions = {
            ["ContextMenu_PlaceOne"] = aliases.place,
            ["ContextMenu_PlaceHalf"] = aliases.placeHalf,
            ["ContextMenu_PlaceAll"] = aliases.placeAll
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

ContextMenuIcons.iconPacks.simple.options.world = {
    ["ContextMenu_SitGround"] = aliases.sitOnGround,
    ["ContextMenu_Walk_to"] = aliases.walkTo,

    ["ContextMenu_SleepOnGround"] = aliases.sleepOnGround,
    ["ContextMenu_Sleep"] = aliases.sleep,
    ["ContextMenu_Rest"] = aliases.rest,
    ["ContextMenu_Wash"] = aliases.wash,
    ["ContextMenu_Drink"] = aliases.drink,
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
        iconTextureName = aliases.stub,
        subOptions = {
            ["ContextMenu_DigWithHands"] = aliases.digWithHands,
            ["ContextMenu_RemoveGrass"] = aliases.removeGrass
        }
    },

    ["ContextMenu_GeneratorInfo"] = aliases.stub,
}