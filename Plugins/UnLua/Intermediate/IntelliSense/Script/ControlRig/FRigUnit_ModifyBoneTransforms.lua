---ModifyBonetransforms is used to perform a change in the hierarchy by setting one or more bones' transforms.
---@class FRigUnit_ModifyBoneTransforms : FRigUnit_HighlevelBaseMutable
---@field public BoneToModify TArray<FRigUnit_ModifyBoneTransforms_PerBone> @The bones to modify.
---@field public Weight number @At 1 this sets the transform, between 0 and 1 the transform is blended with previous results.
---@field public WeightMinimum number @The minimum of the weight - defaults to 0.0
---@field public WeightMaximum number @The maximum of the weight - defaults to 1.0
---@field public Mode EControlRigModifyBoneMode @Defines if the bone's transform should be set in local or global space, additive or override.
---@field public WorkData FRigUnit_ModifyBoneTransforms_WorkData @Used to cache the internally used bone index
local FRigUnit_ModifyBoneTransforms = {}
