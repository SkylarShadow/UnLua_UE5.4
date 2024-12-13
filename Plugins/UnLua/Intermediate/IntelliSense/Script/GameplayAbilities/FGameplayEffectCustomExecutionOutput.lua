---Struct representing the output of a custom gameplay effect execution.
---@class FGameplayEffectCustomExecutionOutput
---@field private OutputModifiers TArray<FGameplayModifierEvaluatedData> @Modifiers emitted by the execution
---@field private bTriggerConditionalGameplayEffects boolean @If true, the execution wants to trigger conditional gameplay effects when it completes
---@field private bHandledStackCountManually boolean @If true, the execution itself has manually handled the stack count of the effect and the GE system doesn't have to automatically handle it
---@field private bHandledGameplayCuesManually boolean @If true, the execution itself has manually invoked all gameplay cues and the GE system doesn't have to automatically handle them.
local FGameplayEffectCustomExecutionOutput = {}
