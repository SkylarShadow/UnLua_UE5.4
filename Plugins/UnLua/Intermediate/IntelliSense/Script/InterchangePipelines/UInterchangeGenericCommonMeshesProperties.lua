---@class UInterchangeGenericCommonMeshesProperties : UInterchangePipelineBase
---@field public ForceAllMeshAsType EInterchangeForceMeshType @If set, imports all meshes in the source as either static meshes or skeletal meshes.
---@field public bAutoDetectMeshType boolean @If enabled, and some static mesh transforms are animated, the pipeline will convert the static mesh into a rigid skeletal mesh. This setting is only used if the Force All Meshes As Type setting is set to "None".
---@field public bImportLods boolean @If enabled, any existing LODs for meshes are imported. This setting is only used if the Bake Meshes setting is also enabled.
---@field public bBakeMeshes boolean @If enabled, meshes are baked with the scene instance hierarchy transform.
---@field public bKeepSectionsSeparate boolean @If checked, sections with matching materials are kept separate and will not get combined.
---@field public VertexColorImportOption EInterchangeVertexColorImportOption @Specify how vertex colors should be imported.
---@field public VertexOverrideColor FColor @Specify an override color for use when the Vertex Color Import Option setting is set to Override.
---@field public bRecomputeNormals boolean @If enabled, normals in the imported mesh are ignored and recomputed.
---@field public bRecomputeTangents boolean @If enabled, tangents in the imported mesh are ignored and recomputed.
---@field public bUseMikkTSpace boolean @If enabled, tangents are recomputed using MikkTSpace.
---@field public bComputeWeightedNormals boolean @If enabled, normals are computed using the surface area and the corner angle of the triangle as a ratio.
---@field public bUseHighPrecisionTangentBasis boolean @If true, tangents are stored at 16-bit vs 8-bit precision.
---@field public bUseFullPrecisionUVs boolean @If true, UVs are stored at full floating-point precision.
---@field public bUseBackwardsCompatibleF16TruncUVs boolean @If enabled, UVs are converted to 16-bit by a legacy truncation process instead of the default rounding process. This may avoid differences when reimporting older content.
---@field public bRemoveDegenerates boolean @If true, degenerate triangles are removed.
local UInterchangeGenericCommonMeshesProperties = {}

