---@class UShadowMapTexture2D : UTexture2D
---@field public ShadowmapFlags integer @Bit-field with shadowmap flags.
local UShadowMapTexture2D = {}

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UShadowMapTexture2D:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UShadowMapTexture2D:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UShadowMapTexture2D:AddAssetUserDataOfClass(InUserDataClass) end
