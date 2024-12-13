---An asset to define multiple tag definitions; used to sort and categorize Niagara assets.
---@class UNiagaraAssetTagDefinitions : UObject
---@field private DisplayName string @The display name to use when listing this asset in the Niagara Asset Browser
---@field private Description string @A description for this group of tags. Used for tooltips.
---@field private TagDefinitions TArray<FNiagaraAssetTagDefinition>
---@field private bDisplayTagsAsFlatList boolean @If true, no 'parent' entry for this asset will be displayed in the Niagara Asset Browser. Instead a flat list of the contained tags will be added.
---@field private SortOrder integer @Tags are sorted by asset sort order first, then individually. That means tags of asset with sort order [0] come before tags of asset with sort order [1].
local UNiagaraAssetTagDefinitions = {}

