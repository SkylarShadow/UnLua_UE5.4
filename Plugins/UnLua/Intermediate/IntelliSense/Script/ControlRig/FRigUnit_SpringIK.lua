---The Spring IK solver uses a verlet integrator to perform an IK solve.
---It support custom constraints including distance, length etc.
---Note: This node operates in world space!
---@class FRigUnit_SpringIK : FRigUnit_HighlevelBaseMutable
---@field public StartBone string @The name of the first bone to solve
---@field public EndBone string @The name of the second bone to solve
---@field public HierarchyStrength number @Sets the coefficient of the springs along the hierarchy. Values between 1 and 2048 are common.
---@field public EffectorStrength number @Sets the coefficient of the springs towards the effector. Values between 1 and 2048 are common.
---@field public EffectorRatio number @Defines the equilibrium of the effector springs. This value ranges from 0.0 (zero distance) to 1.0 (distance in initial pose)
---@field public RootStrength number @Sets the coefficient of the springs towards the root. Values between 1 and 2048 are common.
---@field public RootRatio number @Defines the equilibrium of the root springs. This value ranges from 0.0 (zero distance) to 1.0 (distance in initial pose)
---@field public Damping number @The higher the value to more quickly the simulation calms down. Values between 0.0001 and 0.75 are common.
---@field public PoleVector FVector @The polevector to use for the IK solver This can be a location or direction.
---@field public bFlipPolePlane boolean @If set to true the pole plane will be flipped
---@field public PoleVectorKind EControlRigVectorKind @The kind of pole vector this is representing - can be a direction or a location
---@field public PoleVectorSpace string @The space in which the pole vector is expressed
---@field public PrimaryAxis FVector @The major axis being aligned - along the bone
---@field public SecondaryAxis FVector @The minor axis being aligned - towards the pole vector
---@field public bLiveSimulation boolean @If set to true simulation will continue for all intermediate bones over time.
---@field public Iterations integer @Drives how precise the solver operates. Values between 4 and 24 are common. This is only used if the simulation is not live (bLiveSimulation setting).
---@field public bLimitLocalPosition boolean @If set to true bones are placed within the original distance of the previous local transform. This can be used to avoid stretch.
---@field public bPropagateToChildren boolean @If set to true all of the global transforms of the children of this bone will be recalculated based on their local transforms. Note: This is computationally more expensive than turning it off.
---@field public DebugSettings FRigUnit_SpringIK_DebugSettings @The debug setting for the node
---@field public WorkData FRigUnit_SpringIK_WorkData
local FRigUnit_SpringIK = {}
