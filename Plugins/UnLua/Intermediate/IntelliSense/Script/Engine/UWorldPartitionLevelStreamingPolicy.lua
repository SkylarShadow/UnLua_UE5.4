---@class UWorldPartitionLevelStreamingPolicy : UWorldPartitionStreamingPolicy
---@field private SourceWorldAssetPath FTopLevelAssetPath
---@field private SubObjectsToCellRemapping TMap<string, string>
---@field private ContainerResolver FWorldPartitionRuntimeContainerResolver
---@field private ExternalStreamingObjects TArray<TWeakObjectPtr<URuntimeHashExternalStreamingObjectBase>>
local UWorldPartitionLevelStreamingPolicy = {}

