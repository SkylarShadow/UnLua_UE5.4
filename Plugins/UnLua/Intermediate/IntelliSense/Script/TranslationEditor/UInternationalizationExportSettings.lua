---@class UInternationalizationExportSettings : UObject
---@field public CulturesToGenerate TArray<string> @Which cultures should be exported
---@field public CommandletClass string @The commandlet to run
---@field public SourcePath string @Source for the localization data
---@field public DestinationPath string @Destination for the localization data
---@field public PortableObjectName string @Filename for the Portable Object format file
---@field public ManifestName string @Name of the manifest file
---@field public ArchiveName string @Name of the archive file
---@field public bExportLoc boolean @Whether or not to export localization data
---@field public bImportLoc boolean @Whether or not to import localization data
---@field public bUseCultureDirectory boolean @Whether or not to use culture path
local UInternationalizationExportSettings = {}

