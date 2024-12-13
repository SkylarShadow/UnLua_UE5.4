---Meta source that will generate CurveTable sources at runtime based on a directory scan or asset registration
---@class UMetaDataRegistrySource_CurveTable : UMetaDataRegistrySource
---@field public CreatedSource TSubclassOf<UDataRegistrySource_CurveTable> @What specific source class to spawn
---@field public TableRules FDataRegistrySource_DataTableRules @Access rules
local UMetaDataRegistrySource_CurveTable = {}

