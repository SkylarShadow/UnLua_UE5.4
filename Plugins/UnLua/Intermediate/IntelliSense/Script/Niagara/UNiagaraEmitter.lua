---Niagara Emitters are particle spawners that can be reused for different effects by putting them into Niagara Systems.
---Emitters render their particles using different renderers, such as Sprite Renderers or Mesh Renderers to produce different effects.
---@class UNiagaraEmitter : UObject
---@field private ExposedVersion FGuid @The exposed version is the version that is used by default when a user adds this emitter somewhere. It is basically the published version and allows a user to create and test newer versions.
---@field private bVersioningEnabled boolean @If true then this emitter asset uses active version control to track changes.
---@field private VersionData TArray<FVersionedNiagaraEmitterData> @Contains all of the versioned emitter data.
---@field public AssetTags TArray<FNiagaraAssetTagDefinitionReference>
---@field public bIsInheritable boolean @If an emitter is inheritable, new emitters based on an inheritable emitter, or Niagara Systems using an inheritable emitter, will automatically inherit changes made to the original emitter.
---@field public TemplateAssetDescription string
---@field public Category string @Category to collate this emitter into for "add new emitter" dialogs.
---@field public ThumbnailImage UTexture2D @The thumbnail image used for the asset. This is always the latest recorded thumbnail. This can be different from the thumbnails that are saved per emitter version in collapsed view.
---@field public LibraryVisibility ENiagaraScriptLibraryVisibility @If this emitter is exposed to the library, or should be explicitly hidden.
---@field public VersionToOpenInEditor FGuid @This is used as a transient value to open a specific version in the editor
---@field private ChangeId FGuid @Adjusted every time that we compile this emitter. Lets us know that we might differ from any cached versions.
---@field private ParameterDefinitionsSubscriptions TArray<FParameterDefinitionsSubscription> @Subscriptions to definitions of parameters.
---@field private UniqueEmitterName string
---@field private MessageStore FNiagaraMessageStore
local UNiagaraEmitter = {}

