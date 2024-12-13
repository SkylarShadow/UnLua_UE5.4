---An actor that hosts a camera system.
---@class AGameplayCameraSystemActor : AActor
---@field private CameraSystemComponent UGameplayCameraSystemComponent
---@field private AutoActivateForPlayer integer
local AGameplayCameraSystemActor = {}

---@return UGameplayCameraSystemComponent
function AGameplayCameraSystemActor:GetCameraSystemComponent() end

---@param PlayerIndex integer
function AGameplayCameraSystemActor:ActivateForPlayer(PlayerIndex) end

