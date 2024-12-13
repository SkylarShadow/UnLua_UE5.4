---Used to configure the replication system default values
---@class FNetDriverReplicationSystemConfig
---@field public MaxReplicatedObjectClientCount integer @Override the max object count when running as a client. If 0 use the default system value.
---@field public MaxReplicatedObjectServerCount integer @Override the max object count when running as a server. If 0 use the default system value.
---@field public PreAllocatedReplicatedObjectClientCount integer @Override the number of pre-allocated objects when running as a client.
---@field public PreAllocatedReplicatedObjectServerCount integer @Override the number of pre-allocated objects when running as a server.
---@field public MaxReplicatedWriterObjectClientCount integer @Override the number of pre-allocated objects in FReplicationWriter on the client.
---@field public MaxDeltaCompressedObjectCount integer @Override the max compressed object count. If 0 use the default system value.
---@field public MaxNetObjectGroupCount integer @Override the max group count. If 0 use the default system value.
local FNetDriverReplicationSystemConfig = {}
