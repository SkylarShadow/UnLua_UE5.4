---@class FRigModuleReference
---@field public Name string
---@field public ShortName string
---@field public bShortNameBasedOnPath boolean
---@field public ParentPath string
---@field public Class TSoftClassPtr<UControlRig>
---@field public ConfigValues TMap<string, string> @Connectors to Connection element
---@field public Bindings TMap<string, string>
---@field public PreviousName string @ExternalVariableName (current module) -> SourceExternalVariableNamespacedPath (root rig or other module)
---@field public PreviousParentPath string
local FRigModuleReference = {}