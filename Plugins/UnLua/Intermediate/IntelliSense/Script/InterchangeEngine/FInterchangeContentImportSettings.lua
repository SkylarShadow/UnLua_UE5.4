---@class FInterchangeContentImportSettings : FInterchangeImportSettings
---@field public DefaultPipelineStackOverride TMap<EInterchangeTranslatorAssetType, string> @Specifies a different pipeline stack for Interchange to use by default when importing specific types of assets.
---@field public ShowImportDialogOverride TMap<EInterchangeTranslatorAssetType, FInterchangeDialogOverride> @This tell interchange if the import dialog should show or not when importing a particular type of asset.
local FInterchangeContentImportSettings = {}
