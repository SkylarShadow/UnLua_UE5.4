---Assign a chosen NavArea in the vicinity of a spline
---This component must only be attached to an actor with a USplineComponent
---@class USplineNavModifierComponent : UNavModifierComponent
---@field private SplineExtent number @Radius of the tube surrounding the spline which will be used to generate the Nav Modifiers
---@field private NumSplineSamples integer @How many sections the spline will be divided into for generating overlap volumes. More samples result in finer detail
local USplineNavModifierComponent = {}

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function USplineNavModifierComponent:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function USplineNavModifierComponent:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function USplineNavModifierComponent:AddAssetUserDataOfClass(InUserDataClass) end

