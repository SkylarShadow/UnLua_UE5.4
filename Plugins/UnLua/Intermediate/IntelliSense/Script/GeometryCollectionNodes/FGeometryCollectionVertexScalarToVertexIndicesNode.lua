---Convert an vertex float array to a list of indices
---@class FGeometryCollectionVertexScalarToVertexIndicesNode : FDataflowNode
---@field public Collection FManagedArrayCollection
---@field public VertexAttributeName string @The name of the vertex attribute to generate indices from.
---@field public SelectionThreshold number @The value threshold for what is included in the vertex list.
---@field public Indices TArray<integer> @Output list of indices
local FGeometryCollectionVertexScalarToVertexIndicesNode = {}
