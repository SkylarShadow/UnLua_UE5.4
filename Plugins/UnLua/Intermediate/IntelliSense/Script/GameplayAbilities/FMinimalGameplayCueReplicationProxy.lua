---An alternative way to replicating gameplay cues. This does not use fast TArray serialization and does not serialize gameplaycue parameters. The parameters are created on the receiving side with default information.
---This will be more efficient with server cpu but will take more bandwidth when the array changes.
---To use, put this on your replication proxy actor (such a the pawn). Call SetOwner, PreReplication and RemoveallCues in the appropriate places.
---@class FMinimalGameplayCueReplicationProxy
---@field private Owner UAbilitySystemComponent
local FMinimalGameplayCueReplicationProxy = {}
