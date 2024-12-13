---USTRUCT()
---struct FNetworkPhysicsSettingsRewindData
---{
---       GENERATED_BODY()
---};
---USTRUCT()
---struct FNetworkPhysicsSettingsRenderInterpolation
---{
---       GENERATED_BODY()
---};
---@class UNetworkPhysicsSettingsComponent : UActorComponent
---@field public GeneralSettings FNetworkPhysicsSettings
---@field public PredictiveInterpolationSettings FNetworkPhysicsSettingsPredictiveInterpolation
---@field public ResimulationSettings FNetworkPhysicsSettingsResimulation
local UNetworkPhysicsSettingsComponent = {}

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UNetworkPhysicsSettingsComponent:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UNetworkPhysicsSettingsComponent:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UNetworkPhysicsSettingsComponent:AddAssetUserDataOfClass(InUserDataClass) end

