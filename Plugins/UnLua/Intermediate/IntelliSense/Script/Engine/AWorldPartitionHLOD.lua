---@class AWorldPartitionHLOD : AActor
---@field private SourceActors UWorldPartitionHLODSourceActors
---@field private HLODBounds FBox
---@field private MinVisibleDistance number
---@field private HLODHash integer
---@field private HLODStats TMap<string, integer>
---@field private LODLevel integer
---@field private bRequireWarmup boolean
---@field private SourceCellGuid FGuid
local AWorldPartitionHLOD = {}

