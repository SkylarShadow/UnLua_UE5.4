---@class UAbilityTask_WaitCancel : UAbilityTask
---@field public OnCancel MulticastDelegate
local UAbilityTask_WaitCancel = {}

---@param OwningAbility UGameplayAbility
---@return UAbilityTask_WaitCancel
function UAbilityTask_WaitCancel.WaitCancel(OwningAbility) end

function UAbilityTask_WaitCancel:OnLocalCancelCallback() end

function UAbilityTask_WaitCancel:OnCancelCallback() end

