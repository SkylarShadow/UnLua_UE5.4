---@class UMeshColorPaintingToolProperties : UMeshVertexPaintingToolProperties
---@field public bWriteRed boolean @Whether or not to apply Vertex Color Painting to the Red Channel
---@field public bWriteGreen boolean @Whether or not to apply Vertex Color Painting to the Green Channel
---@field public bWriteBlue boolean @Whether or not to apply Vertex Color Painting to the Blue Channel
---@field public bWriteAlpha boolean @Whether or not to apply Vertex Color Painting to the Alpha Channel
---@field public bPaintOnSpecificLOD boolean @When unchecked the painting on the base LOD will be propagate automatically to all other LODs when exiting the mode or changing the selection
---@field public LODIndex integer @LOD Index to which should specifically be painted
local UMeshColorPaintingToolProperties = {}

