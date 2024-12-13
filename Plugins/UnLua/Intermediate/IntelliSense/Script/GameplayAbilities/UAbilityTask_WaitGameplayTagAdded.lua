---@class UAbilityTask_WaitGameplayTagAdded : UAbilityTask_WaitGameplayTag
---@field public Added MulticastDelegate
local UAbilityTask_WaitGameplayTagAdded = {}

---Wait until the specified gameplay tag is Added. By default this will look at the owner of this ability. OptionalExternalTarget can be set to make this look at another actor's tags for changes.
---If the tag is already present when this task is started, it will immediately broadcast the Added event. It will keep listening as long as OnlyTriggerOnce = false.
---@param OwningAbility UGameplayAbility
---@param Tag FGameplayTag
---@param InOptionalExternalTarget AActor @[opt] 
---@param OnlyTriggerOnce boolean @[opt] 
---@return UAbilityTask_WaitGameplayTagAdded
function UAbilityTask_WaitGameplayTagAdded.WaitGameplayTagAdd(OwningAbility, Tag, InOptionalExternalTarget, OnlyTriggerOnce) end

