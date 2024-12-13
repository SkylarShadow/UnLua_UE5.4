---The subsystem in charge of editor MetaSound functionality
---@class UMetaSoundEditorSubsystem : UEditorSubsystem
local UMetaSoundEditorSubsystem = {}

---Sets the visual location to InLocation of a given node InNode of a given builder's document.
---@param InBuilder UMetaSoundBuilderBase
---@param InNode FMetaSoundNodeHandle
---@param InLocation FVector2D
---@param OutResult EMetaSoundBuilderResult @[out] 
function UMetaSoundEditorSubsystem:SetNodeLocation(InBuilder, InNode, InLocation, OutResult) end

---Build the given builder to a MetaSound asset
---For preset builders, TemplateSoundWave will override the template values from the referenced asset.
---@param InBuilder UMetaSoundBuilderBase
---@param Author string
---@param AssetName string
---@param PackagePath string
---@param OutResult EMetaSoundBuilderResult @[out] 
---@param TemplateSoundWave USoundWave @[opt] 
---@return TScriptInterface_UMetaSoundDocumentInterface_
function UMetaSoundEditorSubsystem:BuildToAsset(InBuilder, Author, AssetName, PackagePath, OutResult, TemplateSoundWave) end

