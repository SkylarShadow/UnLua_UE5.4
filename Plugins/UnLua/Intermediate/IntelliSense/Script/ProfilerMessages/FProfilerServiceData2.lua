---Profiler Service data.
---@class FProfilerServiceData2
---@field public InstanceId FGuid @Instance ID.
---@field public Frame integer @Stats frame.
---@field public CompressedSize integer @Size of the compressed data.
---@field public UncompressedSize integer @Size of the uncompressed data.
---@field public HexData string @Profiler data encoded as string of hexes, cannot use TArray<uint8> because of the Message Bus limitation.
local FProfilerServiceData2 = {}
