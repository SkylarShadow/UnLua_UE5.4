---@class UMeshVertexPaintingToolProperties : UBrushBaseProperties
---@field public PaintColor FLinearColor @Color used for Applying Vertex Color Painting
---@field public EraseColor FLinearColor @Color used for Erasing Vertex Color Painting
---@field public bEnableFlow boolean @Enables "Flow" painting where paint is continually applied from the brush every tick
---@field public bOnlyFrontFacingTriangles boolean @Whether back-facing triangles should be ignored
---@field public VertexPreviewSize number @Size of vertex points drawn when mesh painting is active.
local UMeshVertexPaintingToolProperties = {}

