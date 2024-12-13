---This is a cut down version of the gameplay effect spec used for RPCs.
---@class FGameplayEffectSpecForRPC
---@field public Def UGameplayEffect @GameplayEfect definition. The static data that this spec points to.
---@field public ModifiedAttributes TArray<FGameplayEffectModifiedAttribute>
---@field public EffectContext FGameplayEffectContextHandle
---@field public AggregatedSourceTags FGameplayTagContainer
---@field public AggregatedTargetTags FGameplayTagContainer
---@field public Level number
---@field public AbilityLevel number
local FGameplayEffectSpecForRPC = {}
