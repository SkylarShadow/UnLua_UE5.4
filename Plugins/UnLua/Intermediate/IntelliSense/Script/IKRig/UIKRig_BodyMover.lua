---@class UIKRig_BodyMover : UIKRigSolver
---@field public RootBone string @The target bone to move with the effectors.
---@field public PositionAlpha number @Blend the translational effect of this solver on/off. Range is 0-1. Default is 1.0.
---@field public PositionPositiveX number @Multiply the POSITIVE X translation. Range is 0-1. Default is 1.0.
---@field public PositionNegativeX number @Multiply the NEGATIVE X translation. Range is 0-1. Default is 1.0.
---@field public PositionPositiveY number @Multiply the POSITIVE Y translation. Range is 0-1. Default is 1.0.
---@field public PositionNegativeY number @Multiply the NEGATIVE Y translation. Range is 0-1. Default is 1.0.
---@field public PositionPositiveZ number @Multiply the POSITIVE Z translation. Range is 0-1. Default is 1.0.
---@field public PositionNegativeZ number @Multiply the NEGATIVE Z translation. Range is 0-1. Default is 1.0.
---@field public RotationAlpha number @Blend the total rotational effect on/off. Range is 0-1. Default is 1.0.
---@field public RotateXAlpha number @Blend the X-axis rotational effect on/off. Range is 0-1. Default is 1.0.
---@field public RotateYAlpha number @Blend the Y-axis rotational effect on/off. Range is 0-1. Default is 1.0.
---@field public RotateZAlpha number @Blend the Z-axis rotational effect on/off. Range is 0-1. Default is 1.0.
---@field public Effectors TArray<UIKRig_BodyMoverEffector>
local UIKRig_BodyMover = {}

