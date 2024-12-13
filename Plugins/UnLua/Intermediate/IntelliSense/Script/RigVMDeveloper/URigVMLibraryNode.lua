---The Library Node represents a function invocation of a
---function specified somewhere else. The function can be
---expressed as a sub-graph (RigVMGroupNode) or as a
---referenced function (RigVMFunctionNode).
---@class URigVMLibraryNode : URigVMTemplateNode
local URigVMLibraryNode = {}

---@return URigVMFunctionLibrary
function URigVMLibraryNode:GetLibrary() end

---@return URigVMGraph
function URigVMLibraryNode:GetContainedGraph() end

