---Network physics component that will be attached to any player controller
---@class UNetworkPhysicsComponent : UActorComponent
---@field protected ReplicatedInputs FNetworkPhysicsRewindDataInputProxy @replicated physics inputs
---@field protected ReplicatedStates FNetworkPhysicsRewindDataStateProxy @replicated physics states
local UNetworkPhysicsComponent = {}

---@param ClientInputs FNetworkPhysicsRewindDataInputProxy
function UNetworkPhysicsComponent:ServerReceiveInputsDatas(ClientInputs) end

---Server RPC to receive inputs from client
---@param ClientInputs FNetworkPhysicsRewindDataInputProxy
function UNetworkPhysicsComponent:ServerReceiveInputData(ClientInputs) end

---repnotify for the states on the client
function UNetworkPhysicsComponent:OnRep_SetReplicatedStates() end

---repnotify for the inputs on the client
function UNetworkPhysicsComponent:OnRep_SetReplicatedInputs() end

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UNetworkPhysicsComponent:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UNetworkPhysicsComponent:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UNetworkPhysicsComponent:AddAssetUserDataOfClass(InUserDataClass) end

