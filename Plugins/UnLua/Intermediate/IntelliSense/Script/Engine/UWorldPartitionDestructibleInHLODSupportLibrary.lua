---@class UWorldPartitionDestructibleInHLODSupportLibrary : UBlueprintFunctionLibrary
local UWorldPartitionDestructibleInHLODSupportLibrary = {}

---@param DestructibleInHLOD TScriptInterface_UWorldPartitionDestructibleInHLODInterface_
function UWorldPartitionDestructibleInHLODSupportLibrary.DestroyInHLOD(DestructibleInHLOD) end

---@param DestructibleInHLOD TScriptInterface_UWorldPartitionDestructibleInHLODInterface_
---@param DamagePercent number
function UWorldPartitionDestructibleInHLODSupportLibrary.DamageInHLOD(DestructibleInHLOD, DamagePercent) end

