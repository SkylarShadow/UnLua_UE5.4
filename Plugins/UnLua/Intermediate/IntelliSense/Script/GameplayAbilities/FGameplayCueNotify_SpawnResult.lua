---FGameplayCueNotify_SpawnResult
---    Temporary structure used to track results of spawning components.
---@class FGameplayCueNotify_SpawnResult
---@field public FxSystemComponents TArray<UFXSystemComponent> @List of FX components spawned.  There may be null pointers here as it matches the defined order.
---@field public AudioComponents TArray<UAudioComponent> @List of audio components spawned.  There may be null pointers here as it matches the defined order.
---@field public CameraShakes TArray<UCameraShakeBase> @List of camera shakes played.  There will be one camera shake per local player controller if shake is played in world.
---@field public CameraLensEffects TArray<TScriptInterface<UCameraLensEffectInterface>> @List of camera len effects spawned.  There will be one camera lens effect per local player controller if the effect is played in world.
---@field public ForceFeedbackComponent UForceFeedbackComponent @Force feedback component that was spawned.  This is only valid when force feedback is set to play in world.
---@field public ForceFeedbackTargetPC APlayerController @Player controller used to play the force feedback effect.  Used to stop the effect later.
---@field public DecalComponent UDecalComponent @Spawned decal component.  This may be null.
local FGameplayCueNotify_SpawnResult = {}