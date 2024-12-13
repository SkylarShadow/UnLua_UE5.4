---This pipeline is the generic option for all types of meshes. It should be called before specialized mesh pipelines like the generic static mesh or skeletal mesh pipelines.
---All import options that are shared between mesh types should be added here.
---@class UInterchangeGenericAssetsPipeline : UInterchangePipelineBase
---@field public PipelineDisplayName string @The name of the pipeline that will be display in the import dialog.
---@field public ReimportStrategy EReimportStrategyFlags @Set the reimport strategy.
---@field public bUseSourceNameForAsset boolean @If enabled, and the Asset Name setting is empty, and there is only one asset and one source, the imported asset is given the same name as the source data.
---@field public AssetName string @If set, and there is only one asset and one source, the imported asset is given this name.
---@field public ImportOffsetTranslation FVector @Translation offset applied to meshes and animations.
---@field public ImportOffsetRotation FRotator @Rotation offset applied to meshes and animations.
---@field public ImportOffsetUniformScale number @Uniform scale offset applied to meshes and animations.
---@field public CommonMeshesProperties UInterchangeGenericCommonMeshesProperties @COMMON_MESHES_CATEGORY Properties
---@field public CommonSkeletalMeshesAndAnimationsProperties UInterchangeGenericCommonSkeletalMeshesAndAnimationsProperties @COMMON_SKELETAL_ANIMATIONS_CATEGORY
---@field public MeshPipeline UInterchangeGenericMeshPipeline @MESHES_CATEGORY Properties
---@field public AnimationPipeline UInterchangeGenericAnimationPipeline @ANIMATIONS_CATEGORY Properties
---@field public MaterialPipeline UInterchangeGenericMaterialPipeline @MATERIALS_CATEGORY Properties
local UInterchangeGenericAssetsPipeline = {}

