---Settings applied when building a mesh.
---@class FSkeletalMeshBuildSettings
---@field public bRecomputeNormals boolean @If true, normals in the raw mesh are ignored and recomputed.
---@field public bRecomputeTangents boolean @If true, tangents in the raw mesh are ignored and recomputed.
---@field public bUseMikkTSpace boolean @If true, degenerate triangles will be removed.
---@field public bComputeWeightedNormals boolean @If true, we will use the surface area and the corner angle of the triangle as a ratio when computing the normals.
---@field public bRemoveDegenerates boolean @If true, degenerate triangles will be removed.
---@field public bUseHighPrecisionTangentBasis boolean @If true, Tangents will be stored at 16 bit vs 8 bit precision.
---@field public bUseHighPrecisionSkinWeights boolean @Use 16-bit precision for rendering skin weights, instead of 8-bit precision.
---@field public bUseFullPrecisionUVs boolean @If true, UVs will be stored at full floating point precision.
---@field public bUseBackwardsCompatibleF16TruncUVs boolean @If true, UVs will use backwards-compatible F16 conversion with truncation for legacy meshes.
---@field public ThresholdPosition number @Threshold use to decide if two vertex position are equal.
---@field public ThresholdTangentNormal number @Threshold use to decide if two normal, tangents or bi-normals are equal.
---@field public ThresholdUV number @Threshold use to decide if two UVs are equal.
---@field public MorphThresholdPosition number @Threshold to compare vertex position equality when computing morph target deltas.
---@field public BoneInfluenceLimit integer @The maximum number of bone influences to allow each vertex in this mesh to use. If set higher than the limit determined by the project settings, it has no effect. If set to 0, the value is taken from the DefaultBoneInfluenceLimit project setting.
local FSkeletalMeshBuildSettings = {}