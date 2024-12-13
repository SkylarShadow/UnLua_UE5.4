---SetControlOffset is used to perform a change in the hierarchy by setting a single control's transform.
---This is typically only used during the Construction Event.
---@class FRigUnit_SetControlOffset : FRigUnitMutable
---@field public Control string @The name of the Control to set the transform for.
---@field public Offset FTransform @The offset transform to set for the control
---@field public Space ERigVMTransformSpace @Defines if the bone's transform should be set in local or global space.
---@field public CachedControlIndex FCachedRigElement @user to internally cache the index of the bone
local FRigUnit_SetControlOffset = {}
