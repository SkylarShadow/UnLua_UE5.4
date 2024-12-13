---Add additional Gameplay Effects that attempt to activate under certain conditions (or no conditions)
---@class UAdditionalEffectsGameplayEffectComponent : UGameplayEffectComponent
---@field public bOnApplicationCopyDataFromOriginalSpec boolean @This will copy all of the data (e.g. SetByCallerMagnitudes) from the GESpec that Applied this GameplayEffect to the new OnApplicationGameplayEffect Specs. One would think this is normally desirable (and how OnComplete works by default), but we default to false here for backwards compatability.
---@field public OnApplicationGameplayEffects TArray<FConditionalGameplayEffect> @Other gameplay effects that will be applied to the target of this effect if the owning effect applies
---@field public OnCompleteAlways TArray<TSubclassOf<UGameplayEffect>> @Effects to apply when this effect completes, regardless of how it ends
---@field public OnCompleteNormal TArray<TSubclassOf<UGameplayEffect>> @Effects to apply when this effect expires naturally via its duration
---@field public OnCompletePrematurely TArray<TSubclassOf<UGameplayEffect>> @Effects to apply when this effect is made to expire prematurely (e.g. via a forced removal, clear tags, etc.)
local UAdditionalEffectsGameplayEffectComponent = {}

