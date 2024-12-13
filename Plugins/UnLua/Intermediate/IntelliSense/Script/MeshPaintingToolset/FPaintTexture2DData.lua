---@class FPaintTexture2DData
---@field public PaintingTexture2D UTexture2D @The original texture that we're painting
---@field public bIsPaintingTexture2DModified boolean
---@field public ScratchTexture UTexture2D @Texture used to store the paint modifications for the transactions
---@field public PaintRenderTargetTexture UTextureRenderTarget2D @Render target texture for painting
---@field public PaintedComponents TArray<UMeshComponent> @List of component we are painting on
---@field public PaintBrushRenderTargetTexture UTextureRenderTarget2D @Optional render target texture used as an input while painting that contains a clone of the texture painting brush
local FPaintTexture2DData = {}
