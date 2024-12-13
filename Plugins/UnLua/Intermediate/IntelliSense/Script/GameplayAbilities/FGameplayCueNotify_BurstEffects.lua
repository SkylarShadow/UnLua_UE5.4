---FGameplayCueNotify_BurstEffects
---    Set of effects to spawn for a single event, used by all gameplay cue notify types.
---@class FGameplayCueNotify_BurstEffects
---@field protected BurstParticles TArray<FGameplayCueNotify_ParticleInfo> @Particle systems to be spawned on gameplay cue execution.  These should never use looping effects!
---@field protected BurstSounds TArray<FGameplayCueNotify_SoundInfo> @Sound to be played on gameplay cue execution.  These should never use looping effects!
---@field protected BurstCameraShake FGameplayCueNotify_CameraShakeInfo @Camera shake to be played on gameplay cue execution.  This should never use a looping effect!
---@field protected BurstCameraLensEffect FGameplayCueNotify_CameraLensEffectInfo @Camera lens effect to be played on gameplay cue execution.  This should never use a looping effect!
---@field protected BurstForceFeedback FGameplayCueNotify_ForceFeedbackInfo @Force feedback to be played on gameplay cue execution.  This should never use a looping effect!
---@field protected BurstDevicePropertyEffect FGameplayCueNotify_InputDevicePropertyInfo @Input device properties to be applied on gameplay cue execution
---@field protected BurstDecal FGameplayCueNotify_DecalInfo @Decal to be spawned on gameplay cue execution.  Actor should have fade out time or override should be set so it will clean up properly.
local FGameplayCueNotify_BurstEffects = {}
