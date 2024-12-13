---Material expression for sampling from a runtime virtual texture.
---@class UMaterialExpressionSparseVolumeTextureSample : UMaterialExpressionSparseVolumeTextureBase
---@field public Coordinates FExpressionInput @3D texture coordinate used to sample the sparse volume texture.
---@field public TextureObject FExpressionInput @Defaults to 'SparseVolumeTexture' if not specified
---@field public MipLevel FExpressionInput @Defaults to 0 if not specified
---@field public SamplerSource integer @Controls where the sampler for this texture lookup will come from. Choose 'from texture asset' to make use of the USparseVolumeTexture addressing settings, Otherwise use one of the global samplers, which will not consume a sampler slot. This allows materials to use more than 16 unique textures on SM5 platforms.
local UMaterialExpressionSparseVolumeTextureSample = {}

