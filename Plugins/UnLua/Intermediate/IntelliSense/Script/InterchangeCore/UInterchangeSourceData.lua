---* Helper class to be able to read different source data
---* File on disk
---* HTTP URL (TODO)
---* Memory buffer (TODO)
---* Stream (TODO)
---@class UInterchangeSourceData : UObject
---@field private Filename string
local UInterchangeSourceData = {}

---@param InFilename string
---@return boolean
function UInterchangeSourceData:SetFilename(InFilename) end

---@return string
function UInterchangeSourceData:GetFilename() end

