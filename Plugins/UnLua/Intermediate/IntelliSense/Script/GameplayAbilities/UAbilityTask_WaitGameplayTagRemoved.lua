---@class UAbilityTask_WaitGameplayTagRemoved : UAbilityTask_WaitGameplayTag
---@field public Removed MulticastDelegate
local UAbilityTask_WaitGameplayTagRemoved = {}

---Wait until the specified gameplay tag is Removed. By default this will look at the owner of this ability. OptionalExternalTarget can be set to make this look at another actor's tags for changes.
---If the tag is not present when this task is started, it will immediately broadcast the Removed event. It will keep listening as long as OnlyTriggerOnce = false.
---@param OwningAbility UGameplayAbility
---@param Tag FGameplayTag
---@param InOptionalExternalTarget AActor @[opt] 
---@param OnlyTriggerOnce boolean @[opt] 
---@return UAbilityTask_WaitGameplayTagRemoved
function UAbilityTask_WaitGameplayTagRemoved.WaitGameplayTagRemove(OwningAbility, Tag, InOptionalExternalTarget, OnlyTriggerOnce) end

