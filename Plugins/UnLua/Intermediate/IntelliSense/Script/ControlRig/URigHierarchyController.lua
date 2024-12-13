---@class URigHierarchyController : UObject
---@field public bReportWarningsAndErrors boolean
local URigHierarchyController = {}

---Sets the selection based on a list of keys
---@param InKeys TArray_FRigElementKey_
---@param bPrintPythonCommand boolean @[opt] 
---@return boolean
function URigHierarchyController:SetSelection(InKeys, bPrintPythonCommand) end

---Sets a new parent to an element. For elements that allow more than one parent the parent list will be replaced.
---@param InChild FRigElementKey
---@param InParent FRigElementKey
---@param bMaintainGlobalTransform boolean @[opt] 
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommand boolean @[opt] 
---@return boolean
function URigHierarchyController:SetParent(InChild, InParent, bMaintainGlobalTransform, bSetupUndo, bPrintPythonCommand) end

---Sets the hierarchy currently linked to this controller
---@param InHierarchy URigHierarchy
function URigHierarchyController:SetHierarchy(InHierarchy) end

---Sets the display name on a control
---@param InControl FRigElementKey
---@param InDisplayName string
---@param bRenameElement boolean @[opt] 
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommand boolean @[opt] 
---@return string
function URigHierarchyController:SetDisplayName(InControl, InDisplayName, bRenameElement, bSetupUndo, bPrintPythonCommand) end

---Sets a control's settings given a control key
---@param InKey FRigElementKey
---@param InSettings FRigControlSettings
---@param bSetupUndo boolean @[opt] 
---@return boolean
function URigHierarchyController:SetControlSettings(InKey, InSettings, bSetupUndo) end

---Selects or deselects an element in the hierarchy
---@param InKey FRigElementKey
---@param bSelect boolean @[opt] 
---@param bClearSelection boolean @[opt] 
---@return boolean
function URigHierarchyController:SelectElement(InKey, bSelect, bClearSelection) end

---Changes the element's index within its default parent (or the top level)
---@param InElement FRigElementKey
---@param InIndex integer
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommand boolean @[opt] 
---@return boolean
function URigHierarchyController:ReorderElement(InElement, InIndex, bSetupUndo, bPrintPythonCommand) end

---Renames an existing element in the hierarchy
---@param InElement FRigElementKey
---@param InName string
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommand boolean @[opt] 
---@param bClearSelection boolean @[opt] 
---@return FRigElementKey
function URigHierarchyController:RenameElement(InElement, InName, bSetupUndo, bPrintPythonCommand, bClearSelection) end

---Removes an existing parent from an element in the hierarchy. For elements that allow only one parent the element will be unparented (same as ::RemoveAllParents)
---@param InChild FRigElementKey
---@param InParent FRigElementKey
---@param bMaintainGlobalTransform boolean @[opt] 
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommand boolean @[opt] 
---@return boolean
function URigHierarchyController:RemoveParent(InChild, InParent, bMaintainGlobalTransform, bSetupUndo, bPrintPythonCommand) end

---Removes an existing element from the hierarchy
---@param InElement FRigElementKey
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommand boolean @[opt] 
---@return boolean
function URigHierarchyController:RemoveElement(InElement, bSetupUndo, bPrintPythonCommand) end

---Removes all parents from an element in the hierarchy.
---@param InChild FRigElementKey
---@param bMaintainGlobalTransform boolean @[opt] 
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommand boolean @[opt] 
---@return boolean
function URigHierarchyController:RemoveAllParents(InChild, bMaintainGlobalTransform, bSetupUndo, bPrintPythonCommand) end

---Mirrors the given elements
---@param InKeys TArray_FRigElementKey_
---@param InSettings FRigVMMirrorSettings
---@param bSelectNewElements boolean @[opt] 
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommands boolean @[opt] 
---@return TArray_FRigElementKey_
function URigHierarchyController:MirrorElements(InKeys, InSettings, bSelectNewElements, bSetupUndo, bPrintPythonCommands) end

---Imports the content of a text buffer to the hierarchy
---@param InContent string
---@param bReplaceExistingElements boolean @[opt] 
---@param bSelectNewElements boolean @[opt] 
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommands boolean @[opt] 
---@return TArray_FRigElementKey_
function URigHierarchyController:ImportFromText(InContent, bReplaceExistingElements, bSelectNewElements, bSetupUndo, bPrintPythonCommands) end

---Imports all curves from a skeleton to the hierarchy
---@param InAssetPath string
---@param InNameSpace string @[opt] 
---@param bSelectCurves boolean @[opt] 
---@param bSetupUndo boolean @[opt] 
---@return TArray_FRigElementKey_
function URigHierarchyController:ImportCurvesFromAsset(InAssetPath, InNameSpace, bSelectCurves, bSetupUndo) end

---Imports all curves from a skeleton to the hierarchy
---@param InSkeleton USkeleton
---@param InNameSpace string @[opt] 
---@param bSelectCurves boolean @[opt] 
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommand boolean @[opt] 
---@return TArray_FRigElementKey_
function URigHierarchyController:ImportCurves(InSkeleton, InNameSpace, bSelectCurves, bSetupUndo, bPrintPythonCommand) end

---Imports an existing skeleton to the hierarchy
---@param InAssetPath string
---@param InNameSpace string @[opt] 
---@param bReplaceExistingBones boolean @[opt] 
---@param bRemoveObsoleteBones boolean @[opt] 
---@param bSelectBones boolean @[opt] 
---@param bSetupUndo boolean @[opt] 
---@return TArray_FRigElementKey_
function URigHierarchyController:ImportBonesFromAsset(InAssetPath, InNameSpace, bReplaceExistingBones, bRemoveObsoleteBones, bSelectBones, bSetupUndo) end

---Imports an existing skeleton to the hierarchy
---@param InSkeleton USkeleton
---@param InNameSpace string @[opt] 
---@param bReplaceExistingBones boolean @[opt] 
---@param bRemoveObsoleteBones boolean @[opt] 
---@param bSelectBones boolean @[opt] 
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommand boolean @[opt] 
---@return TArray_FRigElementKey_
function URigHierarchyController:ImportBones(InSkeleton, InNameSpace, bReplaceExistingBones, bRemoveObsoleteBones, bSelectBones, bSetupUndo, bPrintPythonCommand) end

---Returns the hierarchy currently linked to this controller
---@return URigHierarchy
function URigHierarchyController:GetHierarchy() end

---Returns the control settings of a given control
---@param InKey FRigElementKey
---@return FRigControlSettings
function URigHierarchyController:GetControlSettings(InKey) end

---@return TArray_string_
function URigHierarchyController:GeneratePythonCommands() end

---Exports a list of items to text
---@param InKeys TArray_FRigElementKey_
---@return string
function URigHierarchyController:ExportToText(InKeys) end

---Exports the selected items to text
---@return string
function URigHierarchyController:ExportSelectionToText() end

---Duplicate the given elements
---@param InKeys TArray_FRigElementKey_
---@param bSelectNewElements boolean @[opt] 
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommands boolean @[opt] 
---@return TArray_FRigElementKey_
function URigHierarchyController:DuplicateElements(InKeys, bSelectNewElements, bSetupUndo, bPrintPythonCommands) end

---Deselects or deselects an element in the hierarchy
---@param InKey FRigElementKey
---@return boolean
function URigHierarchyController:DeselectElement(InKey) end

---Clears the selection
---@return boolean
function URigHierarchyController:ClearSelection() end

---Adds a socket to the hierarchy
---@param InName string
---@param InParent FRigElementKey
---@param InTransform FTransform
---@param bTransformInGlobal boolean @[opt] 
---@param InColor FLinearColor @[opt] 
---@param InDescription string
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommand boolean @[opt] 
---@return FRigElementKey
function URigHierarchyController:AddSocket(InName, InParent, InTransform, bTransformInGlobal, InColor, InDescription, bSetupUndo, bPrintPythonCommand) end

---Adds a rigidbody to the hierarchy
---@param InName string
---@param InParent FRigElementKey
---@param InSettings FRigRigidBodySettings
---@param InLocalTransform FTransform
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommand boolean @[opt] 
---@return FRigElementKey
function URigHierarchyController:AddRigidBody(InName, InParent, InSettings, InLocalTransform, bSetupUndo, bPrintPythonCommand) end

---Adds a new parent to an element. For elements that allow only one parent the parent will be replaced (Same as ::SetParent).
---@param InChild FRigElementKey
---@param InParent FRigElementKey
---@param InWeight number @[opt] 
---@param bMaintainGlobalTransform boolean @[opt] 
---@param bSetupUndo boolean @[opt] 
---@return boolean
function URigHierarchyController:AddParent(InChild, InParent, InWeight, bMaintainGlobalTransform, bSetupUndo) end

---Adds a null to the hierarchy
---@param InName string
---@param InParent FRigElementKey
---@param InTransform FTransform
---@param bTransformInGlobal boolean @[opt] 
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommand boolean @[opt] 
---@return FRigElementKey
function URigHierarchyController:AddNull(InName, InParent, InTransform, bTransformInGlobal, bSetupUndo, bPrintPythonCommand) end

---Adds a curve to the hierarchy
---@param InName string
---@param InValue number @[opt] 
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommand boolean @[opt] 
---@return FRigElementKey
function URigHierarchyController:AddCurve(InName, InValue, bSetupUndo, bPrintPythonCommand) end

---Adds a control to the hierarchy
---@param InName string
---@param InParent FRigElementKey
---@param InSettings FRigControlSettings
---@param InValue FRigControlValue
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommand boolean @[opt] 
---@return FRigElementKey
function URigHierarchyController:AddControl_ForBlueprint(InName, InParent, InSettings, InValue, bSetupUndo, bPrintPythonCommand) end

---Adds a connector to the hierarchy
---@param InName string
---@param InSettings FRigConnectorSettings @[opt] 
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommand boolean @[opt] 
---@return FRigElementKey
function URigHierarchyController:AddConnector(InName, InSettings, bSetupUndo, bPrintPythonCommand) end

---Adds a bone to the hierarchy
---@param InName string
---@param InParent FRigElementKey
---@param InTransform FTransform
---@param bTransformInGlobal boolean @[opt] 
---@param InBoneType ERigBoneType @[opt] 
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommand boolean @[opt] 
---@return FRigElementKey
function URigHierarchyController:AddBone(InName, InParent, InTransform, bTransformInGlobal, InBoneType, bSetupUndo, bPrintPythonCommand) end

---Adds a control to the hierarchy
---@param InName string
---@param InParentControl FRigElementKey
---@param InSettings FRigControlSettings
---@param bSetupUndo boolean @[opt] 
---@param bPrintPythonCommand boolean @[opt] 
---@return FRigElementKey
function URigHierarchyController:AddAnimationChannel_ForBlueprint(InName, InParentControl, InSettings, bSetupUndo, bPrintPythonCommand) end

