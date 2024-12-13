---The FABRIK solver can solve multi chains within a root using multi effectors
---the Forward and Backward Reaching Inverse Kinematics algorithm.
---For now this node supports single effector chains only.
---@class FRigUnit_MultiFABRIK : FRigUnit_HighlevelBaseMutable
---@field public RootBone string @The first bone in the chain to solve
---@field public Effectors TArray<FRigUnit_MultiFABRIK_EndEffector>
---@field public Precision number @The precision to use for the fabrik solver
---@field public bPropagateToChildren boolean @If set to true all of the global transforms of the children of this bone will be recalculated based on their local transforms. Note: This is computationally more expensive than turning it off.
---@field public MaxIterations integer @The maximum number of iterations. Values between 4 and 16 are common.
---@field public WorkData FRigUnit_MultiFABRIK_WorkData
---@field public bIsInitialized boolean
local FRigUnit_MultiFABRIK = {}