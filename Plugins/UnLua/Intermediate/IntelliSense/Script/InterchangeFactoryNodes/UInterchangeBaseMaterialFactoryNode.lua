---@class UInterchangeBaseMaterialFactoryNode : UInterchangeFactoryBaseNode
local UInterchangeBaseMaterialFactoryNode = {}

---Sets if this shader graph should be rendered two sided or not. Defaults to off.
---@param AttributeValue boolean
---@return boolean
function UInterchangeBaseMaterialFactoryNode:SetCustomIsMaterialImportEnabled(AttributeValue) end

---@param AttributeValue boolean @[out] 
---@return boolean
function UInterchangeBaseMaterialFactoryNode:GetCustomIsMaterialImportEnabled(AttributeValue) end

