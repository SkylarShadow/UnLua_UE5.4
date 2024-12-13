---@class UAbilityTask_WaitGameplayEvent : UAbilityTask
---@field public EventReceived MulticastDelegate
---@field public OptionalExternalTarget UAbilitySystemComponent
local UAbilityTask_WaitGameplayEvent = {}

---Wait until the specified gameplay tag event is triggered. By default this will look at the owner of this ability. OptionalExternalTarget can be set to make this look at another actor's tags for changes
---It will keep listening as long as OnlyTriggerOnce = false
---If OnlyMatchExact = false it will trigger for nested tags
---@param OwningAbility UGameplayAbility
---@param EventTag FGameplayTag
---@param OptionalExternalTarget AActor @[opt] 
---@param OnlyTriggerOnce boolean @[opt] 
---@param OnlyMatchExact boolean @[opt] 
---@return UAbilityTask_WaitGameplayEvent
function UAbilityTask_WaitGameplayEvent.WaitGameplayEvent(OwningAbility, EventTag, OptionalExternalTarget, OnlyTriggerOnce, OnlyMatchExact) end

