---Convert convex hulls on a geometry collection to a dynamic mesh
---@class FConvexHullToMeshDataflowNode : FDataflowNode
---@field public Collection FManagedArrayCollection
---@field public OptionalSelectionFilter FDataflowTransformSelection @Optional transform selection to convert hulls from -- if not provided, all convex hulls will be converted.
---@field public Mesh UDynamicMesh
local FConvexHullToMeshDataflowNode = {}
