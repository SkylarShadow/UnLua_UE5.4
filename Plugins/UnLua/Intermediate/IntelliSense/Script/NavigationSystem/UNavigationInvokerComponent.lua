---@class UNavigationInvokerComponent : UActorComponent
---@field protected TileGenerationRadius number
---@field protected TileRemovalRadius number
---@field protected SupportedAgents FNavAgentSelector @restrict navigation generation to specific agents
---@field protected Priority ENavigationInvokerPriority @Experimental invocation priority. It will modify the order in which invoked tiles are being built if SortPendingTilesMethod is set to SortByPriority.
local UNavigationInvokerComponent = {}

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UNavigationInvokerComponent:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UNavigationInvokerComponent:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UNavigationInvokerComponent:AddAssetUserDataOfClass(InUserDataClass) end

