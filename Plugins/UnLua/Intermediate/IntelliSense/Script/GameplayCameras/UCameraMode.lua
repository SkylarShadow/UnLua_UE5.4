---A camera mode asset, which runs a hierarchy of camera nodes to drive
---the behavior of a camera.
---@class UCameraMode : UObject
---@field public RootNode UCameraNode @Root camera node.
---@field public EnterTransitions TArray<FCameraModeTransition> @List of enter transitions for this camera mode.
---@field public ExitTransitions TArray<FCameraModeTransition> @List of exist transitions for this camera mode.
local UCameraMode = {}

