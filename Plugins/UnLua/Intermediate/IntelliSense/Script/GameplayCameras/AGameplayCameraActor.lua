---An actor that can run a camera asset.
---@class AGameplayCameraActor : AActor
---@field private SceneComponent USceneComponent
---@field private CameraComponent UGameplayCameraComponent
local AGameplayCameraActor = {}

---@return USceneComponent
function AGameplayCameraActor:GetSceneComponent() end

---@return UGameplayCameraComponent
function AGameplayCameraActor:GetCameraComponent() end

