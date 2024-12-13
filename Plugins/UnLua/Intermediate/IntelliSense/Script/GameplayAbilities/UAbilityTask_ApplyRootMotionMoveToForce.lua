---Applies force to character's movement
---@class UAbilityTask_ApplyRootMotionMoveToForce : UAbilityTask_ApplyRootMotion_Base
---@field public OnTimedOut MulticastDelegate
---@field public OnTimedOutAndDestinationReached MulticastDelegate
---@field protected StartLocation FVector
---@field protected TargetLocation FVector
---@field protected Duration number
---@field protected bSetNewMovementMode boolean
---@field protected NewMovementMode integer
---@field protected bRestrictSpeedToExpected boolean @If enabled, we limit velocity to the initial expected velocity to go distance to the target over Duration. This prevents cases of getting really high velocity the last few frames of the root motion if you were being blocked by collision. Disabled means we do everything we can to velocity during the move to get to the TargetLocation.
---@field protected PathOffsetCurve UCurveVector
local UAbilityTask_ApplyRootMotionMoveToForce = {}

---Apply force to character's movement
---@param OwningAbility UGameplayAbility
---@param TaskInstanceName string
---@param TargetLocation FVector
---@param Duration number
---@param bSetNewMovementMode boolean
---@param MovementMode integer
---@param bRestrictSpeedToExpected boolean
---@param PathOffsetCurve UCurveVector
---@param VelocityOnFinishMode ERootMotionFinishVelocityMode
---@param SetVelocityOnFinish FVector
---@param ClampVelocityOnFinish number
---@return UAbilityTask_ApplyRootMotionMoveToForce
function UAbilityTask_ApplyRootMotionMoveToForce.ApplyRootMotionMoveToForce(OwningAbility, TaskInstanceName, TargetLocation, Duration, bSetNewMovementMode, MovementMode, bRestrictSpeedToExpected, PathOffsetCurve, VelocityOnFinishMode, SetVelocityOnFinish, ClampVelocityOnFinish) end

