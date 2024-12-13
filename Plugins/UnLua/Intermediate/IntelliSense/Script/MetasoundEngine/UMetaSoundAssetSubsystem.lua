---The subsystem in charge of the MetaSound asset registry
---@class UMetaSoundAssetSubsystem : UEngineSubsystem
---@field private LoadingDependencies TArray<FMetaSoundAsyncAssetDependencies>
local UMetaSoundAssetSubsystem = {}

---@param Directories TArray_FMetaSoundAssetDirectory_
function UMetaSoundAssetSubsystem:UnregisterAssetClassesInDirectories(Directories) end

---@param Directories TArray_FMetaSoundAssetDirectory_
function UMetaSoundAssetSubsystem:RegisterAssetClassesInDirectories(Directories) end

