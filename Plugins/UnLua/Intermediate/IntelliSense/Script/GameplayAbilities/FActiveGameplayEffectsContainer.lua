---Active GameplayEffects Container
---    -Bucket of ActiveGameplayEffects
---    -Needed for FFastArraySerialization
---This should only be used by UAbilitySystemComponent. All of this could just live in UAbilitySystemComponent except that we need a distinct USTRUCT to implement FFastArraySerializer.
---The preferred way to iterate through the ActiveGameplayEffectContainer is with CreateConstIterator/CreateIterator or stl style range iteration:
---    for (const FActiveGameplayEffect& Effect : this) {}
---    for (auto It = CreateConstIterator(); It; ++It) {}
---@class FActiveGameplayEffectsContainer : FFastArraySerializer
---@field private GameplayEffects_Internal TArray<FActiveGameplayEffect> @Our active list of Effects. Do not access this directly (Even from internal functions!) Use GetNumGameplayEffect() / GetGameplayEffect() !
local FActiveGameplayEffectsContainer = {}
