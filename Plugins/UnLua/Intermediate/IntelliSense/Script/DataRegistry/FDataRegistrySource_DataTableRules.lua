---Rules struct for data table access
---@class FDataRegistrySource_DataTableRules
---@field public bPrecacheTable boolean @True if the entire table should be loaded into memory when the source is loaded, false if the table is loaded on demand
---@field public CachedTableKeepSeconds number @Time in seconds to keep cached table alive if hard reference is off. 0 will release immediately, -1 will never release
local FDataRegistrySource_DataTableRules = {}
