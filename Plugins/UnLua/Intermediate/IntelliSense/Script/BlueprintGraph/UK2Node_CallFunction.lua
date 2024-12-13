---@class UK2Node_CallFunction : UK2Node
---@field public bIsPureFunc boolean @Indicates that this is a call to a pure function
---@field public bIsConstFunc boolean @Indicates that this is a call to a const function
---@field public bWantsEnumToExecExpansion boolean @Indicates that during compile we want to create multiple exec pins from an enum param
---@field public bIsInterfaceCall boolean @Indicates that this is a call to an interface function
---@field public FunctionReference FMemberReference @The function to call
local UK2Node_CallFunction = {}

