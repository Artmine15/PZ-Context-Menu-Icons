require "cmic/Initialization"
require "cmic/Utils"
require "cmic/IconHandler"
require "cmic/ConfigurationList"
require "cmic/ModPreferences"

local utils = ContextMenuIcons.Utils
local iconHandler = ContextMenuIcons.IconHandler

local staticNamedInventoryIcons = {}
local staticNamedWorldIcons = {}
local dynamicNamedInventoryIcons = {}
local dynamicNamedWorldIcons = {}

local function resetIconTables()
    staticNamedInventoryIcons = {}
    staticNamedWorldIcons = {}
    dynamicNamedInventoryIcons = {}
    dynamicNamedWorldIcons = {}
end

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

local function createAllIconTables()
    if ContextMenuIcons.isIconPacksListEmpty then return end

    resetIconTables()
    for packName, iconPack in pairs(ContextMenuIcons.iconPacksList) do
        createIconTables(iconPack.options.inventory, staticNamedInventoryIcons, dynamicNamedInventoryIcons)
        createIconTables(iconPack.options.world, staticNamedWorldIcons, dynamicNamedWorldIcons)
    end
end

local function applyIcons(context, staticNamedIcons, dynamicNamedIcons)
    if not context or not context.options or ContextMenuIcons.isIconPacksListEmpty then return end

    local iconPackList = ContextMenuIcons.iconPacksList

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
                    iconHandler.setIcon(option, iconPackList, details)
                elseif type(details) == "table" then
                    if details.iconTextureName then
                        iconHandler.setIcon(option, iconPackList, details.iconTextureName)
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

Events.OnGameStart.Add(createAllIconTables)
Events.OnFillInventoryObjectContextMenu.Add(applyInventoryIcons)
Events.OnFillWorldObjectContextMenu.Add(applyWorldIcons)