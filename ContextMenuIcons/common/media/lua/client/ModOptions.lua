require "iconPacks/ConfigurationList"
require "Namespaces"

ContextMenuIcons.preferences = ContextMenuIcons.preferences or {}
local preferences = ContextMenuIcons.preferences

local function ContextMenuIconsPreferences() 
    local options = PZAPI.ModOptions:create("ContextMenuIcons", "Context Menu Icons")

    local colorPicker = options:addColorPicker("icons_color_picker",  getText("UI_ContextMenuIcons_ColorPicker_Name"), 1, 1, 1, 1,  getText("UI_ContextMenuIcons_ColorPicker_Tooltip"))
    
    local comboBox = options:addComboBox("icons_iconpack_selection", getText("UI_ContextMenuIcons_IconPackSelector_Name"), getText("UI_ContextMenuIcons_IconPackSelector_Tooltip"))
    for packName, configuration in pairs(ContextMenuIcons.configurations) do
        comboBox:addItem(getText(packName), false) -- getValue(): 1
    end

    function options:apply()
        local colorData = options:getOption("icons_color_picker"):getValue()
        --local packIndex = options:getOption("icons_iconpack_selection"):getValue()
        
        ContextMenuIcons.preferences.iconsColor = colorData
        --[[
        -- Логика для ComboBox (он возвращает индекс, а нам нужно имя пака)
        local i = 1
        for packName, _ in pairs(ContextMenuIcons.configurations) do
            if i == packIndex then
                ContextMenuIcons.preferences.currentIconPack = packName
                break
            end
            i = i + 1
        end
        --]]
        print("ContextMenuIcons: Settings Applied!")
        print("Color: ", colorData.r, colorData.g, colorData.b)
    end

    options:apply()
end

ContextMenuIconsPreferences()