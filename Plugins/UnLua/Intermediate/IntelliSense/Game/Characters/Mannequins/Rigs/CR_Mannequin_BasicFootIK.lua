---@class CR_Mannequin_BasicFootIK_C : UControlRig
---@field public ZOffset_L_Target number
---@field public ZOffset_R_Target number
---@field public ZOffset_L number
---@field public ZOffset_R number
---@field public ZOffset_Pelvis number
---@field public ShouldDoIKTrace boolean
local CR_Mannequin_BasicFootIK_C = {}

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function CR_Mannequin_BasicFootIK_C:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function CR_Mannequin_BasicFootIK_C:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function CR_Mannequin_BasicFootIK_C:AddAssetUserDataOfClass(InUserDataClass) end

