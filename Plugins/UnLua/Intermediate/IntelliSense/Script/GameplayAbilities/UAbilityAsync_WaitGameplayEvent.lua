---@class UAbilityAsync_WaitGameplayEvent : UAbilityAsync
---@field public EventReceived MulticastDelegate
local UAbilityAsync_WaitGameplayEvent = {}

---Wait until the specified gameplay tag event is triggered on a target ability system component
---It will keep listening as long as OnlyTriggerOnce = false
---If OnlyMatchExact = false it will trigger for nested tags
---If used in an ability graph, this async action will wait even after activation ends. It's recommended to use WaitGameplayEvent instead.
---@param TargetActor AActor
---@param EventTag FGameplayTag
---@param OnlyTriggerOnce boolean @[opt] 
---@param OnlyMatchExact boolean @[opt] 
---@return UAbilityAsync_WaitGameplayEvent
function UAbilityAsync_WaitGameplayEvent.WaitGameplayEventToActor(TargetActor, EventTag, OnlyTriggerOnce, OnlyMatchExact) end

---@param Payload FGameplayEventData
function UAbilityAsync_WaitGameplayEvent:EventReceivedDelegate__DelegateSignature(Payload) end

