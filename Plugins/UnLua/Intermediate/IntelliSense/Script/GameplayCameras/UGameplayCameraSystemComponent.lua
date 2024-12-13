---A component that hosts a camera system.
---@class UGameplayCameraSystemComponent : USceneComponent
---@field private Evaluator UCameraSystemEvaluator
---@field private PreviewMesh UStaticMesh
---@field private PreviewMeshComponent UStaticMeshComponent
local UGameplayCameraSystemComponent = {}

---@return UCameraSystemEvaluator
function UGameplayCameraSystemComponent:GetCameraSystemEvaluator() end

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UGameplayCameraSystemComponent:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UGameplayCameraSystemComponent:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UGameplayCameraSystemComponent:AddAssetUserDataOfClass(InUserDataClass) end

