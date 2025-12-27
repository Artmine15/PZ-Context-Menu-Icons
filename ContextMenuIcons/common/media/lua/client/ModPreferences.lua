require "Namespaces"
require "iconPacks/ConfigurationList"
require "api/Utils"

ContextMenuIcons.ModPreferences = ContextMenuIcons.ModPreferences or {}
local v = ContextMenuIcons.ModPreferences

local utils = ContextMenuIcons.Utils

ContextMenuIcons.preferences = ContextMenuIcons.preferences or {}

local onApplyCallbacks = {}

ContextMenuIcons.Events = {
    OnPreferencesApplied = nil
}

function ContextMenuIcons.Events.OnPreferencesApplied(func)
    table.insert(onApplyCallbacks, func)
end 

local function ContextMenuIconsPreferences() 
    local options = PZAPI.ModOptions:create("ContextMenuIcons", "Context Menu Icons")

    local colorPicker = options:addColorPicker("icons_color_picker",  getText("UI_ContextMenuIcons_ColorPicker_Name"), 1, 1, 1, 1,  getText("UI_ContextMenuIcons_ColorPicker_Tooltip"))
    
    local comboBox = options:addComboBox("icons_iconpack_selection", getText("UI_ContextMenuIcons_IconPackSelector_Name"), getText("UI_ContextMenuIcons_IconPackSelector_Tooltip"))
    for packName, _ in pairs(ContextMenuIcons.configurations) do
        comboBox:addItem(getText(packName), false) -- getValue(): 1
    end

    function options:apply()
        local colorData = options:getOption("icons_color_picker"):getValue()
        local packIndex = options:getOption("icons_iconpack_selection"):getValue()
        
        ContextMenuIcons.preferences.iconsColor = colorData
        local i = 1
        for packName, _ in pairs(ContextMenuIcons.configurations) do
            if i == packIndex then
                ContextMenuIcons.preferences.iconPack = packName
                break
            end
            i = i + 1
        end

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
        options:apply() -- Применяем сохраненные настройки
    end
end

Events.OnGameStart.Add(applyPreferences)