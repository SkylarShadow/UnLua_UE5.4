---Remove other Gameplay Effects based on certain conditions
---@class URemoveOtherGameplayEffectComponent : UGameplayEffectComponent
---@field public RemoveGameplayEffectQueries TArray<FGameplayEffectQuery> @On Application of the owning Gameplay Effect, any Active GameplayEffects that *match* these queries will be removed.
local URemoveOtherGameplayEffectComponent = {}

