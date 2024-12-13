---This is the struct that does the actual translation. It lives on the GameplayCueManager and encapsulates all translation logic.
---@class FGameplayCueTranslationManager
---@field private TranslationLUT TArray<FGameplayCueTranslatorNode> @The Look Up Table
---@field private TranslationNameToIndexMap TMap<string, FGameplayCueTranslatorNodeIndex> @Acceleration map from gameplay tag name to index into TranslationLUT
---@field private TagManager UGameplayTagsManager @Cached reference to tag manager
local FGameplayCueTranslationManager = {}
