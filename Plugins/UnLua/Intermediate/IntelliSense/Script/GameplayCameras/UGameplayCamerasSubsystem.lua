---World subsystem that holds global objects for handling camera animation sequences.
---@class UGameplayCamerasSubsystem : UWorldSubsystem
local UGameplayCamerasSubsystem = {}

---Stops the given camera animation instance.
---@param PlayerController APlayerController
---@param Handle FCameraAnimationHandle
---@param bImmediate boolean @[opt] 
function UGameplayCamerasSubsystem:StopCameraAnimation(PlayerController, Handle, bImmediate) end

---Stop playing all instances of the given camera animation sequence.
---@param PlayerController APlayerController
---@param Sequence UCameraAnimationSequence
---@param bImmediate boolean @[opt] 
function UGameplayCamerasSubsystem:StopAllCameraAnimationsOf(PlayerController, Sequence, bImmediate) end

---Stop all camera animation instances.
---@param PlayerController APlayerController
---@param bImmediate boolean @[opt] 
function UGameplayCamerasSubsystem:StopAllCameraAnimations(PlayerController, bImmediate) end

---Play a new camera animation sequence.
---@param PlayerController APlayerController
---@param Sequence UCameraAnimationSequence
---@param Params FCameraAnimationParams
---@return FCameraAnimationHandle
function UGameplayCamerasSubsystem:PlayCameraAnimation(PlayerController, Sequence, Params) end

---Returns whether the given camera animation is playing.
---@param PlayerController APlayerController
---@param Handle FCameraAnimationHandle
---@return boolean
function UGameplayCamerasSubsystem:IsCameraAnimationActive(PlayerController, Handle) end

