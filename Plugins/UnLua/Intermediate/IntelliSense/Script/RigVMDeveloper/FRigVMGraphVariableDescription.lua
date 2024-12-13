---The variable description is used to convey information
---about unique variables within a Graph. Multiple Variable
---Nodes can share the same variable description.
---@class FRigVMGraphVariableDescription
---@field public Name string @The name of the variable
---@field public CPPType string @The C++ data type of the variable
---@field public CPPTypeObject UObject @The Struct of the C++ data type of the variable (or nullptr)
---@field public DefaultValue string @The default value of the variable
local FRigVMGraphVariableDescription = {}
