---Applies force to character's movement
---@class UAbilityTask_ApplyRootMotionJumpForce : UAbilityTask_ApplyRootMotion_Base
---@field public OnFinish MulticastDelegate
---@field public OnLanded MulticastDelegate
---@field protected Rotation FRotator
---@field protected Distance number
---@field protected Height number
---@field protected Duration number
---@field protected MinimumLandedTriggerTime number
---@field protected bFinishOnLanded boolean
---@field protected PathOffsetCurve UCurveVector
---@field protected TimeMappingCurve UCurveFloat @Maps real time to movement fraction curve to affect the speed of the movement through the path Curve X is 0 to 1 normalized real time (a fraction of the duration) Curve Y is 0 to 1 is what percent of the move should be at a given X Default if unset is a 1:1 correspondence
local UAbilityTask_ApplyRootMotionJumpForce = {}

---@param Hit FHitResult
function UAbilityTask_ApplyRootMotionJumpForce:OnLandedCallback(Hit) end

function UAbilityTask_ApplyRootMotionJumpForce:Finish() end

---Apply force to character's movement
---@param OwningAbility UGameplayAbility
---@param TaskInstanceName string
---@param Rotation FRotator
---@param Distance number
---@param Height number
---@param Duration number
---@param MinimumLandedTriggerTime number
---@param bFinishOnLanded boolean
---@param VelocityOnFinishMode ERootMotionFinishVelocityMode
---@param SetVelocityOnFinish FVector
---@param ClampVelocityOnFinish number
---@param PathOffsetCurve UCurveVector
---@param TimeMappingCurve UCurveFloat
---@return UAbilityTask_ApplyRootMotionJumpForce
function UAbilityTask_ApplyRootMotionJumpForce.ApplyRootMotionJumpForce(OwningAbility, TaskInstanceName, Rotation, Distance, Height, Duration, MinimumLandedTriggerTime, bFinishOnLanded, VelocityOnFinishMode, SetVelocityOnFinish, ClampVelocityOnFinish, PathOffsetCurve, TimeMappingCurve) end

