---Structure that is used to combine tags from parent and child blueprints in a safe way
---@class FInheritedTagContainer
---@field public CombinedTags FGameplayTagContainer @CombinedTags = Inherited - Removed + Added
---@field public Added FGameplayTagContainer @Tags that I have (in addition to my parent's tags)
---@field public Removed FGameplayTagContainer @Tags that should be removed (only if my parent had them).  Note: we cannot use this to remove a tag that exists on a target. It only modifies the result of CombinedTags.
local FInheritedTagContainer = {}
