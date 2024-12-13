---RBF based orientation driver
---@class FAnimNode_PoseDriver : FAnimNode_PoseHandler
---@field public SourcePose FPoseLink @Bones to use for driving parameters based on their transform
---@field public SourceBones TArray<FBoneReference> @Bone to use for driving parameters based on its orientation
---@field public EvalSpaceBone FBoneReference @Optional other bone space to use when reading SourceBone transform. If not specified, the local space of SourceBone will be used. (ie relative to parent bone)
---@field public bEvalFromRefPose boolean @Evaluate SourceBone transform relative from its Reference Pose. This is recommended when using Swing and Twist Angle as Distance Method, since the twist will be computed from RefPose. If not specified, the local space of SourceBone will be used. (ie relative to parent bone) This mode won't work in conjunction with EvalSpaceBone;
---@field public OnlyDriveBones TArray<FBoneReference> @List of bones that will modified by this node. If no list is provided, all bones bones with a track in the PoseAsset will be modified
---@field public PoseTargets TArray<FPoseDriverTarget> @Targets used to compare with current pose and drive morphs/poses
---@field public RBFParams FRBFParams @Parameters used by RBF solver
---@field public DriveSource EPoseDriverSource @Which part of the transform is read
---@field public DriveOutput EPoseDriverOutput @Whether we should drive poses or curves
---@field public bSoloDrivenOnly boolean @Only solo the driven poses, and don't move the source joint(s) to match
---@field public LODThreshold integer @* Max LOD that this node is allowed to run * For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index) * when the component LOD becomes 3, it will stop update/evaluate * currently transition would be issue and that has to be re-visited
local FAnimNode_PoseDriver = {}
