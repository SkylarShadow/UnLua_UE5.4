---@class UReplicationStateDescriptorConfig : UObject
---@field private SupportsStructNetSerializerList TArray<FSupportsStructNetSerializerConfig> @Structs that works using the default struct NetSerializer when running iris replication even though they implement a custom NetSerialize or NetDeltaSerialize method.
local UReplicationStateDescriptorConfig = {}

