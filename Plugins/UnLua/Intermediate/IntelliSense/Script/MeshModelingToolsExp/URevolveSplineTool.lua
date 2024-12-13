---Revolves a selected spline to create a new mesh.
---@class URevolveSplineTool : UInteractiveTool
---@field private Settings URevolveSplineToolProperties
---@field private MaterialProperties UNewMeshMaterialProperties
---@field private OutputTypeProperties UCreateMeshObjectTypeProperties
---@field private ToolActions URevolveSplineToolActionPropertySet
---@field private Preview UMeshOpPreviewWithBackgroundCompute
---@field private PlaneMechanic UConstructionPlaneMechanic
local URevolveSplineTool = {}

