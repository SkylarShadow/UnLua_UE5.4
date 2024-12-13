---Structure to keep track of pending gameplay cues that haven't been applied yet.
---@class FGameplayCuePendingExecute
---@field public PredictionKey FPredictionKey @Prediction key that spawned this cue
---@field public PayloadType EGameplayCuePayloadType @What type of payload is attached to this cue
---@field public OwningComponent UAbilitySystemComponent @What component to send the cue on
---@field public FromSpec FGameplayEffectSpecForRPC @If this cue is from a spec, here's the copy of that spec
---@field public CueParameters FGameplayCueParameters @Store the full cue parameters or just the effect context depending on type
local FGameplayCuePendingExecute = {}
