---@class UAbilityTask_WaitGameplayEffectBlockedImmunity : UAbilityTask
---@field public Blocked MulticastDelegate
---@field protected ExternalOwner UAbilitySystemComponent
local UAbilityTask_WaitGameplayEffectBlockedImmunity = {}

---Listens for GE immunity. By default this means "this hero blocked a GE due to immunity". Setting OptionalExternalTarget will listen for a GE being blocked on an external target. Note this only works on the server.
---@param OwningAbility UGameplayAbility
---@param SourceTagRequirements FGameplayTagRequirements
---@param TargetTagRequirements FGameplayTagRequirements
---@param OptionalExternalTarget AActor @[opt] 
---@param OnlyTriggerOnce boolean @[opt] 
---@return UAbilityTask_WaitGameplayEffectBlockedImmunity
function UAbilityTask_WaitGameplayEffectBlockedImmunity.WaitGameplayEffectBlockedByImmunity(OwningAbility, SourceTagRequirements, TargetTagRequirements, OptionalExternalTarget, OnlyTriggerOnce) end

