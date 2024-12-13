---@class UInterchangeGenericCommonSkeletalMeshesAndAnimationsProperties : UInterchangePipelineBase
---@field public bImportOnlyAnimations boolean @If enabled, only animations are imported from the source. You must also set a valid skeleton.
---@field public Skeleton TWeakObjectPtr<USkeleton> @Skeleton to use for imported asset. When importing a skeletal mesh, leaving this as "None" will create a new skeleton. When importing an animation, this must be specified.
---@field public bImportMeshesInBoneHierarchy boolean @If enabled, meshes nested in bone hierarchies will be imported as meshes instead of being converted to bones. If the meshes are not skinned, they are added to the skeletal mesh and removed from the list of static meshes.
---@field public bUseT0AsRefPose boolean @If enabled, frame 0 is used as the reference pose for skeletal meshes.
---@field public bConvertStaticsWithMorphTargetsToSkeletals boolean @If enabled, all static meshes that have morph targets will be imported as skeletal meshes instead.
local UInterchangeGenericCommonSkeletalMeshesAndAnimationsProperties = {}

