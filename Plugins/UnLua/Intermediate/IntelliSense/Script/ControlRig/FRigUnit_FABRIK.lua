---The FABRIK solver can solve N-Bone chains using
---the Forward and Backward Reaching Inverse Kinematics algorithm.
---For now this node supports single effector chains only.
---@class FRigUnit_FABRIK : FRigUnit_HighlevelBaseMutable
---@field public StartBone string @The first bone in the chain to solve
---@field public EffectorBone string @The last bone in the chain to solve - the effector
---@field public EffectorTransform FTransform @The transform of the effector in global space
---@field public Precision number @The precision to use for the fabrik solver
---@field public Weight number @The weight of the solver - how much the IK should be applied.
---@field public bPropagateToChildren boolean @If set to true all of the global transforms of the children of this bone will be recalculated based on their local transforms. Note: This is computationally more expensive than turning it off.
---@field public MaxIterations integer @The maximum number of iterations. Values between 4 and 16 are common.
---@field public WorkData FRigUnit_FABRIK_WorkData
---@field public bSetEffectorTransform boolean @The option to set the effector transform
local FRigUnit_FABRIK = {}