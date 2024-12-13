---Blueprint support for FMetasoundFrontendLiteral
---@class UMetasoundFrontendLiteralBlueprintAccess : UBlueprintFunctionLibrary
local UMetasoundFrontendLiteralBlueprintAccess = {}

---@param Value string
---@return FMetasoundFrontendLiteral
function UMetasoundFrontendLiteralBlueprintAccess.CreateStringMetaSoundLiteral(Value) end

---@param Value TArray_string_
---@return FMetasoundFrontendLiteral
function UMetasoundFrontendLiteralBlueprintAccess.CreateStringArrayMetaSoundLiteral(Value) end

---@param Value UObject
---@return FMetasoundFrontendLiteral
function UMetasoundFrontendLiteralBlueprintAccess.CreateObjectMetaSoundLiteral(Value) end

---@param Value TArray_UObject_
---@return FMetasoundFrontendLiteral
function UMetasoundFrontendLiteralBlueprintAccess.CreateObjectArrayMetaSoundLiteral(Value) end

---@param Param FAudioParameter
---@return FMetasoundFrontendLiteral
function UMetasoundFrontendLiteralBlueprintAccess.CreateMetaSoundLiteralFromParam(Param) end

---@param Value integer
---@return FMetasoundFrontendLiteral
function UMetasoundFrontendLiteralBlueprintAccess.CreateIntMetaSoundLiteral(Value) end

---@param Value TArray_integer_
---@return FMetasoundFrontendLiteral
function UMetasoundFrontendLiteralBlueprintAccess.CreateIntArrayMetaSoundLiteral(Value) end

---@param Value number
---@return FMetasoundFrontendLiteral
function UMetasoundFrontendLiteralBlueprintAccess.CreateFloatMetaSoundLiteral(Value) end

---@param Value TArray_number_
---@return FMetasoundFrontendLiteral
function UMetasoundFrontendLiteralBlueprintAccess.CreateFloatArrayMetaSoundLiteral(Value) end

---@param Value boolean
---@return FMetasoundFrontendLiteral
function UMetasoundFrontendLiteralBlueprintAccess.CreateBoolMetaSoundLiteral(Value) end

---@param Value TArray_boolean_
---@return FMetasoundFrontendLiteral
function UMetasoundFrontendLiteralBlueprintAccess.CreateBoolArrayMetaSoundLiteral(Value) end

