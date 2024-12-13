---This node is effectively a 'branch', picking one of two input poses based on an input Boolean value
---@class FAnimNode_BlendListByBool : FAnimNode_BlendListBase
---@field private bActiveValue boolean @Which input should be connected to the output?
local FAnimNode_BlendListByBool = {}
