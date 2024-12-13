---@class UAbilityTask_WaitConfirm : UAbilityTask
---@field public OnConfirm MulticastDelegate
local UAbilityTask_WaitConfirm = {}

---Wait until the server confirms the use of this ability. This is used to gate predictive portions of the ability
---@param OwningAbility UGameplayAbility
---@return UAbilityTask_WaitConfirm
function UAbilityTask_WaitConfirm.WaitConfirm(OwningAbility) end

---@param InAbility UGameplayAbility
function UAbilityTask_WaitConfirm:OnConfirmCallback(InAbility) end

