---Layered blend (per bone); has dynamic number of blendposes that can blend per different bone sets
---@class FAnimNode_LayeredBoneBlend : FAnimNode_Base
---@field public BasePose FPoseLink @The source pose
---@field public BlendPoses TArray<FPoseLink> @Each layer's blended pose
---@field public BlendMode ELayeredBoneBlendMode @Whether to use branch filters or a blend mask to specify an input pose per-bone influence
---@field public BlendMasks TArray<UBlendProfile> @The blend masks to use for our layer inputs. Allows the use of per-bone alphas. Blend masks are used when BlendMode is BlendMask.
---@field public LayerSetup TArray<FInputBlendPose> @Configuration for the parts of the skeleton to blend for each layer. Allows certain parts of the tree to be blended out or omitted from the pose. LayerSetup is used when BlendMode is BranchFilter.
---@field public BlendWeights TArray<number> @The weights of each layer
---@field public bMeshSpaceRotationBlend boolean @Whether to blend bone rotations in mesh space or in local space
---@field public bMeshSpaceScaleBlend boolean @Whether to blend bone scales in mesh space or in local space
---@field public CurveBlendOption integer @How to blend the layers together
---@field public bBlendRootMotionBasedOnRootBone boolean @Whether to incorporate the per-bone blend weight of the root bone when lending root motion
---@field public LODThreshold integer @* Max LOD that this node is allowed to run * For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index) * when the component LOD becomes 3, it will stop update/evaluate * currently transition would be issue and that has to be re-visited
---@field protected PerBoneBlendWeights TArray<FPerBoneBlendWeight> @Per-bone weights for the skeleton. Serialized as these are only relative to the skeleton, but can potentially be regenerated at runtime if the GUIDs dont match
---@field protected SkeletonGuid FGuid @Guids for skeleton used to determine whether the PerBoneBlendWeights need rebuilding
---@field protected VirtualBoneGuid FGuid @Guid for virtual bones used to determine whether the PerBoneBlendWeights need rebuilding
local FAnimNode_LayeredBoneBlend = {}