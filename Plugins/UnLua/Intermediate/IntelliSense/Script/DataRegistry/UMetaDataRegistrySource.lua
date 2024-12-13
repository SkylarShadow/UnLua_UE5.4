---Base class for a data source that generates additional data sources at runtime
---@class UMetaDataRegistrySource : UDataRegistrySource
---@field public AssetUsage EMetaDataRegistrySourceAssetUsage @Asset usage
---@field public SearchRules FAssetManagerSearchRules @Asset registry scan rules
---@field protected RuntimeChildren TMap<string, UDataRegistrySource> @Map from source identifier such as package name to registered child
local UMetaDataRegistrySource = {}

