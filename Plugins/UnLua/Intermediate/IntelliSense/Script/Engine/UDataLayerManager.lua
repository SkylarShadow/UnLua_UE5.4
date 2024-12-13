---@class UDataLayerManager : UObject
---@field public OnDataLayerInstanceRuntimeStateChanged MulticastDelegate
---@field private ReferencedObjects TSet<UObject> @Referenced objects (used by verse)
---@field private DataLayerLoadingPolicyClass TSoftClassPtr<UDataLayerLoadingPolicy>
---@field private DataLayerInstanceWithAssetClass TSoftClassPtr<UDataLayerInstanceWithAsset>
---@field private DataLayerLoadingPolicy UDataLayerLoadingPolicy
local UDataLayerManager = {}

---@param InDataLayerAsset UDataLayerAsset
---@param InState EDataLayerRuntimeState
---@param bInIsRecursive boolean @[opt] 
---@return boolean
function UDataLayerManager:SetDataLayerRuntimeState(InDataLayerAsset, InState, bInIsRecursive) end

---@param InDataLayerInstance UDataLayerInstance
---@param InState EDataLayerRuntimeState
---@param bInIsRecursive boolean @[opt] 
---@return boolean
function UDataLayerManager:SetDataLayerInstanceRuntimeState(InDataLayerInstance, InState, bInIsRecursive) end

---@return TArray_UDataLayerInstance_
function UDataLayerManager:GetDataLayerInstances() end

---@param InDataLayerInstance UDataLayerInstance
---@return EDataLayerRuntimeState
function UDataLayerManager:GetDataLayerInstanceRuntimeState(InDataLayerInstance) end

---@param InDataLayerInstanceName string
---@return UDataLayerInstance
function UDataLayerManager:GetDataLayerInstanceFromName(InDataLayerInstanceName) end

---@param InDataLayerAsset UDataLayerAsset
---@return UDataLayerInstance
function UDataLayerManager:GetDataLayerInstanceFromAsset(InDataLayerAsset) end

---@param InDataLayerInstance UDataLayerInstance
---@return EDataLayerRuntimeState
function UDataLayerManager:GetDataLayerInstanceEffectiveRuntimeState(InDataLayerInstance) end

