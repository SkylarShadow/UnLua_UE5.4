---@class FDataStreamDefinition
---@field public DataStreamName string @Data stream identifier
---@field public ClassName string @UClass name used to create the UDataStream
---@field public Class TSubclassOf<UObject> @UClass used to create the UDataStream
---@field public DefaultSendStatus EDataStreamSendStatus @Default send status when created.
---@field public bAutoCreate boolean @Whether the DataStream should be auto created for each connection. If not then CreateStream need be called manually.
local FDataStreamDefinition = {}
