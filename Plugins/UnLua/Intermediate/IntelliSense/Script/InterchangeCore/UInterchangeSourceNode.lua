---This class allows a translator to add general source data that describes the whole source. Pipelines can use this information.
---@class UInterchangeSourceNode : UInterchangeBaseNode
local UInterchangeSourceNode = {}

---Set the start of the source timeline.
---@param AttributeValue number
---@return boolean
function UInterchangeSourceNode:SetCustomSourceTimelineStart(AttributeValue) end

---Set the end of the source timeline.
---@param AttributeValue number
---@return boolean
function UInterchangeSourceNode:SetCustomSourceTimelineEnd(AttributeValue) end

---Set the source frame rate numerator.
---@param AttributeValue integer
---@return boolean
function UInterchangeSourceNode:SetCustomSourceFrameRateNumerator(AttributeValue) end

---Set the source frame rate denominator.
---@param AttributeValue integer
---@return boolean
function UInterchangeSourceNode:SetCustomSourceFrameRateDenominator(AttributeValue) end

---Set whether to import materials that aren't used.
---@param AttributeValue boolean
---@return boolean
function UInterchangeSourceNode:SetCustomImportUnusedMaterial(AttributeValue) end

---Set the start of the source animated time.
---@param AttributeValue number
---@return boolean
function UInterchangeSourceNode:SetCustomAnimatedTimeStart(AttributeValue) end

---Set the end of the source animated time.
---@param AttributeValue number
---@return boolean
function UInterchangeSourceNode:SetCustomAnimatedTimeEnd(AttributeValue) end

---Initialize the base data of the node.
---@param UniqueID string
---@param DisplayLabel string
function UInterchangeSourceNode:InitializeSourceNode(UniqueID, DisplayLabel) end

---Query the start of the source timeline.
---@param AttributeValue number @[out] 
---@return boolean
function UInterchangeSourceNode:GetCustomSourceTimelineStart(AttributeValue) end

---Query the end of the source timeline.
---@param AttributeValue number @[out] 
---@return boolean
function UInterchangeSourceNode:GetCustomSourceTimelineEnd(AttributeValue) end

---Query the source frame rate numerator.
---@param AttributeValue integer @[out] 
---@return boolean
function UInterchangeSourceNode:GetCustomSourceFrameRateNumerator(AttributeValue) end

---Query the source frame rate denominator.
---@param AttributeValue integer @[out] 
---@return boolean
function UInterchangeSourceNode:GetCustomSourceFrameRateDenominator(AttributeValue) end

---Query whether to import materials that aren't used.
---@param AttributeValue boolean @[out] 
---@return boolean
function UInterchangeSourceNode:GetCustomImportUnusedMaterial(AttributeValue) end

---Query the start of the source animated time.
---@param AttributeValue number @[out] 
---@return boolean
function UInterchangeSourceNode:GetCustomAnimatedTimeStart(AttributeValue) end

---Query the end of the source animated time.
---@param AttributeValue number @[out] 
---@return boolean
function UInterchangeSourceNode:GetCustomAnimatedTimeEnd(AttributeValue) end

