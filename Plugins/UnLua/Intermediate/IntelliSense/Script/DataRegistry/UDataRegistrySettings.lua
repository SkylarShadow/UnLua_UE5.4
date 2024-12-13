---Settings for the Data Registry subsystem, these settings are used to scan for registry assets and set runtime access rules
---@class UDataRegistrySettings : UDeveloperSettings
---@field public DirectoriesToScan TArray<FDirectoryPath> @List of directories to scan for data registry assets
---@field public bInitializeAllLoadedRegistries boolean @If false, only registry assets inside DirectoriesToScan will be initialized. If true, it will also initialize any in-memory DataRegistry assets outside the scan paths
---@field public bIgnoreMissingCookedAssetRegistryData boolean @If true, cooked builds will ignore errors with missing AssetRegistry data for specific registered assets like DataTables as it may have been stripped out
local UDataRegistrySettings = {}

