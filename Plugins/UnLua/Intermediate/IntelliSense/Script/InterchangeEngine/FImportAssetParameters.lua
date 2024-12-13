---@class FImportAssetParameters
---@field public ReimportAsset UObject @If the import is a reimport for a specific asset, set the asset to reimport here.
---@field public ReimportSourceIndex integer @If we are doing a reimport, set the source index here. Some assets have more then one source file that each contains part of the asset content.
---@field public bIsAutomated boolean @Tell Interchange that import is automated and it shouldn't present a modal window.
---@field public bFollowRedirectors boolean @Tell Interchange to follow redirectors when determining the location an asset will be imported.
---@field public OverridePipelines TArray<FSoftObjectPath> @Adding overrides tells Interchange to use the specific custom set of pipelines instead of letting the user or the system choose.
---@field public ImportLevel ULevel @Level to import into when doing a scene import.
---@field public DestinationName string @Optional custom name for the import.
---@field public bReplaceExisting boolean @Determies whether to overwrite existing assets.
---@field public OnAssetDone Delegate @Delegates used to track the imported objects. // This is called each time an asset is imported or reimported from the import call.
---@field public OnAssetsImportDone Delegate @This is called when all the assets were imported from the source data.
---@field public OnSceneObjectDone Delegate @This is called each time an object in the scene is imported or reimported from the import call.
---@field public OnSceneImportDone Delegate @This is called when all the scene objects were imported from the source data.
local FImportAssetParameters = {}
