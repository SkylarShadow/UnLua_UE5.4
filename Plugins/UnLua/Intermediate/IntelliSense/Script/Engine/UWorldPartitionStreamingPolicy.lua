---@class UWorldPartitionStreamingPolicy : UObject
---@field protected LoadedCells TSet<UWorldPartitionRuntimeCell>
---@field protected ActivatedCells FActivatedCells
---@field protected ToActivateCells TArray<UWorldPartitionRuntimeCell> @Used by UWorldPartitionSubsystem
---@field protected ToLoadCells TArray<UWorldPartitionRuntimeCell>
---@field private bShouldMergeStreamingSourceInfo boolean
local UWorldPartitionStreamingPolicy = {}

