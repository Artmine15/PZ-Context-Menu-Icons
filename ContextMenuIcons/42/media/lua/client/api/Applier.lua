require "Namespaces"
require "api/Utils"
require "iconPacks/ConfigurationList"
require "ModOptions"

local utils = ContextMenuIcons.Utils

local currentIconPack = "simple"
local iconPack = ContextMenuIcons.configurations[currentIconPack]
local iconsColor = ContextMenuIcons.preferences.iconsColor

local staticNamedInventoryIcons = {}
local staticNamedWorldIcons = {}
local dynamicNamedInventoryIcons = {}
local dynamicNamedWorldIcons = {}

local function createIconTables(options, staticNamedIcons, dynamicNamedIcons)
    for optionName, details in pairs(options) do
        local localizedText = getText(optionName)

        if not string.find(localizedText, "%", 1, true) then
            staticNamedIcons[localizedText] = details
        else
            local pattern = localizedText:gsub("([%^%$%(%)%%%.%[%]%*%+%-%?])", "%%%1")
            pattern = pattern:gsub("%%%%%d", ".*")
            dynamicNamedIcons["^" .. pattern .. "$"] = details
        end
    end
end

local function createIconAllTables()
    createIconTables(iconPack.options.inventory, staticNamedInventoryIcons, dynamicNamedInventoryIcons)
    createIconTables(iconPack.options.world, staticNamedWorldIcons, dynamicNamedWorldIcons)
end

local function applyIcons(context, staticNamedIcons, dynamicNamedIcons)
    --utils.log(DebugType.Mod, "r: " .. iconsColor.r .. ", g: " .. iconsColor.g .. ", b: " .. iconsColor.b .. ", a: " .. iconsColor.a)
    if not context or not context.options then return end

    for i = 1, #context.options do
        local option = context.options[i]
        local details

        if option.name then
            details = staticNamedIcons[option.name]

            if not details then
                for pattern, data in pairs(dynamicNamedIcons) do
                    if string.match(option.name, pattern) then
                        details = data
                        break
                    end
                end
            end

            if details then
                if type(details) == "string" then
                    utils.setIcon(option, currentIconPack, details, iconsColor)
                elseif type(details) == "table" then
                    if details.iconTextureName then
                        utils.setIcon(option, currentIconPack, details.iconTextureName, iconsColor)
                    end

                    if details.subOptions and option.subOption then
                        local subContext = context:getSubMenu(option.subOption)
                        if subContext then
                            local subStatic = {}
                            local subDynamic = {}
                            createIconTables(details.subOptions, subStatic, subDynamic)
                            applyIcons(subContext, subStatic, subDynamic)
                        end
                    end
                end
            elseif not details and option.subOption then
                -- Pass through world object option like "Sink", "Bed" and etc.
                local subContext = context:getSubMenu(option.subOption)
                if subContext then
                    applyIcons(subContext, staticNamedIcons, dynamicNamedIcons)
                end
            end
        end
    end
end

local function applyInventoryIcons(player, context)
    applyIcons(context, staticNamedInventoryIcons, dynamicNamedInventoryIcons)
end

local function applyWorldIcons(player, context)
    applyIcons(context, staticNamedWorldIcons, dynamicNamedWorldIcons)
end

--Events.OnResolutionChange.Add(utils.resetIconTexturesCache())
Events.OnGameStart.Add(createIconAllTables)
Events.OnFillInventoryObjectContextMenu.Add(applyInventoryIcons)
Events.OnFillWorldObjectContextMenu.Add(applyWorldIcons)