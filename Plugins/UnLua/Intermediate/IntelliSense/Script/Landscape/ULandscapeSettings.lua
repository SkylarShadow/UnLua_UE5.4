---@class ULandscapeSettings : UDeveloperSettings
---@field public MaxNumberOfLayers integer @This option controls the maximum editing layers that can be added to a Landscape
---@field public MaxComponents integer @Maximum Dimension of Landscape in Components
---@field public MaxImageImportCacheSizeMegaBytes integer @Maximum Size of Import Image Cache in MB
---@field public PaintStrengthGamma number @Exponent for the Paint Tool Strength
---@field public bDisablePaintingStartupSlowdown boolean @Disable Painting Startup Slowdown
---@field public LandscapeDirtyingMode ELandscapeDirtyingMode
---@field protected SideResolutionLimit integer
---@field protected DefaultLandscapeMaterial TSoftObjectPtr<UMaterialInterface> @Default Landscape Material will be prefilled when creating a new landscape.
---@field protected DefaultLayerInfoObject TSoftObjectPtr<ULandscapeLayerInfoObject> @Default Layer Info Object
---@field protected BrushSizeUIMax number @Maximum size that can be set via the slider for the landscape sculpt/paint brushes
---@field protected BrushSizeClampMax number @Maximum size that can be set manually for the landscape sculpt/paint brushes
---@field protected HLODMaxTextureSize integer @Maximum size of the textures generated for landscape HLODs
---@field protected bRestrictiveMode boolean
local ULandscapeSettings = {}

