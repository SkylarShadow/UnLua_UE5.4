---Fixme: this name is conflicting with AbilityTask_WaitConfirm
---UAbilityTask_WaitConfirmCancel = Wait for Targeting confirm/cancel
---UAbilityTask_WaitConfirm = Wait for server to confirm ability activation
---@class UAbilityTask_WaitConfirmCancel : UAbilityTask
---@field public OnConfirm MulticastDelegate
---@field public OnCancel MulticastDelegate
local UAbilityTask_WaitConfirmCancel = {}

---@param OwningAbility UGameplayAbility
---@return UAbilityTask_WaitConfirmCancel
function UAbilityTask_WaitConfirmCancel.WaitConfirmCancel(OwningAbility) end

function UAbilityTask_WaitConfirmCancel:OnLocalConfirmCallback() end

function UAbilityTask_WaitConfirmCancel:OnLocalCancelCallback() end

function UAbilityTask_WaitConfirmCancel:OnConfirmCallback() end

function UAbilityTask_WaitConfirmCancel:OnCancelCallback() end

