---@class UAbilityTask_WaitGameplayEffectApplied_Self : UAbilityTask_WaitGameplayEffectApplied
---@field public OnApplied MulticastDelegate
local UAbilityTask_WaitGameplayEffectApplied_Self = {}

---Wait until the owner *receives* a GameplayEffect from a given source (the source may be the owner too!). If TriggerOnce is true, this task will only return one time. Otherwise it will return everytime a GE is applied that meets the requirements over the life of the ability
---Optional External Owner can be used to run this task on someone else (not the owner of the ability). By default you can leave this empty.
---This version uses FGameplayTagQuery (more power) instead of FGameplayTagRequirements (faster)
---@param OwningAbility UGameplayAbility
---@param SourceFilter FGameplayTargetDataFilterHandle
---@param SourceTagQuery FGameplayTagQuery
---@param TargetTagQuery FGameplayTagQuery
---@param TriggerOnce boolean @[opt] 
---@param OptionalExternalOwner AActor @[opt] 
---@param ListenForPeriodicEffect boolean @[opt] 
---@return UAbilityTask_WaitGameplayEffectApplied_Self
function UAbilityTask_WaitGameplayEffectApplied_Self.WaitGameplayEffectAppliedToSelf_Query(OwningAbility, SourceFilter, SourceTagQuery, TargetTagQuery, TriggerOnce, OptionalExternalOwner, ListenForPeriodicEffect) end

---Wait until the owner *receives* a GameplayEffect from a given source (the source may be the owner too!). If TriggerOnce is true, this task will only return one time. Otherwise it will return everytime a GE is applied that meets the requirements over the life of the ability
---Optional External Owner can be used to run this task on someone else (not the owner of the ability). By default you can leave this empty.
---@param OwningAbility UGameplayAbility
---@param SourceFilter FGameplayTargetDataFilterHandle
---@param SourceTagRequirements FGameplayTagRequirements
---@param TargetTagRequirements FGameplayTagRequirements
---@param TriggerOnce boolean @[opt] 
---@param OptionalExternalOwner AActor @[opt] 
---@param ListenForPeriodicEffect boolean @[opt] 
---@return UAbilityTask_WaitGameplayEffectApplied_Self
function UAbilityTask_WaitGameplayEffectApplied_Self.WaitGameplayEffectAppliedToSelf(OwningAbility, SourceFilter, SourceTagRequirements, TargetTagRequirements, TriggerOnce, OptionalExternalOwner, ListenForPeriodicEffect) end

