---Deform a mesh using a regular hexahedral lattice
---@class ULatticeDeformerTool : USingleSelectionMeshEditingTool
---@field protected ControlPointsMechanic ULatticeControlPointsMechanic
---@field protected Settings ULatticeDeformerToolProperties
---@field protected Preview UMeshOpPreviewWithBackgroundCompute
---@field protected bLatticeDeformed boolean
local ULatticeDeformerTool = {}

