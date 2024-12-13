---@class UAbilityTask_WaitMovementModeChange : UAbilityTask
---@field public OnChange MulticastDelegate
local UAbilityTask_WaitMovementModeChange = {}

---@param Character ACharacter
---@param PrevMovementMode integer
---@param PreviousCustomMode integer
function UAbilityTask_WaitMovementModeChange:OnMovementModeChange(Character, PrevMovementMode, PreviousCustomMode) end

---Wait until movement mode changes (E.g., landing)
---@param OwningAbility UGameplayAbility
---@param NewMode integer
---@return UAbilityTask_WaitMovementModeChange
function UAbilityTask_WaitMovementModeChange.CreateWaitMovementModeChange(OwningAbility, NewMode) end

