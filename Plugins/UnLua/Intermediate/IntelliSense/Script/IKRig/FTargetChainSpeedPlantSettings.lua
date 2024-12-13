---@class FTargetChainSpeedPlantSettings
---@field public EnableSpeedPlanting boolean @The name of the curve on the source animation that contains the speed of the end effector bone.
---@field public SpeedCurveName string @The name of the curve on the source animation that contains the speed of the end effector bone.
---@field public SpeedThreshold number @Range 0 to 100. Default 15. The maximum speed a source bone can be moving while being considered 'planted'. The target IK goal will not be allowed to move whenever the source bone speed drops below this threshold speed.
---@field public UnplantStiffness number @How stiff the spring model is that smoothly pulls the IK position after unplanting (more stiffness means more oscillation around the target value)
---@field public UnplantCriticalDamping number @How much damping to apply to the spring (0 means no damping, 1 means critically damped which means no oscillation)
local FTargetChainSpeedPlantSettings = {}
