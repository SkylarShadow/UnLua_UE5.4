---Copies the same mesh with scale onto points
---@class FMeshCopyToPointsDataflowNode : FDataflowNode
---@field public Points TArray<FVector> @Points to copy meshes onto
---@field public MeshToCopy UDynamicMesh @Mesh to copy onto points
---@field public Scale number @Scale appied to the mesh
---@field public Mesh UDynamicMesh @Copied meshes
local FMeshCopyToPointsDataflowNode = {}
