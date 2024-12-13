---@class FLimbSolverSettings
---@field public ReachPrecision number @Precision (distance to the target)
---@field public HingeRotationAxis integer @Hinge Bones Rotation Axis. This is essentially the plane normal for (hip - knee - foot).
---@field public MaxIterations integer @Number of Max Iterations to reach the target
---@field public bEnableLimit boolean @Enable/Disable rotational limits
---@field public MinRotationAngle number @Only used if bEnableRotationLimit is enabled. Prevents the leg from folding onto itself, and forces at least this angle between Parent and Child bone.
---@field public bAveragePull boolean @Pull averaging only has a visual impact when we have more than 2 bones (3 links).
---@field public PullDistribution number @Re-position limb to distribute pull: 0 = foot, 0.5 = balanced, 1.f = hip
---@field public ReachStepAlpha number @Move end effector towards target. If we are compressing the chain, limit displacement.
---@field public bEnableTwistCorrection boolean @Enable Knee Twist correction, by comparing Foot FK with Foot IK orientation.
---@field public EndBoneForwardAxis integer @Forward Axis for Foot bone.
local FLimbSolverSettings = {}