---Data source that loads from a specific data table containing the same type of structs as the registry
---@class UDataRegistrySource_DataTable : UDataRegistrySource
---@field public SourceTable TSoftObjectPtr<UDataTable> @What table to load from
---@field public TableRules FDataRegistrySource_DataTableRules @Access rules
---@field protected CachedTable UDataTable @Hard ref to loaded table
---@field protected PreloadTable UDataTable @Preload table ref, will be set if this is a hard source
local UDataRegistrySource_DataTable = {}

