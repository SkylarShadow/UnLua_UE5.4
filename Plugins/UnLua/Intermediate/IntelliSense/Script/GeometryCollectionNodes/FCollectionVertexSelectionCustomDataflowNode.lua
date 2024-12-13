---Selects specified vertices in the GeometryCollection by using a
---space separated list
---@class FCollectionVertexSelectionCustomDataflowNode : FDataflowNode
---@field public Collection FManagedArrayCollection @GeometryCollection for the selection
---@field public VertexIndicies string @Space separated list of vertex indicies to specify the selection
---@field public VertexSelection FDataflowVertexSelection @Vertex selection including the new indicies
local FCollectionVertexSelectionCustomDataflowNode = {}
