---Handles blocking the activation of Gameplay Abilities based on Gameplay Tags for the Target actor of the owner Gameplay Effect
---@class UBlockAbilityTagsGameplayEffectComponent : UGameplayEffectComponent
---@field private InheritableBlockedAbilityTagsContainer FInheritedTagContainer @These tags are applied to the target actor of the Gameplay Effect.  Blocked Ability Tags prevent Gameplay Abilities with these tags from executing.
local UBlockAbilityTagsGameplayEffectComponent = {}

