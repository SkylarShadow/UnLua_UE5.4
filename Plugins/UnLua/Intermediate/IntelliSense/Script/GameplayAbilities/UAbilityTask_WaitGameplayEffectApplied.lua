---@class UAbilityTask_WaitGameplayEffectApplied : UAbilityTask
---@field protected ExternalOwner UAbilitySystemComponent
local UAbilityTask_WaitGameplayEffectApplied = {}

---@param Target UAbilitySystemComponent
---@param SpecApplied FGameplayEffectSpec
---@param ActiveHandle FActiveGameplayEffectHandle
function UAbilityTask_WaitGameplayEffectApplied:OnApplyGameplayEffectCallback(Target, SpecApplied, ActiveHandle) end

