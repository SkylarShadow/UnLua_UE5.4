---Sets the anchored state on the selected bones in a Collection
---@class FSetAnchorStateDataflowNode : FDataflowNode
---@field public AnchorState EAnchorStateEnum @What anchor state to set on selected bones
---@field public bSetNotSelectedBonesToOppositeState boolean @If true, sets the non selected bones to opposite anchor state
---@field public Collection FManagedArrayCollection @GeometryCollection to set anchor state on
---@field public TransformSelection FDataflowTransformSelection @Bone selection for setting the state on
local FSetAnchorStateDataflowNode = {}
