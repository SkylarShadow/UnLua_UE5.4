---Struct for gameplay effects that apply only if another gameplay effect (or execution) was successfully applied.
---@class FConditionalGameplayEffect
---@field public EffectClass TSubclassOf<UGameplayEffect> @gameplay effect that will be applied to the target
---@field public RequiredSourceTags FGameplayTagContainer @Tags that the source must have for this GE to apply.  If this is blank, then there are no requirements to apply the EffectClass.
local FConditionalGameplayEffect = {}
