require "cmic/Initialization"
require "cmic/IconPacksList"
require "cmic/Utils"

--ContextMenuIcons.ModPreferences = ContextMenuIcons.ModPreferences or {}
--local v = ContextMenuIcons.ModPreferences
local utils = ContextMenuIcons.Utils

ContextMenuIcons.preferences = ContextMenuIcons.preferences or {}

local onApplyCallbacks = {}

ContextMenuIcons.Events = {
    OnPreferencesApplied = nil
}

function ContextMenuIcons.Events.OnPreferencesApplied(func)
    table.insert(onApplyCallbacks, func)
end 

local function getIconPackName(options)
    local packIndex = options:getOption("icons_iconpack_selection"):getValue()
    local i = 1
    for packName, _ in pairs(ContextMenuIcons.iconPacksList) do
        if i == packIndex then
            ContextMenuIcons.isNoneIconPackSelected = false
            return packName
        end
        i = i + 1
    end
    ContextMenuIcons.isNoneIconPackSelected = true
end

local function ContextMenuIconsPreferences() 
    local options = PZAPI.ModOptions:create("ContextMenuIcons", "Context Menu Icons")
    
    local comboBox = options:addComboBox("icons_iconpack_selection", getText("UI_ContextMenuIcons_IconPackSelector_Name"), getText("UI_ContextMenuIcons_IconPackSelector_Tooltip"))

    local iconPacksListSize = 0
    for packName, _ in pairs(ContextMenuIcons.iconPacksList) do
        comboBox:addItem(getText(packName), false) -- getValue(): 1
        iconPacksListSize = iconPacksListSize + 1
    end

    if iconPacksListSize == 0 then
        comboBox:addItem(getText("UI_None"), true)
    end
    
    local colorPicker = options:addColorPicker("icons_color_picker",  getText("UI_ContextMenuIcons_ColorPicker_Name"), 1, 1, 1, 1,  getText("UI_ContextMenuIcons_ColorPicker_Tooltip"))
    --[[
    local function updateColorPickerState()
        local packName = getIconPackName(options)
        local packSettings = configurations[packName] and configurations[packName].settings
        
        local isColorable = false
        if packSettings and packSettings.isColorable then
            isColorable = true
        end
        
        colorPicker:setEnabled(isColorable)
    end

    comboBox.onChange = function(self)
        updateColorPickerState()
    end
    --]]
    function options:apply()
        local iconPackName = getIconPackName(options)
        local iconPackSettings = nil
        if iconPackName ~= nil and not ContextMenuIcons.isNoneIconPackSelected then
            iconPackSettings = ContextMenuIcons.iconPacksList[iconPackName].settings
        end 
        local colorData = {r = 1, g = 1, b = 1, a = 1}
        if iconPackSettings and iconPackSettings.isColorable then 
            colorData = options:getOption("icons_color_picker"):getValue()
        end
        
        ContextMenuIcons.preferences.iconPackName = iconPackName
        ContextMenuIcons.preferences.iconsColor = colorData

        if onApplyCallbacks then
            for _, callback in pairs(onApplyCallbacks) do
                callback()
            end
        end
        
        utils.log("ContextMenuIcons: Settings Applied!")
    end

    options:apply()
end

local function applyPreferences()
    local options = PZAPI.ModOptions:getOptions("ContextMenuIcons")
    if options then
        options:apply()
    end
end

local function initialize()
    ContextMenuIconsPreferences()
    --local comboBox = PZAPI.ModOptions:getOptions("ContextMenuIcons"):getOption("icons_iconpack_selection")
end

Events.OnResetLua.Add(initialize)
Events.OnGameStart.Add(applyPreferences)