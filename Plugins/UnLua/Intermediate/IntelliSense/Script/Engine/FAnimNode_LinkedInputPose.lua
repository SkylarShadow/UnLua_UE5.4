---@class FAnimNode_LinkedInputPose : FAnimNode_Base
---@field public Name string @The name of this linked input pose node's pose, used to identify the input of this graph.
---@field public Graph string @The graph that this linked input pose node is in, filled in by the compiler
---@field public InputPose FPoseLink @Input pose, optionally linked dynamically to another graph
local FAnimNode_LinkedInputPose = {}
