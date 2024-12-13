---Repeat a task a certain number of times at a given interval.
---@class UAbilityTask_Repeat : UAbilityTask
---@field public OnPerformAction MulticastDelegate
---@field public OnFinished MulticastDelegate
local UAbilityTask_Repeat = {}

---Start a task that repeats an action or set of actions.
---@param OwningAbility UGameplayAbility
---@param TimeBetweenActions number
---@param TotalActionCount integer
---@return UAbilityTask_Repeat
function UAbilityTask_Repeat.RepeatAction(OwningAbility, TimeBetweenActions, TotalActionCount) end

