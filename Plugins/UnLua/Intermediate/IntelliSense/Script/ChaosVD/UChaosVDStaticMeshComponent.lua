---CVD version of a Static Mesh Component that holds additional CVD data
---@class UChaosVDStaticMeshComponent : UStaticMeshComponent
---@field protected CachedMaterialInstancesByID TMap<EChaosVDMaterialType, UMaterialInstanceDynamic>
local UChaosVDStaticMeshComponent = {}

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UChaosVDStaticMeshComponent:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UChaosVDStaticMeshComponent:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UChaosVDStaticMeshComponent:AddAssetUserDataOfClass(InUserDataClass) end

