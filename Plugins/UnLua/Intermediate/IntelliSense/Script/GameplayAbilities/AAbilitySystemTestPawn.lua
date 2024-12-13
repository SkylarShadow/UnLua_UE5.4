---@class AAbilitySystemTestPawn : ADefaultPawn
---@field private AbilitySystemComponent UAbilitySystemComponent @DefaultPawn collision component
local AAbilitySystemTestPawn = {}

---Call from a Cue handler event to continue checking for additional, more generic handlers. Called from the ability system blueprint library
function AAbilitySystemTestPawn:ForwardGameplayCueToParent() end

---Internal function to map ufunctions directly to gameplaycue tags
---@param EventType integer
---@param Parameters FGameplayCueParameters
function AAbilitySystemTestPawn:BlueprintCustomHandler(EventType, Parameters) end

