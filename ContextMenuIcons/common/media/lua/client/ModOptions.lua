require "iconPacks/ConfigurationList"
require "Namespaces"

ContextMenuIcons.preferences = ContextMenuIcons.preferences or {}
local preferences = ContextMenuIcons.preferences

local function ContextMenuIconsPreferences() 
    -- Create the options object! This is required when adding the new Mod Options
    --- "UNIQUEID" should be replaced with your own unique ID. Possibly best to just use your mod's ID
    -- create(UID, name)   
    local options = PZAPI.ModOptions:create("ContextMenuIcons", "Context Menu Icons")

    -- addColorPicker(ID, name, r, g, b, a, _tooltip)
    
    local colorPicker = options:addColorPicker("icons_color_picker",  getText("UI_ContextMenuIcons_ColorPicker_Name"), 1, 1, 1, 1,  getText("UI_ContextMenuIcons_ColorPicker_Tooltip"))
    
    -- NOTE: Color is stored as table { r, g, b, a }
    
    -- addComboBox(ID, name, _tooltip)
    local comboBox = options:addComboBox("icons_iconpack_selection", getText("UI_ContextMenuIcons_IconPackSelector_Name"), getText("UI_ContextMenuIcons_IconPackSelector_Tooltip"))
    -- Create entries:
    --- addItem(name, selected)
    ---- whichever is set to "true" will be the initially selected box.
    --- NOTE: calling getValue on the option will return the number of the entry. 
    for packName, configuration in pairs(ContextMenuIcons.configurations) do
        comboBox:addItem(getText(packName), false) -- getValue(): 1
    end

    function options:apply()
        -- Получаем актуальные данные через getValue()
        local colorData = options:getOption("icons_color_picker"):getValue()
        --local packIndex = options:getOption("icons_iconpack_selection"):getValue()
        
        -- Применяем их в моде
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

    --PZAPI.ModOptions:save()
    -- NOTE:
    --- You DO NOT have to store the items like I have.
    --- You can retrieve your `options` object at anytime by doing: 
    ------ local options = PZAPI.ModOptions:getOptions("UNIQUEID")
    
    --- You can retrieve each individual option by doing:
    ------ local option = options:getOption(ID)
    ------- Where "ID" is the ID of the option you want to get.
    -------- In the above exmple, doing options:getOption("5") would return the colorPicker
end

ContextMenuIconsPreferences()