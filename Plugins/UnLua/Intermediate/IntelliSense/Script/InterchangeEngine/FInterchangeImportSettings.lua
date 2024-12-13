---@class FInterchangeImportSettings
---@field public PipelineStacks TMap<string, FInterchangePipelineStack> @Configures the pipeline stacks that are available when importing assets with Interchange.
---@field public DefaultPipelineStack string @Specifies which pipeline stack Interchange should use by default.
---@field public ImportDialogClass TSoftClassPtr<UInterchangePipelineConfigurationBase> @Specifies the class that should be used to define the configuration dialog that Interchange shows on import.
---@field public bShowImportDialog boolean @If enabled, the import option dialog will show when interchange import or re-import.
local FInterchangeImportSettings = {}
