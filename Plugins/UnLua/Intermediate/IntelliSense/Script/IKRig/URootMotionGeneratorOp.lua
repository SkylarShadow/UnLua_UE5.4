---@class URootMotionGeneratorOp : URetargetOpBase
---@field public SourceRootBone string @The root of the source skeleton.
---@field public TargetRootBone string @The root of the target skeleton.
---@field public TargetPelvisBone string @The pelvis of the target skeleton.
---@field public RootMotionSource ERootMotionSource @Where to copy the root motion from. Copy From Source Root: copies the motion from the source root bone, but scales it according to relative height difference. Generate From Target Pelvis: uses the retargeted Pelvis motion to generate root motion. NOTE: Generating root motion from the Pelvis
---@field public RootHeightSource ERootMotionHeightSource @How to set the height of the root bone. Copy Height From Source: copies the height of the root bone on the source skeleton's root bone. Snap To Ground: sets the root bone height to the ground plane (Z=0).
---@field public bPropagateToNonRetargetedChildren boolean @Will transform all children of the target root that are not themselves part of a retarget chain.
---@field public bMaintainOffsetFromPelvis boolean @Applies only when generating root motion from the Pelvis. Maintains the offset between the root and pelvis as recorded in the target retarget pose. If false, the root bone is placed directly under the Pelvis bone.
---@field public bRotateWithPelvis boolean @Applies only when generating root motion from the Pelvis. When true, the applied offset will be rotated by the Pelvis. (NOTE: This may cause unwanted rotations, for example if Pelvis Yaw is animated.)
---@field public GlobalOffset FTransform @A manual offset to apply in global space to the root bone.
local URootMotionGeneratorOp = {}

