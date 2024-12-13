---This class defines an async node to wait on a gameplay tag query.
---@class UAbilityAsync_WaitGameplayTagQuery : UAbilityAsync
---@field protected Triggered MulticastDelegate @This delegate will be triggered when the trigger condition has been met.
local UAbilityAsync_WaitGameplayTagQuery = {}

---Wait until the given gameplay tag query has become true or false, based on TriggerCondition, looking at the target actors ASC.
---If the the tag query already satisfies the TriggerCondition when this task is started, it will immediately broadcast the Triggered
---event. It will keep listening as long as bOnlyTriggerOnce = false.
---If used in an ability graph, this async action will wait even after activation ends. It's recommended to use WaitGameplayTagQuery instead.
---@param TargetActor AActor
---@param TagQuery FGameplayTagQuery
---@param TriggerCondition EWaitGameplayTagQueryTriggerCondition @[opt] 
---@param bOnlyTriggerOnce boolean @[opt] 
---@return UAbilityAsync_WaitGameplayTagQuery
function UAbilityAsync_WaitGameplayTagQuery.WaitGameplayTagQueryOnActor(TargetActor, TagQuery, TriggerCondition, bOnlyTriggerOnce) end

