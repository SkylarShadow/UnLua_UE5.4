---@class UGameplayEffectExecutionCalculation : UGameplayEffectCalculation
---@field protected bRequiresPassedInTags boolean @Used to indicate if this execution uses Passed In Tags
---@field protected InvalidScopedModifierAttributes TArray<FGameplayEffectAttributeCaptureDefinition> @Any attribute in this list will not show up as a valid option for scoped modifiers; Used to allow attribute capture for internal calculation while preventing modification
---@field protected ValidTransientAggregatorIdentifiers FGameplayTagContainer @Any tag in this container will show up as a valid "temporary variable" for scoped modifiers; Used to allow for data-driven variable support that doesn't rely on scoped modifiers
local UGameplayEffectExecutionCalculation = {}

---Called whenever the owning gameplay effect is executed. Allowed to do essentially whatever is desired, including generating new
---modifiers to instantly execute as well.
---@param ExecutionParams FGameplayEffectCustomExecutionParameters
---@param OutExecutionOutput FGameplayEffectCustomExecutionOutput @[out] 
function UGameplayEffectExecutionCalculation:Execute(ExecutionParams, OutExecutionOutput) end

