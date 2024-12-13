---Mesh boolean (Union, Intersect, Difference) between two meshes
---@class FMeshBooleanDataflowNode : FDataflowNode
---@field public Operation EMeshBooleanOperationEnum @Boolean operation
---@field public Mesh1 UDynamicMesh @Mesh input
---@field public Mesh2 UDynamicMesh @Mesh input
---@field public Mesh UDynamicMesh @Output mesh
local FMeshBooleanDataflowNode = {}
