---FGameplayEffectCue
---    This is a cosmetic cue that can be tied to a UGameplayEffect.
--- This is essentially a GameplayTag + a Min/Max level range that is used to map the level of a GameplayEffect to a normalized value used by the GameplayCue system.
---@class FGameplayEffectCue
---@field public MagnitudeAttribute FGameplayAttribute @The attribute to use as the source for cue magnitude. If none use level
---@field public MinLevel number @The minimum level that this Cue supports
---@field public MaxLevel number @The maximum level that this Cue supports
---@field public GameplayCueTags FGameplayTagContainer @Tags passed to the gameplay cue handler when this cue is activated
local FGameplayEffectCue = {}
