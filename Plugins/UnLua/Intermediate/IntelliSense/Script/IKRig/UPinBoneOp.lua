---@class UPinBoneOp : URetargetOpBase
---@field public BonesToPin TArray<FPinBoneData>
---@field public PinTo ERetargetSourceOrTarget @The bone, on the target skeleton to pin to.
---@field public PinType EPinBoneType @Apply this pin to the full transform, or just translation or rotation only.
---@field public bMaintainOffset boolean @Maintain the original offset between the BoneToPin and BoneToPinTo
---@field public GlobalOffset FTransform @A manual offset to apply in global space
---@field public LocalOffset FTransform @A manual offset to apply in local space
local UPinBoneOp = {}

