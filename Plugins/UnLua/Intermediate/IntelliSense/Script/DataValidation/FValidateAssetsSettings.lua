---@class FValidateAssetsSettings
---@field public bSkipExcludedDirectories boolean @If true, will not validate files in excluded directories
---@field public bShowIfNoFailures boolean @If true, will add notifications for files with no validation and display even if everything passes
---@field public bCollectPerAssetDetails boolean @If true, will add an FValidateAssetsDetails for each asset to the results
---@field public ValidationUsecase EDataValidationUsecase @The usecase requiring datavalidation
---@field public bLoadAssetsForValidation boolean @If false, unloaded assets will get skipped from validation.
---@field public bCaptureAssetLoadLogs boolean @If true, captures log warnings and errors from loading assets for validation and reports them as validation results
---@field public bCaptureLogsDuringValidation boolean @If true, captures log warnings and errors from other operations that happen during validation and adds them to validation results
---@field public MaxAssetsToValidate integer @Maximum number of assets to attempt to validate
---@field public bValidateReferencersOfDeletedAssets boolean @Should we validate referencers of deleted assets in changelists
local FValidateAssetsSettings = {}