ContextMenuIcons.iconPacks = ContextMenuIcons.iconPacks or {}
ContextMenuIcons.iconPacks.simple = ContextMenuIcons.iconPacks.simple or {}

ContextMenuIcons.iconPacks.simple.options = {
    -- Inventory object context
    ["IGUI_invpanel_Inspect"] = "Inspect.png",
    ["ContextMenu_More"] = "Stub.png",
    ["ContextMenu_Attach"] = "Attach.png",
    ["ContextMenu_Unpack"] = "Unpack.png",
    ["ContextMenu_Smoke"] = "Smoke.png",
    ["IGUI_MakeUp"] = "MakeUp.png",

    ["ContextMenu_RenameBag"] = "Rename.png",
    ["ContextMenu_RenameFood"] = "Rename.png",
    ["ContextMenu_RenameMap"] = "Rename.png",

    ["ContextMenu_Rack"] = "Rack.png",
    ["ContextMenu_InsertMagazine"] = "InsertMagazine.png",
    ["ContextMenu_EjectMagazine"] = "EjectMagazine.png",
    ["ContextMenu_InsertBulletsInMagazine"] = "InsertBulletsInMagazine.png",
    ["ContextMenu_UnloadMagazine"] = "UnloadMagazine.png",

    ["ContextMenu_Grab"] = "Grab.png",
    ["ContextMenu_Grab_one"] = "Grab.png",
    ["ContextMenu_Grab_half"] = "GrabHalf.png",
    ["ContextMenu_Grab_all"] = "GrabAll.png",

    ["ContextMenu_Drop"] = "Drop.png",

    ["ContextMenu_PlaceItemOnGround"] = {
        iconTextureName = "Place.png",
        subOptions = {
            ["ContextMenu_PlaceOne"] = "Place.png",
            ["ContextMenu_PlaceHalf"] = "PlaceHalf.png",
            ["ContextMenu_PlaceAll"] = "PlaceAll.png"
        }
    },

    ["ContextMenu_Equip_Primary"] = "EquipPrimary.png",
    ["ContextMenu_Equip_Secondary"] = "EquipSecondary.png",
    ["ContextMenu_Equip_Two_Hands"] = "EquipTwoHands.png",
    ["ContextMenu_Unequip"] = "Unequip.png",
    
    ["ContextMenu_Eat"] = {
        subOptions = {
            ["ContextMenu_Eat_Quarter"] = "Quarter.png",
            ["ContextMenu_Eat_Half"] = "Half.png",
            ["ContextMenu_Eat_All"] = "Full.png"
        }
    },

    -- World object context
    ["ContextMenu_SitGround"] = "SitOnGround.png",
    ["ContextMenu_Walk_to"] = "WalkTo.png",

    ["ContextMenu_Close_door"] = "CloseDoor.png",
    ["ContextMenu_Open_door"] = "OpenDoor.png",
    ["ContextMenu_LockDoor"] = "Lock.png",
    ["ContextMenu_UnlockDoor"] = "Unlock.png",
    ["ContextMenu_Gardening"] = {
        iconTextureName = "Stub.png",
        subOptions = {
            ["ContextMenu_DigWithHands"] = "Dig.png",
            ["ContextMenu_RemoveGrass"] = "RemoveGrass.png"
        }
    },
}