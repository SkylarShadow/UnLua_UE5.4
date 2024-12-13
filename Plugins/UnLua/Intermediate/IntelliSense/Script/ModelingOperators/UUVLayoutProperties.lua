---UV Layout Settings
---@class UUVLayoutProperties : UInteractiveToolPropertySet
---@field public LayoutType EUVLayoutType @Type of layout applied to input UVs
---@field public TextureResolution integer @Expected resolution of the output textures; this controls spacing left between UV islands to avoid interpolation artifacts
---@field public Scale number @Uniform scale applied to UVs after packing
---@field public Translation FVector2D @Translation applied to UVs after packing, and after scaling
---@field public bAllowFlips boolean @Allow the Repack layout type to flip the orientation of UV islands to save space. Note that this may cause problems for downstream operations, and therefore is disabled by default.
---@field public bEnableUDIMLayout boolean @Enable UDIM aware layout and keep islands within their originating UDIM tiles when laying out.
---@field public bUDIMCVAREnabled boolean
local UUVLayoutProperties = {}

