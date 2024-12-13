---Selects specified faces in the GeometryCollection by using a
---space separated list
---@class FCollectionFaceSelectionCustomDataflowNode : FDataflowNode
---@field public Collection FManagedArrayCollection @GeometryCollection for the selection
---@field public FaceIndicies string @Space separated list of face indicies to specify the selection
---@field public FaceSelection FDataflowFaceSelection @Face selection including the new indicies
local FCollectionFaceSelectionCustomDataflowNode = {}
