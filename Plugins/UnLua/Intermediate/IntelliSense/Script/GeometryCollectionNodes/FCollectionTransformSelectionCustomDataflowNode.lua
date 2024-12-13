---Selects specified bones in the GeometryCollection by using a
---space separated list
---@class FCollectionTransformSelectionCustomDataflowNode : FDataflowNode
---@field public Collection FManagedArrayCollection @GeometryCollection for the selection
---@field public BoneIndicies string @Space separated list of bone indices to specify the selection
---@field public TransformSelection FDataflowTransformSelection @Array of the selected bone indices
local FCollectionTransformSelectionCustomDataflowNode = {}
