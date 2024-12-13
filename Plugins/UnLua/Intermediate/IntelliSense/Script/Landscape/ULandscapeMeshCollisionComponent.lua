---@class ULandscapeMeshCollisionComponent : ULandscapeHeightfieldCollisionComponent
---@field public MeshGuid FGuid @Guid used to share PhysX heightfield objects in the editor
local ULandscapeMeshCollisionComponent = {}

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function ULandscapeMeshCollisionComponent:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function ULandscapeMeshCollisionComponent:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function ULandscapeMeshCollisionComponent:AddAssetUserDataOfClass(InUserDataClass) end
