---A blend stack implemented as a camera node.
---@class UBlendStackCameraNode : UCameraNode
---@field public bAutoPop boolean @Whether to automatically pop camera modes out of the stack when another mode has reached 100% blend above them.
---@field public bBlendFirstCameraMode boolean @Whether to blend-in the first camera mode when the stack is previously empty.
local UBlendStackCameraNode = {}

