require "Namespaces"
require "api/Utils"
require "ConfigurationList"

local utils = ContextMenuIcons.Utils

local function applyIcons(player, context)
    if not context then
        utils.log(DebugType.Mod, "Invalid context")
        return
    end

    local currentIconPack = "simple"

    local iconPack = ContextMenuIcons.configurations[currentIconPack]

    for optionName, details in pairs(iconPack.options) do
        local option = utils.getOptionFromContext(context, optionName)

        if option then
            if type(details) == "string" then
                utils.setIcon(option, currentIconPack, details)
            elseif type(details) == "table" then
                if details.iconTextureName ~= nil then
                    utils.setIcon(option, currentIconPack, details.iconTextureName)
                end

                local subContext = context:getSubMenu(option.subOption)

                if not subContext then
                    utils.log(DebugType.Mod, "Invalid subContext")
                    return
                end

                for subOptionName, iconTextureName in pairs(details.subOptions) do
                    local subOption = utils.getOptionFromContext(subContext, subOptionName)
                    if subOption then
                        utils.setIcon(subOption, currentIconPack, iconTextureName)
                    end
                end
            end
        end
    end
end

--Events.OnPreFillWorldObjectContextMenu.Add(getCachedIconTexture)
Events.OnFillInventoryObjectContextMenu.Add(applyIcons)
Events.OnFillWorldObjectContextMenu.Add(applyIcons)