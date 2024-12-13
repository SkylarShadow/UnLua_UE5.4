---Applies force to character's movement
---@class UAbilityTask_ApplyRootMotionRadialForce : UAbilityTask_ApplyRootMotion_Base
---@field public OnFinish MulticastDelegate
---@field protected Location FVector
---@field protected LocationActor AActor
---@field protected Strength number
---@field protected Duration number
---@field protected Radius number
---@field protected bIsPush boolean
---@field protected bIsAdditive boolean
---@field protected bNoZForce boolean
---@field protected StrengthDistanceFalloff UCurveFloat @Strength of the force over distance to Location Curve Y is 0 to 1 which is percent of full Strength parameter to apply Curve X is 0 to 1 normalized distance (0 = 0cm, 1 = what Strength % at Radius units out)
---@field protected StrengthOverTime UCurveFloat @Strength of the force over time Curve Y is 0 to 1 which is percent of full Strength parameter to apply Curve X is 0 to 1 normalized time if this force has a limited duration (Duration > 0), or         is in units of seconds if this force has unlimited duration (Duration < 0)
---@field protected bUseFixedWorldDirection boolean
---@field protected FixedWorldDirection FRotator
local UAbilityTask_ApplyRootMotionRadialForce = {}

---Apply force to character's movement
---@param OwningAbility UGameplayAbility
---@param TaskInstanceName string
---@param Location FVector
---@param LocationActor AActor
---@param Strength number
---@param Duration number
---@param Radius number
---@param bIsPush boolean
---@param bIsAdditive boolean
---@param bNoZForce boolean
---@param StrengthDistanceFalloff UCurveFloat
---@param StrengthOverTime UCurveFloat
---@param bUseFixedWorldDirection boolean
---@param FixedWorldDirection FRotator
---@param VelocityOnFinishMode ERootMotionFinishVelocityMode
---@param SetVelocityOnFinish FVector
---@param ClampVelocityOnFinish number
---@return UAbilityTask_ApplyRootMotionRadialForce
function UAbilityTask_ApplyRootMotionRadialForce.ApplyRootMotionRadialForce(OwningAbility, TaskInstanceName, Location, LocationActor, Strength, Duration, Radius, bIsPush, bIsAdditive, bNoZForce, StrengthDistanceFalloff, StrengthOverTime, bUseFixedWorldDirection, FixedWorldDirection, VelocityOnFinishMode, SetVelocityOnFinish, ClampVelocityOnFinish) end

