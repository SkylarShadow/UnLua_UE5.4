---Applies force to character's movement
---@class UAbilityTask_ApplyRootMotionConstantForce : UAbilityTask_ApplyRootMotion_Base
---@field public OnFinish MulticastDelegate
---@field protected WorldDirection FVector
---@field protected Strength number
---@field protected Duration number
---@field protected bIsAdditive boolean
---@field protected StrengthOverTime UCurveFloat @Strength of the force over time Curve Y is 0 to 1 which is percent of full Strength parameter to apply Curve X is 0 to 1 normalized time if this force has a limited duration (Duration > 0), or         is in units of seconds if this force has unlimited duration (Duration < 0)
---@field protected bEnableGravity boolean
local UAbilityTask_ApplyRootMotionConstantForce = {}

---Apply force to character's movement
---@param OwningAbility UGameplayAbility
---@param TaskInstanceName string
---@param WorldDirection FVector
---@param Strength number
---@param Duration number
---@param bIsAdditive boolean
---@param StrengthOverTime UCurveFloat
---@param VelocityOnFinishMode ERootMotionFinishVelocityMode
---@param SetVelocityOnFinish FVector
---@param ClampVelocityOnFinish number
---@param bEnableGravity boolean
---@return UAbilityTask_ApplyRootMotionConstantForce
function UAbilityTask_ApplyRootMotionConstantForce.ApplyRootMotionConstantForce(OwningAbility, TaskInstanceName, WorldDirection, Strength, Duration, bIsAdditive, StrengthOverTime, VelocityOnFinishMode, SetVelocityOnFinish, ClampVelocityOnFinish, bEnableGravity) end

