---Gizmo handle for uniform scaling
---@class UUniformScaleGizmoHandleGroup : UGizmoHandleGroup
local UUniformScaleGizmoHandleGroup = {}

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UUniformScaleGizmoHandleGroup:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UUniformScaleGizmoHandleGroup:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UUniformScaleGizmoHandleGroup:AddAssetUserDataOfClass(InUserDataClass) end

