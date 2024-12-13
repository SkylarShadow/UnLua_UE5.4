---@class UModularRigController : UObject
local UModularRigController = {}

---@param InModulePath string
---@param InVariableName string
---@param bSetupUndo boolean @[opt] 
---@return boolean
function UModularRigController:UnBindModuleVariable(InModulePath, InVariableName, bSetupUndo) end

---@param InModulePath string
---@param InNewShortName string
---@param bSetupUndo boolean @[opt] 
---@return boolean
function UModularRigController:SetModuleShortName(InModulePath, InNewShortName, bSetupUndo) end

---@param InModulePath string
---@param InVariableName string
---@param InValue string
---@param bSetupUndo boolean @[opt] 
---@return boolean
function UModularRigController:SetConfigValueInModule(InModulePath, InVariableName, InValue, bSetupUndo) end

---@param InModulePath string
---@param InNewParentModulePath string
---@param bSetupUndo boolean @[opt] 
---@return string
function UModularRigController:ReparentModule(InModulePath, InNewParentModulePath, bSetupUndo) end

---@param InModulePath string
---@param InNewName string
---@param bSetupUndo boolean @[opt] 
---@return string
function UModularRigController:RenameModule(InModulePath, InNewName, bSetupUndo) end

---@param InModulePath string
---@param InSettings FRigVMMirrorSettings
---@param bSetupUndo boolean @[opt] 
---@return string
function UModularRigController:MirrorModule(InModulePath, InSettings, bSetupUndo) end

---@param bSetupUndo boolean @[opt] 
---@return TArray_FRigElementKey_
function UModularRigController:DisconnectCyclicConnectors(bSetupUndo) end

---@param InConnectorKey FRigElementKey
---@param bDisconnectSubModules boolean @[opt] 
---@param bSetupUndo boolean @[opt] 
---@return boolean
function UModularRigController:DisconnectConnector(InConnectorKey, bDisconnectSubModules, bSetupUndo) end

---@param InModulePath string
---@param bSetupUndo boolean @[opt] 
---@return boolean
function UModularRigController:DeleteModule(InModulePath, bSetupUndo) end

---@param InConnectorKey FRigElementKey
---@param InTargetKey FRigElementKey
---@param bSetupUndo boolean @[opt] 
---@param bAutoResolveOtherConnectors boolean @[opt] 
---@param bCheckValidConnection boolean @[opt] 
---@return boolean
function UModularRigController:ConnectConnectorToElement(InConnectorKey, InTargetKey, bSetupUndo, bAutoResolveOtherConnectors, bCheckValidConnection) end

---@param InConnectorKey FRigElementKey
---@param InTargetKey FRigElementKey
---@param OutErrorMessage string @[out] 
---@return boolean
function UModularRigController:CanConnectConnectorToElement(InConnectorKey, InTargetKey, OutErrorMessage) end

---@param InModulePath string
---@param InVariableName string
---@param InSourcePath string
---@param bSetupUndo boolean @[opt] 
---@return boolean
function UModularRigController:BindModuleVariable(InModulePath, InVariableName, InSourcePath, bSetupUndo) end

---@param InConnectorKeys TArray_FRigElementKey_
---@param bReplaceExistingConnections boolean
---@param bSetupUndo boolean @[opt] 
---@return boolean
function UModularRigController:AutoConnectSecondaryConnectors(InConnectorKeys, bReplaceExistingConnections, bSetupUndo) end

---@param InModulePaths TArray_string_
---@param bReplaceExistingConnections boolean
---@param bSetupUndo boolean @[opt] 
---@return boolean
function UModularRigController:AutoConnectModules(InModulePaths, bReplaceExistingConnections, bSetupUndo) end

---@param InModuleName string
---@param InClass TSubclassOf_UControlRig_
---@param InParentModulePath string
---@param bSetupUndo boolean @[opt] 
---@return string
function UModularRigController:AddModule(InModuleName, InClass, InParentModulePath, bSetupUndo) end

