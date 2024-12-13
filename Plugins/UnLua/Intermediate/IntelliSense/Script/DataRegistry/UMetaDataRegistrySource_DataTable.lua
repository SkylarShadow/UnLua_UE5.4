---Meta source that will generate DataTable sources at runtime based on a directory scan or asset registration
---@class UMetaDataRegistrySource_DataTable : UMetaDataRegistrySource
---@field public CreatedSource TSubclassOf<UDataRegistrySource_DataTable> @What specific source class to spawn
---@field public TableRules FDataRegistrySource_DataTableRules @Access rules
local UMetaDataRegistrySource_DataTable = {}

