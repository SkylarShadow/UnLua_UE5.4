---Applies force to character's movement
---@class UAbilityTask_ApplyRootMotionMoveToActorForce : UAbilityTask_ApplyRootMotion_Base
---@field public OnFinished MulticastDelegate
---@field protected StartLocation FVector
---@field protected TargetLocation FVector
---@field protected TargetActor AActor
---@field protected TargetComponent USceneComponent
---@field protected TargetComponentRelativeLocation FVector
---@field protected TargetLocationOffset FVector
---@field protected OffsetAlignment ERootMotionMoveToActorTargetOffsetType
---@field protected Duration number
---@field protected bDisableDestinationReachedInterrupt boolean @By default, this force ends when the destination is reached. Using this parameter you can disable it so it will not "early out" and get interrupted by reaching the destination and instead go to its full duration.
---@field protected ReachedDestinationDistance number @This is the distance where, at or less that this distance to the destination, the user is considered to be at the destination.
---@field protected bSetNewMovementMode boolean
---@field protected NewMovementMode integer
---@field protected bRestrictSpeedToExpected boolean @If enabled, we limit velocity to the initial expected velocity to go distance to the target over Duration. This prevents cases of getting really high velocity the last few frames of the root motion if you were being blocked by collision. Disabled means we do everything we can to velocity during the move to get to the TargetLocation.
---@field protected PathOffsetCurve UCurveVector
---@field protected TimeMappingCurve UCurveFloat @Maps real time to movement fraction curve to affect the speed of the movement through the path Curve X is 0 to 1 normalized real time (a fraction of the duration) Curve Y is 0 to 1 is what percent of the move should be at a given X Default if unset is a 1:1 correspondence
---@field protected TargetLerpSpeedHorizontalCurve UCurveFloat
---@field protected TargetLerpSpeedVerticalCurve UCurveFloat
local UAbilityTask_ApplyRootMotionMoveToActorForce = {}

---@param OriginalTarget AActor
---@param NewTarget AActor
function UAbilityTask_ApplyRootMotionMoveToActorForce:OnTargetActorSwapped(OriginalTarget, NewTarget) end

function UAbilityTask_ApplyRootMotionMoveToActorForce:OnRep_TargetLocation() end

---Apply force to character's movement using an index into targetData instead of using an actor directly.
---@param OwningAbility UGameplayAbility
---@param TaskInstanceName string
---@param TargetDataHandle FGameplayAbilityTargetDataHandle
---@param TargetDataIndex integer
---@param TargetActorIndex integer
---@param TargetLocationOffset FVector
---@param OffsetAlignment ERootMotionMoveToActorTargetOffsetType
---@param Duration number
---@param TargetLerpSpeedHorizontal UCurveFloat
---@param TargetLerpSpeedVertical UCurveFloat
---@param bSetNewMovementMode boolean
---@param MovementMode integer
---@param bRestrictSpeedToExpected boolean
---@param PathOffsetCurve UCurveVector
---@param TimeMappingCurve UCurveFloat
---@param VelocityOnFinishMode ERootMotionFinishVelocityMode
---@param SetVelocityOnFinish FVector
---@param ClampVelocityOnFinish number
---@param bDisableDestinationReachedInterrupt boolean
---@param ReachedDestinationDistance number @[opt] 
---@return UAbilityTask_ApplyRootMotionMoveToActorForce
function UAbilityTask_ApplyRootMotionMoveToActorForce.ApplyRootMotionMoveToTargetDataActorForce(OwningAbility, TaskInstanceName, TargetDataHandle, TargetDataIndex, TargetActorIndex, TargetLocationOffset, OffsetAlignment, Duration, TargetLerpSpeedHorizontal, TargetLerpSpeedVertical, bSetNewMovementMode, MovementMode, bRestrictSpeedToExpected, PathOffsetCurve, TimeMappingCurve, VelocityOnFinishMode, SetVelocityOnFinish, ClampVelocityOnFinish, bDisableDestinationReachedInterrupt, ReachedDestinationDistance) end

---Apply force to character's movement to move to a target component with relative location
---@param OwningAbility UGameplayAbility
---@param TaskInstanceName string
---@param TargetComponent USceneComponent
---@param TargetComponentRelativeLocation FVector
---@param TargetLocationOffset FVector
---@param OffsetAlignment ERootMotionMoveToActorTargetOffsetType
---@param Duration number
---@param TargetLerpSpeedHorizontal UCurveFloat
---@param TargetLerpSpeedVertical UCurveFloat
---@param bSetNewMovementMode boolean
---@param MovementMode integer
---@param bRestrictSpeedToExpected boolean
---@param PathOffsetCurve UCurveVector
---@param TimeMappingCurve UCurveFloat
---@param VelocityOnFinishMode ERootMotionFinishVelocityMode
---@param SetVelocityOnFinish FVector
---@param ClampVelocityOnFinish number
---@param bDisableDestinationReachedInterrupt boolean
---@param ReachedDestinationDistance number @[opt] 
---@return UAbilityTask_ApplyRootMotionMoveToActorForce
function UAbilityTask_ApplyRootMotionMoveToActorForce.ApplyRootMotionMoveToComponentForce(OwningAbility, TaskInstanceName, TargetComponent, TargetComponentRelativeLocation, TargetLocationOffset, OffsetAlignment, Duration, TargetLerpSpeedHorizontal, TargetLerpSpeedVertical, bSetNewMovementMode, MovementMode, bRestrictSpeedToExpected, PathOffsetCurve, TimeMappingCurve, VelocityOnFinishMode, SetVelocityOnFinish, ClampVelocityOnFinish, bDisableDestinationReachedInterrupt, ReachedDestinationDistance) end

---Apply force to character's movement to move to a target actor
---@param OwningAbility UGameplayAbility
---@param TaskInstanceName string
---@param TargetActor AActor
---@param TargetLocationOffset FVector
---@param OffsetAlignment ERootMotionMoveToActorTargetOffsetType
---@param Duration number
---@param TargetLerpSpeedHorizontal UCurveFloat
---@param TargetLerpSpeedVertical UCurveFloat
---@param bSetNewMovementMode boolean
---@param MovementMode integer
---@param bRestrictSpeedToExpected boolean
---@param PathOffsetCurve UCurveVector
---@param TimeMappingCurve UCurveFloat
---@param VelocityOnFinishMode ERootMotionFinishVelocityMode
---@param SetVelocityOnFinish FVector
---@param ClampVelocityOnFinish number
---@param bDisableDestinationReachedInterrupt boolean
---@param ReachedDestinationDistance number @[opt] 
---@return UAbilityTask_ApplyRootMotionMoveToActorForce
function UAbilityTask_ApplyRootMotionMoveToActorForce.ApplyRootMotionMoveToActorForce(OwningAbility, TaskInstanceName, TargetActor, TargetLocationOffset, OffsetAlignment, Duration, TargetLerpSpeedHorizontal, TargetLerpSpeedVertical, bSetNewMovementMode, MovementMode, bRestrictSpeedToExpected, PathOffsetCurve, TimeMappingCurve, VelocityOnFinishMode, SetVelocityOnFinish, ClampVelocityOnFinish, bDisableDestinationReachedInterrupt, ReachedDestinationDistance) end

