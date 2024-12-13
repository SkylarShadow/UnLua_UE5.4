---The Build Data is used to store transient / intermediate build information
---for the RigVM graph to improve the user experience.
---This object is never serialized.
---@class URigVMBuildData : UObject
---@field private GraphFunctionReferences TMap<FRigVMGraphFunctionIdentifier, FRigVMFunctionReferenceArray>
local URigVMBuildData = {}

