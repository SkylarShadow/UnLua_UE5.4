---@class UInterchangeDecalMaterialFactoryNode : UInterchangeBaseMaterialFactoryNode
local UInterchangeDecalMaterialFactoryNode = {}

---@param AttributeValue string
---@return boolean
function UInterchangeDecalMaterialFactoryNode:SetCustomNormalTexturePath(AttributeValue) end

---@param AttributeValue string
---@return boolean
function UInterchangeDecalMaterialFactoryNode:SetCustomDiffuseTexturePath(AttributeValue) end

---@return TSubclassOf_UObject_
function UInterchangeDecalMaterialFactoryNode:GetObjectClass() end

---@param AttributeValue string @[out] 
---@return boolean
function UInterchangeDecalMaterialFactoryNode:GetCustomNormalTexturePath(AttributeValue) end

---@param AttributeValue string @[out] 
---@return boolean
function UInterchangeDecalMaterialFactoryNode:GetCustomDiffuseTexturePath(AttributeValue) end

