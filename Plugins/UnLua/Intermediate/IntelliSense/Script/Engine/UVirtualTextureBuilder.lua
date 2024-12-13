---Container for a UVirtualTexture2D that can be built from a FVirtualTextureBuildDesc description.
---This has a simple BuildTexture() interface but we may want to extend in the future to support partial builds
---or other more blueprint driven approaches for data generation.
---@class UVirtualTextureBuilder : UObject
---@field public Texture UVirtualTexture2D @The UTexture object.
---@field public TextureMobile UVirtualTexture2D @The UTexture object for Mobile rendering.
---@field public BuildHash integer @Some client defined hash of that defines how the Texture was built.
---@field public bSeparateTextureForMobile boolean @Whether to use a separate texture for Mobile rendering. A separate texure will be built using mobile preview editor mode
---@field public EnableCookPerPlatform FPerPlatformBool @Per platform overrides for cooking the virtual texture.
local UVirtualTextureBuilder = {}

