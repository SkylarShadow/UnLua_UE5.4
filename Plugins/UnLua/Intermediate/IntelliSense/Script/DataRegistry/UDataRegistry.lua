---Defines a place to efficiently store and retrieve structure data, can be used as a wrapper around Data/Curve Tables or extended with other sources
---@class UDataRegistry : UObject
---@field protected RegistryType string @Globally unique name used to identify this registry
---@field protected IdFormat FDataRegistryIdFormat @Rules for specifying valid item Ids, if default than any name can be used
---@field protected ItemStruct UScriptStruct @Structure type of all for items in this registry
---@field protected DataSources TArray<UDataRegistrySource> @List of data sources to search for items
---@field protected RuntimeSources TArray<UDataRegistrySource> @Runtime list of data sources, created from above list and includes sources added at runtime
---@field protected TimerUpdateFrequency number @How often to check for cache updates
---@field protected DefaultCachePolicy FDataRegistryCachePolicy @Editor-set cache policy
local UDataRegistry = {}

