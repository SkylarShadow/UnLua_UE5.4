---@class UAbilityAsync_WaitGameplayTagAdded : UAbilityAsync_WaitGameplayTag
---@field public Added MulticastDelegate
local UAbilityAsync_WaitGameplayTagAdded = {}

---Wait until the specified gameplay tag is Added to Target Actor's ability component
---If the tag is already present when this task is started, it will immediately broadcast the Added event. It will keep listening as long as OnlyTriggerOnce = false.
---If used in an ability graph, this async action will wait even after activation ends. It's recommended to use WaitGameplayTagAdd instead.
---@param TargetActor AActor
---@param Tag FGameplayTag
---@param OnlyTriggerOnce boolean @[opt] 
---@return UAbilityAsync_WaitGameplayTagAdded
function UAbilityAsync_WaitGameplayTagAdded.WaitGameplayTagAddToActor(TargetActor, Tag, OnlyTriggerOnce) end

