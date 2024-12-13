---Constraint setup struct, holds data required to build a physics constraint
---@class FAnimPhysConstraintSetup
---@field public LinearXLimitType AnimPhysLinearConstraintType @Whether to limit the linear X axis
---@field public LinearYLimitType AnimPhysLinearConstraintType @Whether to limit the linear Y axis
---@field public LinearZLimitType AnimPhysLinearConstraintType @Whether to limit the linear Z axis
---@field public LinearAxesMin FVector @Minimum linear movement per-axis (Set zero here and in the max limit to lock)
---@field public LinearAxesMax FVector @Maximum linear movement per-axis (Set zero here and in the min limit to lock)
---@field public AngularConstraintType AnimPhysAngularConstraintType @Method to use when constraining angular motion
---@field public TwistAxis AnimPhysTwistAxis @Axis to consider for twist when constraining angular motion (forward axis)
---@field public AngularTargetAxis AnimPhysTwistAxis @The axis in the simulation pose to align to the Angular Target. This is typically the axis pointing along the bone. Note: This is affected by the Angular Spring Constant.
---@field public ConeAngle number @Angle to use when constraining using a cone
---@field public AngularLimitsMin FVector
---@field public AngularLimitsMax FVector
---@field public AngularTarget FVector @The axis to align the angular spring constraint to in the animation pose. This typically points down the bone - so values of (1.0, 0.0, 0.0) are common, but you can pick other values to align the spring to a different direction. Note: This is affected by the Angular Spring Constant.
local FAnimPhysConstraintSetup = {}
