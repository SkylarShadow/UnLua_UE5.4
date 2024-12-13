---@class FMetasoundFrontendClassMetadata
---@field private ClassName FMetasoundFrontendClassName
---@field private Version FMetasoundFrontendVersionNumber
---@field private Type EMetasoundFrontendClassType
---@field private DisplayName string
---@field private DisplayNameTransient string
---@field private Description string
---@field private DescriptionTransient string
---@field private PromptIfMissingTransient string @TODO: Move to using a non-localized hint path.  Due to localization, loading & the fact that class registration happens on demand (post serialization), copying an FText to the referencing document can result in localization ids mismatched to different text when attempting to gather text.
---@field private Author string
---@field private Keywords TArray<string>
---@field private KeywordsTransient TArray<string>
---@field private CategoryHierarchy TArray<string>
---@field private CategoryHierarchyTransient TArray<string>
---@field private bIsDeprecated boolean @If true, this node is deprecated and should not be used in new MetaSounds.
---@field private bAutoUpdateManagesInterface boolean @If true, auto-update will manage (add and remove) inputs/outputs associated with internally connected nodes when the interface of the given node is auto-updated.
---@field private bSerializeText boolean @Whether or not the given metadata text should be serialized or is procedurally maintained via auto-update & the referenced registry class (to avoid localization text desync).  Should be false for classes serialized as externally-defined dependencies or interfaces.
---@field private ChangeID FGuid @ID used to identify if any of the above have been modified, to determine if the parent class should be auto-updated.
local FMetasoundFrontendClassMetadata = {}