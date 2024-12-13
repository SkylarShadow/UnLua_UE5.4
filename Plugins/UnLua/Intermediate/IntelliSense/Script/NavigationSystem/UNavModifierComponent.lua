---@class UNavModifierComponent : UNavRelevantComponent
---@field public AreaClass TSubclassOf<UNavArea>
---@field public FailsafeExtent FVector @box extent used ONLY when owning actor doesn't have collision component
---@field public NavMeshResolution ENavigationDataResolution @Experimental: Indicates which navmesh resolution should be used around the actor.
---@field public bIncludeAgentHeight boolean @Setting to 'true' will result in expanding lower bounding box of the nav     modifier by agent's height, before applying to navmesh
local UNavModifierComponent = {}

---@param NewAreaClass TSubclassOf_UNavArea_
function UNavModifierComponent:SetAreaClass(NewAreaClass) end

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UNavModifierComponent:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UNavModifierComponent:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UNavModifierComponent:AddAssetUserDataOfClass(InUserDataClass) end

