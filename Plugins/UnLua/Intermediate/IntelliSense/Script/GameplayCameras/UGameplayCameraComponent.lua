---A component that can run a camera asset inside its own camera evaluation context.
---@class UGameplayCameraComponent : USceneComponent
---@field public Camera UCameraAsset
---@field protected EvaluationContext UGameplayCameraComponentEvaluationContext
---@field protected PreviewMesh UStaticMesh
---@field protected PreviewMeshComponent UStaticMeshComponent
local UGameplayCameraComponent = {}

---@param PlayerIndex integer @[opt] 
function UGameplayCameraComponent:ActivateCamera(PlayerIndex) end

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UGameplayCameraComponent:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UGameplayCameraComponent:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UGameplayCameraComponent:AddAssetUserDataOfClass(InUserDataClass) end

