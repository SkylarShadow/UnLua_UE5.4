---Runs logic for mapping input data to transforms (the "Rig")
---@class UModularRig : UControlRig
---@field public Modules TArray<FRigModuleInstance>
---@field public ModularRigSettings FModularRigSettings @END ControlRig
---@field public ModularRigModel FModularRigModel
---@field public ExecutionQueue TArray<FRigModuleExecutionElement>
local UModularRig = {}

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UModularRig:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UModularRig:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UModularRig:AddAssetUserDataOfClass(InUserDataClass) end

