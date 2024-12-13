---A complete camera asset.
---@class UCameraAsset : UObject
---@field public CameraDirector UCameraDirector @The camera director to use in this camera.
---@field public EnterTransitions TArray<FCameraModeTransition> @A list of default enter transitions for all the camera modes in this asset.
---@field public ExitTransitions TArray<FCameraModeTransition> @A list of default exit transitions for all the camera modes in this asset.
local UCameraAsset = {}

