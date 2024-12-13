---Data struct for containing information pertinent to GameplayEffects as they are removed
---@class FGameplayEffectRemovalInfo
---@field public bPrematureRemoval boolean @True when the gameplay effect's duration has not expired, meaning the gameplay effect is being forcefully removed.
---@field public StackCount integer @Number of Stacks this gameplay effect had before it was removed.
---@field public EffectContext FGameplayEffectContextHandle @Actor this gameplay effect was targeting.
local FGameplayEffectRemovalInfo = {}
