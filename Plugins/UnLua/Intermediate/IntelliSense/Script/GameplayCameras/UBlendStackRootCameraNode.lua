---Root camera node for running a camera mode in a blend stack.
---This camera node wraps both the camera mode's root node, and the
---blend node used to blend it.
---@class UBlendStackRootCameraNode : UCameraNode
---@field private Blend UBlendCameraNode @The blend to use on the camera mode.
---@field private RootNode UCameraNode @The root of the instantied camera node tree.
local UBlendStackRootCameraNode = {}

