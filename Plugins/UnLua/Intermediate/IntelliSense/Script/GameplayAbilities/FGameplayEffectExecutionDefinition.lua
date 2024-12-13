---Struct representing the definition of a custom execution for a gameplay effect.
---Custom executions run special logic from an outside class each time the gameplay effect executes.
---@class FGameplayEffectExecutionDefinition
---@field public CalculationClass TSubclassOf<UGameplayEffectExecutionCalculation> @Custom execution calculation class to run when the gameplay effect executes
---@field public PassedInTags FGameplayTagContainer @These tags are passed into the execution as is, and may be used to do conditional logic
---@field public CalculationModifiers TArray<FGameplayEffectExecutionScopedModifierInfo> @Modifiers that are applied "in place" during the execution calculation
---@field public ConditionalGameplayEffects TArray<FConditionalGameplayEffect> @Other Gameplay Effects that will be applied to the target of this execution if the execution is successful. Note if no execution class is selected, these will always apply.
local FGameplayEffectExecutionDefinition = {}
