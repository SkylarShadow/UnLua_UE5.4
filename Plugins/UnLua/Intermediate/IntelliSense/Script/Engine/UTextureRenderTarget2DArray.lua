---TextureRenderTarget2DArray
---2D Array render target texture resource. This can be used as a target
---for rendering as well as rendered as a regular 2DArray texture resource.
---@class UTextureRenderTarget2DArray : UTextureRenderTarget
---@field public SizeX integer @The width of the texture.
---@field public SizeY integer @The height of the texture.
---@field public Slices integer @The slices of the texture.
---@field public ClearColor FLinearColor @the color the texture is cleared to
---@field public OverrideFormat integer @Normally the format is derived from bHDR, this allows code to set the format explicitly.
---@field public bHDR boolean @Whether to support storing HDR values, which requires more memory.
---@field public bForceLinearGamma boolean @True to force linear gamma space for this render target
local UTextureRenderTarget2DArray = {}

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UTextureRenderTarget2DArray:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UTextureRenderTarget2DArray:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UTextureRenderTarget2DArray:AddAssetUserDataOfClass(InUserDataClass) end

