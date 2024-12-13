---@class USpectatorPawnMovement : UFloatingPawnMovement
---@field public bIgnoreTimeDilation boolean @If true, component moves at full speed no matter the time dilation. Default is false.
local USpectatorPawnMovement = {}

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function USpectatorPawnMovement:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function USpectatorPawnMovement:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function USpectatorPawnMovement:AddAssetUserDataOfClass(InUserDataClass) end

