---Encapsulate require and ignore tags
---@class FGameplayTagRequirements
---@field public RequireTags FGameplayTagContainer @All of these tags must be present
---@field public IgnoreTags FGameplayTagContainer @None of these tags may be present
---@field public TagQuery FGameplayTagQuery @Build up a more complex query that can't be expressed with RequireTags/IgnoreTags alone
local FGameplayTagRequirements = {}
