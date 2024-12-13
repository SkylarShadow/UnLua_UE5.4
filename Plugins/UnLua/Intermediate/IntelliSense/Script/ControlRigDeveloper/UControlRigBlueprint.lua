---@class UControlRigBlueprint : URigVMBlueprint
---@field public ModularRigSettings FModularRigSettings
---@field public HierarchySettings FRigHierarchySettings
---@field public RigModuleSettings FRigModuleSettings
---@field public ConnectionMap TMap<FRigElementKey, FRigElementKey>
---@field public ShapeLibraries TArray<TSoftObjectPtr<UControlRigShapeLibrary>>
---@field public DrawContainer FRigVMDrawContainer
---@field public Influences FRigInfluenceMapPerEvent
---@field public Hierarchy URigHierarchy
---@field public ModularRigModel FModularRigModel
---@field public ControlRigType EControlRigType
---@field public ItemTypeDisplayName string
---@field private bSupportsInversion boolean @Whether or not this rig has an Inversion Event
---@field private bSupportsControls boolean @Whether or not this rig has Controls on It
---@field private PreviewSkeletalMesh TSoftObjectPtr<USkeletalMesh>
---@field private SourceHierarchyImport TSoftObjectPtr<UObject> @The skeleton from import into a hierarchy
---@field private SourceCurveImport TSoftObjectPtr<UObject> @The skeleton from import into a curve
---@field private bExposesAnimatableControls boolean @If set to true, this control rig has animatable controls
---@field private Validator UControlRigValidator
---@field private ModulesRecompilationBracket integer
---@field private DebugBoneRadius number
local UControlRigBlueprint = {}

---@return boolean
function UControlRigBlueprint:TurnIntoStandaloneRig_Blueprint() end

---@return boolean
function UControlRigBlueprint:TurnIntoControlRigModule_Blueprint() end

---IInterface_PreviewMeshProvider interface
---@param PreviewMesh USkeletalMesh
---@param bMarkAsDirty boolean @[opt] 
function UControlRigBlueprint:SetPreviewMesh(PreviewMesh, bMarkAsDirty) end

function UControlRigBlueprint:RecompileModularRig() end

---@return boolean
function UControlRigBlueprint:IsControlRigModule() end

---@return UTexture2D
function UControlRigBlueprint:GetRigModuleIcon() end

---@return USkeletalMesh
function UControlRigBlueprint:GetPreviewMesh() end

---@return UModularRigController
function UControlRigBlueprint:GetModularRigController() end

---@return URigHierarchyController
function UControlRigBlueprint:GetHierarchyController() end

---@return UControlRig
function UControlRigBlueprint:GetDebuggedControlRig() end

---@return TArray_UControlRigBlueprint_
function UControlRigBlueprint.GetCurrentlyOpenRigBlueprints() end

---@return TSubclassOf_UObject_
function UControlRigBlueprint:GetControlRigClass() end

---@return UControlRig
function UControlRigBlueprint:CreateControlRig() end

---@param InHierarchy URigHierarchy
---@param InKeys TArray_FRigElementKey_
---@param bRemoveElements boolean @[opt] 
---@return TArray_URigVMNode_
function UControlRigBlueprint:ConvertHierarchyElementsToSpawnerNodes(InHierarchy, InKeys, bRemoveElements) end

---@return boolean
function UControlRigBlueprint:CanTurnIntoStandaloneRig_Blueprint() end

