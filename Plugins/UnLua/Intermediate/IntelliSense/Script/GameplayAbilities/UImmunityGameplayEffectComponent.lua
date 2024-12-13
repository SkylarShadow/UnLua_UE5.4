---Immunity is blocking the application of _other_ GameplayEffectSpecs.
---This registers a global handler on the ASC to block the application of other GameplayEffectSpecs.
---@class UImmunityGameplayEffectComponent : UGameplayEffectComponent
---@field public ImmunityQueries TArray<FGameplayEffectQuery> @Grants immunity to GameplayEffects that match this query.
local UImmunityGameplayEffectComponent = {}

