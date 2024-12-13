---Blueprint function library for autocasting a player camera manager into the camera animation camera modifier.
---This prevents breaking Blueprints now that APlayerCameraManager::StartCameraShake returns the base class.
---@class UGameplayCamerasFunctionLibrary : UBlueprintFunctionLibrary
local UGameplayCamerasFunctionLibrary = {}

---@param CameraAnimationPlaySpace ECameraAnimationPlaySpace
---@return ECameraShakePlaySpace
function UGameplayCamerasFunctionLibrary.Conv_CameraShakePlaySpace(CameraAnimationPlaySpace) end

---@param CameraShakePlaySpace ECameraShakePlaySpace
---@return ECameraAnimationPlaySpace
function UGameplayCamerasFunctionLibrary.Conv_CameraAnimationPlaySpace(CameraShakePlaySpace) end

---@param PlayerCameraManager APlayerCameraManager
---@return UCameraAnimationCameraModifier
function UGameplayCamerasFunctionLibrary.Conv_CameraAnimationCameraModifier(PlayerCameraManager) end

