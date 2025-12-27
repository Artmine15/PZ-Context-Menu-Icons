require "Namespaces"
require "iconPacks/ConfigurationList"
require "api/Utils"

ContextMenuIcons.ModPreferences = ContextMenuIcons.ModPreferences or {}
local v = ContextMenuIcons.ModPreferences

local utils = ContextMenuIcons.Utils
local configurations = ContextMenuIcons.configurations

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
        for packName, _ in pairs(configurations) do
            if i == packIndex then
                return packName
            end
            i = i + 1
        end
end

local function ContextMenuIconsPreferences() 
    local options = PZAPI.ModOptions:create("ContextMenuIcons", "Context Menu Icons")
    
    local comboBox = options:addComboBox("icons_iconpack_selection", getText("UI_ContextMenuIcons_IconPackSelector_Name"), getText("UI_ContextMenuIcons_IconPackSelector_Tooltip"))
    for packName, _ in pairs(configurations) do
        comboBox:addItem(getText(packName), false) -- getValue(): 1
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
        local iconPackSettings = configurations[getIconPackName(options)].settings
        local colorData
        if iconPackSettings and iconPackSettings.isColorable then 
            colorData = options:getOption("icons_color_picker"):getValue()
        else
            colorData = {r = 1, g = 1, b = 1, a = 1}
        end
        
        ContextMenuIcons.preferences.iconPackName = getIconPackName(options)
        ContextMenuIcons.preferences.iconsColor = colorData

        if onApplyCallbacks then
            for _, callback in pairs(onApplyCallbacks) do
                callback()
            end
        end
        
        utils.log("ContextMenuIcons: Settings Applied!")
        utils.log("Color: ", colorData.r, colorData.g, colorData.b)
    end
end

ContextMenuIconsPreferences()

local function applyPreferences()
    local options = PZAPI.ModOptions:getOptions("ContextMenuIcons")
    if options then
        options:apply()
    end
end

Events.OnGameStart.Add(applyPreferences)