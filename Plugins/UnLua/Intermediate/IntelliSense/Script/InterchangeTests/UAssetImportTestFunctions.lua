---@class UAssetImportTestFunctions : UImportTestFunctionsBase
local UAssetImportTestFunctions = {}

---Check whether the expected object metadata value is imported.
---@param Object UObject
---@param ExpectedMetadataKey string
---@param ExpectedMetadataValue string
---@return FInterchangeTestFunctionResult
function UAssetImportTestFunctions.CheckMetadataValue(Object, ExpectedMetadataKey, ExpectedMetadataValue) end

---Check whether the expected object metadata key exist.
---@param Object UObject
---@param ExpectedMetadataKey string
---@return FInterchangeTestFunctionResult
function UAssetImportTestFunctions.CheckMetadataExist(Object, ExpectedMetadataKey) end

---Check whether the expected number of metadata for the object are imported
---@param Object UObject
---@param ExpectedNumberOfMetadataForThisObject integer
---@return FInterchangeTestFunctionResult
function UAssetImportTestFunctions.CheckImportedMetadataCount(Object, ExpectedNumberOfMetadataForThisObject) end

