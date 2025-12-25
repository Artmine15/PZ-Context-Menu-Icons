require "Namespaces"

ContextMenuIcons.Utils = ContextMenuIcons.Utils or {}
local v = ContextMenuIcons.Utils

function v.log(debugType, message)
    if getDebug() == false or message == nil then return end
    
    DebugLog.log(debugType, tostring(message))
end