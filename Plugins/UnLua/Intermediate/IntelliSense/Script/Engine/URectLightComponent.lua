---A light component which emits light from a rectangle.
---@class URectLightComponent : ULocalLightComponent
---@field public SourceWidth number @Width of light source rect. Note that light sources shapes which intersect shadow casting geometry can cause shadowing artifacts.
---@field public SourceHeight number @Height of light source rect. Note that light sources shapes which intersect shadow casting geometry can cause shadowing artifacts.
---@field public BarnDoorAngle number @Angle of barn door attached to the light source rect.
---@field public BarnDoorLength number @Length of barn door attached to the light source rect.
---@field public SourceTexture UTexture @Texture mapped to the light source rectangle
local URectLightComponent = {}

---@param NewValue number
function URectLightComponent:SetSourceWidth(NewValue) end

---@param NewValue UTexture
function URectLightComponent:SetSourceTexture(NewValue) end

---@param NewValue number
function URectLightComponent:SetSourceHeight(NewValue) end

---@param NewValue number
function URectLightComponent:SetBarnDoorLength(NewValue) end

---@param NewValue number
function URectLightComponent:SetBarnDoorAngle(NewValue) end

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function URectLightComponent:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function URectLightComponent:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function URectLightComponent:AddAssetUserDataOfClass(InUserDataClass) end

