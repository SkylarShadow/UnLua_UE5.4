---A node in our translation table/graph. The node represents an actual gameplaytag or a possible gameplay tag, with links to what it can be translated into.
---@class FGameplayCueTranslatorNode
---@field public Links TArray<FGameplayCueTranslationLink> @Ways we can be translated into another FGameplayCueTranslatorNode
---@field public CachedIndex FGameplayCueTranslatorNodeIndex @Our index into FGameplayCueTranslationManager::TranslationLUT
---@field public CachedGameplayTag FGameplayTag @The FGameplayTag if this tag actually exists. This will always exist at runtime. In editor builds, it may not (GameplayCueEditor)
---@field public CachedGameplayTagName string @FName of the tag. This will always be valid, whether the tag is in the GameplayTag dictionary or not.
local FGameplayCueTranslatorNode = {}
