---Waits for the actor to activate another ability
---@class UAbilityTask_WaitGameplayEffectStackChange : UAbilityTask
---@field public OnChange MulticastDelegate
---@field public InvalidHandle MulticastDelegate
local UAbilityTask_WaitGameplayEffectStackChange = {}

---Wait until the specified gameplay effect is removed.
---@param OwningAbility UGameplayAbility
---@param Handle FActiveGameplayEffectHandle
---@return UAbilityTask_WaitGameplayEffectStackChange
function UAbilityTask_WaitGameplayEffectStackChange.WaitForGameplayEffectStackChange(OwningAbility, Handle) end

---@param Handle FActiveGameplayEffectHandle
---@param NewCount integer
---@param OldCount integer
function UAbilityTask_WaitGameplayEffectStackChange:OnGameplayEffectStackChange(Handle, NewCount, OldCount) end

