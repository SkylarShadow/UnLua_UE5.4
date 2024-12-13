---@class UInterchangeMaterialFunctionFactoryNode : UInterchangeBaseMaterialFactoryNode
local UInterchangeMaterialFunctionFactoryNode = {}

---@return TSubclassOf_UObject_
function UInterchangeMaterialFunctionFactoryNode:GetObjectClass() end

---@param InputName string
---@param ExpressionNodeUid string @[out] 
---@param OutputName string @[out] 
---@return boolean
function UInterchangeMaterialFunctionFactoryNode:GetInputConnection(InputName, ExpressionNodeUid, OutputName) end

