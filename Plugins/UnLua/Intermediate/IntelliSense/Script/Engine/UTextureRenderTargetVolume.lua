---TextureRenderTargetVolume
---Volume render target texture resource. This can be used as a target
---for rendering as well as rendered as a regular Volume texture resource.
---@class UTextureRenderTargetVolume : UTextureRenderTarget
---@field public SizeX integer @The width of the texture.
---@field public SizeY integer @The height of the texture.
---@field public SizeZ integer @The depth of the texture.
---@field public ClearColor FLinearColor @the color the texture is cleared to
---@field public OverrideFormat integer @The format of the texture data. Normally the format is derived from bHDR, this allows code to set the format explicitly.
---@field public bHDR boolean @If OverrideFormat is not set, bHDR chooses the format of the RT.       With bHDR on it is RGBA16F , off is BGRA8
---@field public bForceLinearGamma boolean @True to force linear gamma space for this render target
local UTextureRenderTargetVolume = {}

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UTextureRenderTargetVolume:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UTextureRenderTargetVolume:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UTextureRenderTargetVolume:AddAssetUserDataOfClass(InUserDataClass) end

