---@class UInterchangeImportTestStepReimport : UInterchangeImportTestStepBase
---@field public SourceFileToReimport FFilePath @The source file to import (path relative to the json script).
---@field public AssetTypeToReimport TSubclassOf<UObject> @The type of the asset to reimport. If only one such asset was imported, this is unambiguous.
---@field public AssetNameToReimport string @If there were multiple assets of the above type imported, specify the concrete name here.
---@field public bSaveThenReloadImportedAssets boolean @Determines whether imported assets should be saved and freshly reloaded after import.
local UInterchangeImportTestStepReimport = {}

