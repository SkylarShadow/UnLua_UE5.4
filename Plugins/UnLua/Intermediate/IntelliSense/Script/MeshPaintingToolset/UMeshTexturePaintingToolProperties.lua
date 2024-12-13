---@class UMeshTexturePaintingToolProperties : UBrushBaseProperties
---@field public PaintColor FLinearColor @Color used for Applying Texture Color Painting
---@field public EraseColor FLinearColor @Color used for Erasing Texture Color Painting
---@field public bWriteRed boolean @Whether or not to apply Texture Color Painting to the Red Channel
---@field public bWriteGreen boolean @Whether or not to apply Texture Color Painting to the Green Channel
---@field public bWriteBlue boolean @Whether or not to apply Texture Color Painting to the Blue Channel
---@field public bWriteAlpha boolean @Whether or not to apply Texture Color Painting to the Alpha Channel
---@field public UVChannel integer @UV channel which should be used for paint textures
---@field public bEnableSeamPainting boolean @Seam painting flag, True if we should enable dilation to allow the painting of texture seams
---@field public PaintTexture UTexture2D @Texture to which Painting should be Applied
---@field public PaintBrush UTexture2D @Optional Texture Brush to which Painting should use
---@field public PaintBrushRotationOffset number @Initial Rotation offset to apply to our paint brush
---@field public bRotateBrushTowardsDirection boolean @Whether or not to continously rotate the brush towards the painting direction
---@field public bEnableFlow boolean @Enables "Flow" painting where paint is continually applied from the brush every tick
---@field public bOnlyFrontFacingTriangles boolean @Whether back-facing triangles should be ignored
local UMeshTexturePaintingToolProperties = {}

