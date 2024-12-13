---Structure used to combine tags from different sources during effect execution
---@class FTagContainerAggregator
---@field private CapturedActorTags FGameplayTagContainer
---@field private CapturedSpecTags FGameplayTagContainer
---@field private ScopedTags FGameplayTagContainer
local FTagContainerAggregator = {}
