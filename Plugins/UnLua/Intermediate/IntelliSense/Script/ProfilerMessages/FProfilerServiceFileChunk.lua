---Implements a message for copying a file through the network, as well as for synchronization.
---Unfortunately assumes that InstanceId and Filename are transfered without errors.
---@class FProfilerServiceFileChunk
---@field public InstanceId FGuid @The ID of the instance where this message should be sent.
---@field public Filename string @The file containing this file chunk.
---@field public HexData string @Data to be sent through message bus. Message bug doesn't support TArray<>, so we encode the data as HexString.
---@field public Header TArray<integer> @FProfilerFileChunkHeader stored in the array.
---@field public ChunkHash TArray<integer> @Hash of this data and header.
local FProfilerServiceFileChunk = {}
