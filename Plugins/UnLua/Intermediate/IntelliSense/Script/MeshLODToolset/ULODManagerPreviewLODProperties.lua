---@class ULODManagerPreviewLODProperties : UInteractiveToolPropertySet
---@field public VisibleLOD string @LOD to visualise. Default option is equivalent to disabling the Tool, RenderData is the mesh used for rendering derived from the SourceModel (possibly simplified)
---@field public LODNamesList TArray<string>
---@field public bShowSeams boolean @Control whether mesh borders are displayed
---@field public bShowingDefaultLOD boolean @Used to expose the VisibleLOD state to the above EditCondition
local ULODManagerPreviewLODProperties = {}

---@return TArray_string_
function ULODManagerPreviewLODProperties:GetLODNamesFunc() end

