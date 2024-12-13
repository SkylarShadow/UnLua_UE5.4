---@class FRuntimePartitionStreamingData
---@field public Name string @Name of the runtime partition, currently maps to target grids.
---@field public LoadingRange integer
---@field public StreamingCells TArray<UWorldPartitionRuntimeCell>
---@field public NonStreamingCells TArray<UWorldPartitionRuntimeCell>
local FRuntimePartitionStreamingData = {}
