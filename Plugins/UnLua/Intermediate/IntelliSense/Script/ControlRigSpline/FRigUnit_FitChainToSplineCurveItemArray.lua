---Fits a given chain to a spline curve.
---Additionally provides rotational control matching the features of the Distribute Rotation node.
---@class FRigUnit_FitChainToSplineCurveItemArray : FRigUnit_HighlevelBaseMutable
---@field public Items TArray<FRigElementKey> @The items to align
---@field public Spline FControlRigSpline @The curve to align to
---@field public Alignment EControlRigCurveAlignment @Specifies how to align the chain on the curve
---@field public Minimum number @The minimum U value to use on the curve
---@field public Maximum number @The maximum U value to use on the curve
---@field public SamplingPrecision integer @The number of samples to use on the curve. Clamped at 64.
---@field public PrimaryAxis FVector @The major axis being aligned - along the bone
---@field public SecondaryAxis FVector @The minor axis being aligned - towards the pole vector. You can use (0.0, 0.0, 0.0) to disable it.
---@field public PoleVectorPosition FVector @The the position of the pole vector used for aligning the secondary axis. Only has an effect if the secondary axis is set.
---@field public Rotations TArray<FRigUnit_FitChainToCurve_Rotation> @The list of rotations to be applied along the curve
---@field public RotationEaseType ERigVMAnimEasingType @The easing to use between to rotations.
---@field public Weight number @The weight of the solver - how much the rotation should be applied
---@field public bPropagateToChildren boolean @If set to true all of the global transforms of the children of this bone will be recalculated based on their local transforms. Note: This is computationally more expensive than turning it off.
---@field public DebugSettings FRigUnit_FitChainToCurve_DebugSettings
---@field public WorkData FRigUnit_FitChainToCurve_WorkData
local FRigUnit_FitChainToSplineCurveItemArray = {}