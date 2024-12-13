---Compares two pose caches and compares their values.
---@class FRigUnit_PoseGetDelta : FRigUnit_HierarchyBase
---@field public PoseA FRigPose
---@field public PoseB FRigPose
---@field public PositionThreshold number @The delta threshold for a translation / position difference. 0.0 disables position differences.
---@field public RotationThreshold number @The delta threshold for a rotation difference (in degrees). 0.0 disables rotation differences.
---@field public ScaleThreshold number @The delta threshold for a scale difference. 0.0 disables scale differences.
---@field public CurveThreshold number @The delta threshold for curve value difference. 0.0 disables curve differences.
---@field public ElementType ERigElementType
---@field public Space ERigVMTransformSpace @Defines in which space transform deltas should be computed
---@field public ItemsToCompare FRigElementKeyCollection @An optional list of items to compare
---@field public PosesAreEqual boolean
---@field public ItemsWithDelta FRigElementKeyCollection
local FRigUnit_PoseGetDelta = {}