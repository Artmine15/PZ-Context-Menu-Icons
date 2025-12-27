require "Namespaces"

ContextMenuIcons.Utils = ContextMenuIcons.Utils or {}
local v = ContextMenuIcons.Utils

function v.logTyped(debugType, message)
    if getDebug() == false or message == nil then return end
    
    DebugLog.log(debugType, tostring(message))
end

function v.log(message)
    if getDebug() == false or message == nil then return end
    
    DebugLog.log(DebugType.Mod, tostring(message))
end