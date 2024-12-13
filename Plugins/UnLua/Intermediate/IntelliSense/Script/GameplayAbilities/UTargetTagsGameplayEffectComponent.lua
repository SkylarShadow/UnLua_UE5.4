---Handles granting Tags to the Target (sometimes referred to as the Owner) of the Gameplay Effect
---@class UTargetTagsGameplayEffectComponent : UGameplayEffectComponent
---@field private InheritableGrantedTagsContainer FInheritedTagContainer @These tags are applied (granted) to the target actor of the Gameplay Effect.  The Target would then "own" these Tags.
local UTargetTagsGameplayEffectComponent = {}

