---Waits until the input is pressed from activating an ability. This should be true immediately upon starting the ability, since the key was pressed to activate it.
---We expect server to execute this task in parallel and keep its own time. We do not keep track of
---@class UAbilityTask_WaitInputPress : UAbilityTask
---@field public OnPress MulticastDelegate
local UAbilityTask_WaitInputPress = {}

---Wait until the user presses the input button for this ability's activation. Returns time this node spent waiting for the press. Will return 0 if input was already down.
---@param OwningAbility UGameplayAbility
---@param bTestAlreadyPressed boolean @[opt] 
---@return UAbilityTask_WaitInputPress
function UAbilityTask_WaitInputPress.WaitInputPress(OwningAbility, bTestAlreadyPressed) end

function UAbilityTask_WaitInputPress:OnPressCallback() end

