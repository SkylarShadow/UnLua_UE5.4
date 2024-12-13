---@class UMetaSoundSettings : UDeveloperSettings
---@field public bAutoUpdateEnabled boolean @If true, AutoUpdate is enabled, increasing load times.  If false, skips AutoUpdate on load, but can result in MetaSounds failing to load, register, and execute if interface differences are present.
---@field public AutoUpdateDenylist TArray<FMetasoundFrontendClassName> @List of native MetaSound classes whose node references should not be AutoUpdated.
---@field public AutoUpdateAssetDenylist TArray<FDefaultMetaSoundAssetAutoUpdateSettings> @List of MetaSound assets whose node references should not be AutoUpdated.
---@field public bAutoUpdateLogWarningOnDroppedConnection boolean @If true, warnings will be logged if updating a node results in existing connections being discarded.
---@field public DirectoriesToRegister TArray<FDirectoryPath> @Directories to scan & automatically register MetaSound post initial asset scan on engine start-up. May speed up subsequent calls to playback MetaSounds post asset scan but increases application load time. See 'MetaSoundAssetSubsystem::RegisterAssetClassesInDirectories' to dynamically register or 'MetaSoundAssetSubsystem::UnregisterAssetClassesInDirectories' to unregister asset classes.
---@field public DenyListCacheChangeID integer
---@field private QualitySettings TArray<FMetaSoundQualitySettings> @Array of possible quality settings for Metasounds to chose from // NOTE: Ideally this would be wrapped with WITH_EDITORONLY_DATA, but standalone "-game" requires // it to exist. Access is limited to the accessor above, which enforces it correctly.
local UMetaSoundSettings = {}

