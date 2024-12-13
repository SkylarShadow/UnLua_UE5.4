---@class UAbilityTask_WaitDelay : UAbilityTask
---@field public OnFinish MulticastDelegate
local UAbilityTask_WaitDelay = {}

---Wait specified time. This is functionally the same as a standard Delay node.
---@param OwningAbility UGameplayAbility
---@param Time number
---@return UAbilityTask_WaitDelay
function UAbilityTask_WaitDelay.WaitDelay(OwningAbility, Time) end

