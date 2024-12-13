---Base struct for wrapping the array used in Fast TArray Replication
---@class FFastArraySerializer
---@field public ArrayReplicationKey integer @Counter used to track array replication.
---@field private DeltaFlags EFastArraySerializerDeltaFlags
local FFastArraySerializer = {}
