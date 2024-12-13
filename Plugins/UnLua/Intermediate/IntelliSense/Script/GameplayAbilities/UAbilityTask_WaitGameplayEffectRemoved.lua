---Waits for the actor to activate another ability
---@class UAbilityTask_WaitGameplayEffectRemoved : UAbilityTask
---@field public OnRemoved MulticastDelegate
---@field public InvalidHandle MulticastDelegate
local UAbilityTask_WaitGameplayEffectRemoved = {}

---Wait until the specified gameplay effect is removed.
---@param OwningAbility UGameplayAbility
---@param Handle FActiveGameplayEffectHandle
---@return UAbilityTask_WaitGameplayEffectRemoved
function UAbilityTask_WaitGameplayEffectRemoved.WaitForGameplayEffectRemoved(OwningAbility, Handle) end

---@param InGameplayEffectRemovalInfo FGameplayEffectRemovalInfo
function UAbilityTask_WaitGameplayEffectRemoved:OnGameplayEffectRemoved(InGameplayEffectRemovalInfo) end

