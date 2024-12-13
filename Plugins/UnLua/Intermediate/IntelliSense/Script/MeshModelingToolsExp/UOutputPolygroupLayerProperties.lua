---@class UOutputPolygroupLayerProperties : UInteractiveToolPropertySet
---@field public GroupLayer string @Select PolyGroup layer to use.
---@field public OptionsList TArray<string> @internal list used to implement above
---@field public bShowNewLayerName boolean
---@field public NewLayerName string @Name of the new Group Layer
local UOutputPolygroupLayerProperties = {}

---Provides set of available group layers
---@return TArray_string_
function UOutputPolygroupLayerProperties:GetGroupOptionsList() end

