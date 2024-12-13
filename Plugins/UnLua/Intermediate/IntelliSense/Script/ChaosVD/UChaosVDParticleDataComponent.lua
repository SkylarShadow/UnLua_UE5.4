---Component that will reference all particle data for a specific solver for the current frame.
---Currently it is empty and only used to interface with the component visualizer system for particle data,
---but when we eventually remove the dependency on actors to represent particles as planned, the particle data will be referenced in this component.\
---(similarly to how the Scene Query Data and Collision Data is referenced in their respective components)
---@class UChaosVDParticleDataComponent : UActorComponent
local UChaosVDParticleDataComponent = {}

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UChaosVDParticleDataComponent:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UChaosVDParticleDataComponent:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UChaosVDParticleDataComponent:AddAssetUserDataOfClass(InUserDataClass) end

