---@class UAbilityAsync_WaitGameplayTagRemoved : UAbilityAsync_WaitGameplayTag
---@field public Removed MulticastDelegate
local UAbilityAsync_WaitGameplayTagRemoved = {}

---Wait until the specified gameplay tag is Removed from Target Actor's ability component
---If the tag is not present when this task is started, it will immediately broadcast the Removed event. It will keep listening as long as OnlyTriggerOnce = false.
---If used in an ability graph, this async action will wait even after activation ends. It's recommended to use WaitGameplayTagRemove instead.
---@param TargetActor AActor
---@param Tag FGameplayTag
---@param OnlyTriggerOnce boolean @[opt] 
---@return UAbilityAsync_WaitGameplayTagRemoved
function UAbilityAsync_WaitGameplayTagRemoved.WaitGameplayTagRemoveFromActor(TargetActor, Tag, OnlyTriggerOnce) end

