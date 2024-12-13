---@class FMetasoundFrontendNodeStyleDisplay
---@field public Visibility EMetasoundFrontendNodeStyleDisplayVisibility @DEPRECATED in Document Model v1.1: Visibility state of node
---@field public Locations TMap<FGuid, FVector2D> @Map of visual node guid to 2D location. May have more than one if the node allows displaying in more than one place on the graph (Only functionally relevant for nodes that cannot contain inputs.)
local FMetasoundFrontendNodeStyleDisplay = {}
