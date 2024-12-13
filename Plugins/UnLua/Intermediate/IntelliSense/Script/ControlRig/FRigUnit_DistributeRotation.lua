---Distributes rotations provided along a chain.
---Each rotation is expressed by a quaternion and a ratio, where the ratio is between 0.0 and 1.0
---Note: This node adds rotation in local space of each bone!
---@class FRigUnit_DistributeRotation : FRigUnit_HighlevelBaseMutable
---@field public StartBone string @The name of the first bone to align
---@field public EndBone string @The name of the last bone to align
---@field public Rotations TArray<FRigUnit_DistributeRotation_Rotation> @The list of rotations to be applied
---@field public RotationEaseType ERigVMAnimEasingType @The easing to use between to rotations.
---@field public Weight number @The weight of the solver - how much the rotation should be applied
---@field public bPropagateToChildren boolean @If set to true all of the global transforms of the children of this bone will be recalculated based on their local transforms. Note: This is computationally more expensive than turning it off.
---@field public WorkData FRigUnit_DistributeRotation_WorkData
local FRigUnit_DistributeRotation = {}
