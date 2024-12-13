---@class UAbilityTask_WaitGameplayEffectApplied_Target : UAbilityTask_WaitGameplayEffectApplied
---@field public OnApplied MulticastDelegate
local UAbilityTask_WaitGameplayEffectApplied_Target = {}

---Wait until the owner (or External Owner) applies a GameplayEffect to a Target (the target may be the owner too!). If TriggerOnce is true, this task will only return one time. Otherwise it will return everytime a GE is applied that meets the requirements over the life of the ability
---Optional External Owner can be used to run this task on someone else (not the owner of the ability). By default you can leave this empty.
---@param OwningAbility UGameplayAbility
---@param SourceFilter FGameplayTargetDataFilterHandle
---@param SourceTagQuery FGameplayTagQuery
---@param TargetTagQuery FGameplayTagQuery
---@param TriggerOnce boolean @[opt] 
---@param OptionalExternalOwner AActor @[opt] 
---@param ListenForPeriodicEffect boolean @[opt] 
---@return UAbilityTask_WaitGameplayEffectApplied_Target
function UAbilityTask_WaitGameplayEffectApplied_Target.WaitGameplayEffectAppliedToTarget_Query(OwningAbility, SourceFilter, SourceTagQuery, TargetTagQuery, TriggerOnce, OptionalExternalOwner, ListenForPeriodicEffect) end

---Wait until the owner (or External Owner) applies a GameplayEffect to a Target (the target may be the owner too!). If TriggerOnce is true, this task will only return one time. Otherwise it will return everytime a GE is applied that meets the requirements over the life of the ability
---Optional External Owner can be used to run this task on someone else (not the owner of the ability). By default you can leave this empty.
---@param OwningAbility UGameplayAbility
---@param TargetFilter FGameplayTargetDataFilterHandle
---@param SourceTagRequirements FGameplayTagRequirements
---@param TargetTagRequirements FGameplayTagRequirements
---@param TriggerOnce boolean @[opt] 
---@param OptionalExternalOwner AActor @[opt] 
---@param ListenForPeriodicEffects boolean @[opt] 
---@return UAbilityTask_WaitGameplayEffectApplied_Target
function UAbilityTask_WaitGameplayEffectApplied_Target.WaitGameplayEffectAppliedToTarget(OwningAbility, TargetFilter, SourceTagRequirements, TargetTagRequirements, TriggerOnce, OptionalExternalOwner, ListenForPeriodicEffects) end

