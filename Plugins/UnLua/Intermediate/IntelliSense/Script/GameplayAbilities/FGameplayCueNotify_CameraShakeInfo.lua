---FGameplayCueNotify_CameraShakeInfo
---    Properties that specify how to play a camera shake.
---@class FGameplayCueNotify_CameraShakeInfo
---@field public SpawnConditionOverride FGameplayCueNotify_SpawnCondition @Condition to check before playing the camera shake.
---@field public PlacementInfoOverride FGameplayCueNotify_PlacementInfo @Defines how the camera shake will be placed.
---@field public CameraShake TSubclassOf<UCameraShakeBase> @Camera shake to play.
---@field public ShakeScale number @Scale applied to the camera shake.
---@field public PlaySpace EGameplayCueNotify_EffectPlaySpace @What coordinate space to play the camera shake relative to.
---@field public bOverrideSpawnCondition boolean @If enabled, use the spawn condition override and not the default one.
---@field public bOverridePlacementInfo boolean @If enabled, use the placement info override and not the default one.
---@field public bPlayInWorld boolean @If enabled, the camera shake will be played in the world and affect all players.
---@field public WorldInnerRadius number @Players inside this radius get the full intensity camera shake.
---@field public WorldOuterRadius number @Players outside this radius do not get the camera shake applied.
---@field public WorldFalloffExponent number @Exponent that describes the shake intensity falloff curve between the inner and outer radii.  (1.0 is linear)
local FGameplayCueNotify_CameraShakeInfo = {}