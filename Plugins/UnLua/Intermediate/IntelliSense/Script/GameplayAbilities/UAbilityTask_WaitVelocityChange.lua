---@class UAbilityTask_WaitVelocityChange : UAbilityTask
---@field public OnVelocityChage MulticastDelegate @Delegate called when velocity requirements are met
---@field protected CachedMovementComponent UMovementComponent
local UAbilityTask_WaitVelocityChange = {}

---Wait for the actor's movement component velocity to be of minimum magnitude when projected along given direction
---@param OwningAbility UGameplayAbility
---@param Direction FVector
---@param MinimumMagnitude number
---@return UAbilityTask_WaitVelocityChange
function UAbilityTask_WaitVelocityChange.CreateWaitVelocityChange(OwningAbility, Direction, MinimumMagnitude) end

