---@class FSkeletalMeshSourceModel
---@field private TriangleCount integer
---@field private VertexCount integer
---@field private Bounds FBoxSphereBounds
---@field private MeshDescriptionBulkData USkeletalMeshDescriptionBulkData @Bulk data containing mesh description from imported or modeled geometry. If the bulk data within is empty, the LOD is autogenerated (for LOD1+).
local FSkeletalMeshSourceModel = {}
