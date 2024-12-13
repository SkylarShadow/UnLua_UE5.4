---@class UMeshTexturePaintingTool : UBaseBrushTool
---@field protected SelectionMechanic UMeshPaintSelectionMechanic
---@field private TextureProperties UMeshTexturePaintingToolProperties
---@field private Textures TArray<UTexture>
---@field private BrushRenderTargetTexture UTextureRenderTarget2D @Temporary render target used to draw incremental paint to
---@field private BrushMaskRenderTargetTexture UTextureRenderTarget2D @Temporary render target used to store a mask of the affected paint region, updated every time we add incremental texture paint
---@field private SeamMaskRenderTargetTexture UTextureRenderTarget2D @Temporary render target used to store generated mask for texture seams, we create this by projecting object triangles into texture space using the selected UV channel
---@field private PaintTargetData TMap<UTexture2D, FPaintTexture2DData> @Stores data associated with our paint target textures
---@field private PaintComponentsOverride TMap<UTexture2D, FPaintComponentOverride> @Store the component overrides active for each paint target textures Note this is not transactional because we use it as cache of the current state of the scene that we can clean/update after each transaction.
---@field private TexturePaintingCurrentMeshComponent UMeshComponent @Texture paint: The mesh components that we're currently painting
---@field private PaintingTexture2D UTexture2D @The original texture that we're painting
local UMeshTexturePaintingTool = {}

