---@class UStructUtilsFunctionLibrary : UBlueprintFunctionLibrary
local UStructUtilsFunctionLibrary = {}

---Sets the value of InstancedStruct from the given source value.
---@param InstancedStruct FInstancedStruct @[out] 
---@param Value integer
function UStructUtilsFunctionLibrary.SetInstancedStructValue(InstancedStruct, Value) end

---Resets an InstancedStruct.
---@param InstancedStruct FInstancedStruct @[out] 
---@param StructType UScriptStruct @[opt] 
function UStructUtilsFunctionLibrary.Reset(InstancedStruct, StructType) end

---Checks whether two InstancedStructs are not equal.
---@param A FInstancedStruct
---@param B FInstancedStruct
---@return boolean
function UStructUtilsFunctionLibrary.NotEqual_InstancedStruct(A, B) end

---Create a new InstancedStruct from the given source value.
---@param Value integer
---@return FInstancedStruct
function UStructUtilsFunctionLibrary.MakeInstancedStruct(Value) end

---Checks whether the InstancedStruct contains value.
---@param InstancedStruct FInstancedStruct
---@return boolean
function UStructUtilsFunctionLibrary.IsValid_InstancedStruct(InstancedStruct) end

---Checks whether an InstancedStruct contains value.
---@param InstancedStruct FInstancedStruct
---@return EStructUtilsResult
function UStructUtilsFunctionLibrary.IsInstancedStructValid(InstancedStruct) end

---Retrieves data from an InstancedStruct if it matches the output type.
---@param ExecResult EStructUtilsResult @[out] 
---@param InstancedStruct FInstancedStruct
---@param Value integer @[out] 
function UStructUtilsFunctionLibrary.GetInstancedStructValue(ExecResult, InstancedStruct, Value) end

---Checks whether two InstancedStructs (and the values contained within) are equal.
---@param A FInstancedStruct
---@param B FInstancedStruct
---@return boolean
function UStructUtilsFunctionLibrary.EqualEqual_InstancedStruct(A, B) end

