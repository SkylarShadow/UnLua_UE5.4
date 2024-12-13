---Specifies tag requirements that the Target (owner of the Gameplay Effect) must have if this GE should apply or continue to execute
---@class UTargetTagRequirementsGameplayEffectComponent : UGameplayEffectComponent
---@field public ApplicationTagRequirements FGameplayTagRequirements @Tag requirements the target must have for this GameplayEffect to be applied. This is pass/fail at the time of application. If fail, this GE fails to apply.
---@field public OngoingTagRequirements FGameplayTagRequirements @Once Applied, these tags requirements are used to determined if the GameplayEffect is "on" or "off". A GameplayEffect can be off and do nothing, but still applied.
---@field public RemovalTagRequirements FGameplayTagRequirements @Tag requirements that if met will remove this effect. Also prevents effect application.
local UTargetTagRequirementsGameplayEffectComponent = {}

