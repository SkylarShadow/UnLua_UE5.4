---This class defines a node to wait on a gameplay tag query.
---@class UAbilityTask_WaitGameplayTagQuery : UAbilityTask
---@field protected Triggered MulticastDelegate @This delegate will be triggered when the trigger condition has been met.
---@field protected OptionalExternalTarget UAbilitySystemComponent @This is the optional external target to use when getting the ASC to get tags from.
local UAbilityTask_WaitGameplayTagQuery = {}

---Wait until the given gameplay tag query has become true or false, based on TriggerCondition.
---By default this will look at the owner of this ability. OptionalExternalTarget can be set to
---make this look at another actor's tags for changes.  If the the tag query already satisfies
---the TriggerCondition when this task is started, it will immediately broadcast the Triggered
---event. It will keep listening as long as bOnlyTriggerOnce = false.
---@param OwningAbility UGameplayAbility
---@param TagQuery FGameplayTagQuery
---@param InOptionalExternalTarget AActor @[opt] 
---@param TriggerCondition EWaitGameplayTagQueryTriggerCondition @[opt] 
---@param bOnlyTriggerOnce boolean @[opt] 
---@return UAbilityTask_WaitGameplayTagQuery
function UAbilityTask_WaitGameplayTagQuery.WaitGameplayTagQuery(OwningAbility, TagQuery, InOptionalExternalTarget, TriggerCondition, bOnlyTriggerOnce) end

---This will update the tags in the TargetTags container to reflect that tags that are on the target ASC.
---@param Tag FGameplayTag
---@param NewCount integer
function UAbilityTask_WaitGameplayTagQuery:UpdateTargetTags(Tag, NewCount) end

