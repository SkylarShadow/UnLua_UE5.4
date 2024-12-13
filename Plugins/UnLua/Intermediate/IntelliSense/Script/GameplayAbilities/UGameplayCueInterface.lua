---@class UGameplayCueInterface : UInterface
local UGameplayCueInterface = {}

---Call from a Cue handler event to continue checking for additional, more generic handlers. Called from the ability system blueprint library
function UGameplayCueInterface:ForwardGameplayCueToParent() end

---Internal function to map ufunctions directly to gameplaycue tags
---@param EventType integer
---@param Parameters FGameplayCueParameters
function UGameplayCueInterface:BlueprintCustomHandler(EventType, Parameters) end

