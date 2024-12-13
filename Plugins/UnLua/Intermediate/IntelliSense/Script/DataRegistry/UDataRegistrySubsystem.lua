---Singleton manager that provides synchronous and asynchronous access to data registries
---@class UDataRegistrySubsystem : UEngineSubsystem
local UDataRegistrySubsystem = {}

---Returns true if the values are not equal (A != B)
---@param A FDataRegistryType
---@param B FDataRegistryType
---@return boolean
function UDataRegistrySubsystem.NotEqual_DataRegistryType(A, B) end

---Returns true if the values are not equal (A != B)
---@param A FDataRegistryId
---@param B FDataRegistryId
---@return boolean
function UDataRegistrySubsystem.NotEqual_DataRegistryId(A, B) end

---Returns true if this is a non-empty type, does not check if it is currently registered
---@param DataRegistryType FDataRegistryType
---@return boolean
function UDataRegistrySubsystem.IsValidDataRegistryType(DataRegistryType) end

---Returns true if this is a non-empty item identifier, does not check if it is currently registered
---@param DataRegistryId FDataRegistryId
---@return boolean
function UDataRegistrySubsystem.IsValidDataRegistryId(DataRegistryId) end

---Attempts to get structure data stored in a DataRegistry cache after an async acquire, modifying OutItem if the item is available
---@param ItemId FDataRegistryId
---@param ResolvedLookup FDataRegistryLookup
---@param OutItem FTableRowBase @[out] 
---@return boolean
function UDataRegistrySubsystem.GetCachedItemFromLookupBP(ItemId, ResolvedLookup, OutItem) end

---Attempts to get cached structure data stored in a DataRegistry, modifying OutItem if the item is available
---(EXPERIMENTAL) this version has an input param and simple bool return
---@param ItemId FDataRegistryId
---@param OutItem FTableRowBase @[out] 
---@return boolean
function UDataRegistrySubsystem.GetCachedItemBP(ItemId, OutItem) end

---Attempts to get cached structure data stored in a DataRegistry, modifying OutItem if the item is available
---(EXPERIMENTAL) this version has an output param and enum result
---@param ItemId FDataRegistryId
---@param OutResult EDataRegistrySubsystemGetItemResult @[out] 
---@param OutItem FTableRowBase @[out] 
function UDataRegistrySubsystem.FindCachedItemBP(ItemId, OutResult, OutItem) end

---Attempts to evaluate a curve stored in a DataRegistry cache using a specific input value
---@param ItemId FDataRegistryId
---@param InputValue number
---@param DefaultValue number
---@param OutResult EDataRegistrySubsystemGetItemResult @[out] 
---@param OutValue number @[out] 
function UDataRegistrySubsystem.EvaluateDataRegistryCurve(ItemId, InputValue, DefaultValue, OutResult, OutValue) end

---Returns true if the values are equal (A == B)
---@param A FDataRegistryType
---@param B FDataRegistryType
---@return boolean
function UDataRegistrySubsystem.EqualEqual_DataRegistryType(A, B) end

---Returns true if the values are equal (A == B)
---@param A FDataRegistryId
---@param B FDataRegistryId
---@return boolean
function UDataRegistrySubsystem.EqualEqual_DataRegistryId(A, B) end

---Converts a Data Registry Type to a string. The other direction is not provided because it cannot be validated
---@param DataRegistryType FDataRegistryType
---@return string
function UDataRegistrySubsystem.Conv_DataRegistryTypeToString(DataRegistryType) end

---Converts a Data Registry Id to a string. The other direction is not provided because it cannot be validated
---@param DataRegistryId FDataRegistryId
---@return string
function UDataRegistrySubsystem.Conv_DataRegistryIdToString(DataRegistryId) end

---Starts an asynchronous acquire of a data registry item that may not yet be cached.
---@param ItemId FDataRegistryId
---@param AcquireCallback Delegate
---@return boolean
function UDataRegistrySubsystem.AcquireItemBP(ItemId, AcquireCallback) end

