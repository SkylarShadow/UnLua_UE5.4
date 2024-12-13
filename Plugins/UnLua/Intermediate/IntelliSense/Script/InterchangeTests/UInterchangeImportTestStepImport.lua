---@class UInterchangeImportTestStepImport : UInterchangeImportTestStepBase
---@field public SourceFile FFilePath @The source file to import (path relative to the json script)
---@field public PipelineStack TArray<UInterchangePipelineBase> @The pipeline stack to use when importing (an empty array will use the defaults)
---@field public bEmptyDestinationFolderPriorToImport boolean @Whether the destination folder should be emptied prior to import
---@field public bSaveThenReloadImportedAssets boolean @Whether imported assets should be saved and freshly reloaded after import
---@field public bImportIntoLevel boolean @Whether we should use the import into level workflow
local UInterchangeImportTestStepImport = {}

