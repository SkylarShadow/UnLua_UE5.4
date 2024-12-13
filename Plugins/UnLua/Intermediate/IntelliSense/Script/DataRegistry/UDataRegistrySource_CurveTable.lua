---Data source that loads from a specific curve table asset
---@class UDataRegistrySource_CurveTable : UDataRegistrySource
---@field public SourceTable TSoftObjectPtr<UCurveTable> @What table to load from
---@field public TableRules FDataRegistrySource_DataTableRules @Access rules
---@field protected CachedTable UCurveTable @Hard ref to loaded table
---@field protected PreloadTable UCurveTable @Preload table ref, will be set if this is a hard source
local UDataRegistrySource_CurveTable = {}

