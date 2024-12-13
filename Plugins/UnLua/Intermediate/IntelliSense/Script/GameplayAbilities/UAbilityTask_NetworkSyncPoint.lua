---Task for providing a generic sync point for client server (one can wait for a signal from the other)
---@class UAbilityTask_NetworkSyncPoint : UAbilityTask
---@field public OnSync MulticastDelegate
local UAbilityTask_NetworkSyncPoint = {}

---Synchronize execution flow between Client and Server. Depending on SyncType, the Client and Server will wait for the other to reach this node or another WaitNetSync node in the ability before continuing execution.
---BothWait - Both Client and Server will wait until the other reaches the node. (Whoever gets their first, waits for the other before continueing).
---OnlyServerWait - Only server will wait for the client signal. Client will signal and immediately continue without waiting to hear from Server.
---OnlyClientWait - Only client will wait for the server signal. Server will signal and immediately continue without waiting to hear from Client.
---Note that this is "ability instance wide". These sync points never affect sync points in other abilities.
---In most cases you will have both client and server execution paths connected to the same WaitNetSync node. However it is possible to use separate nodes
---for cleanliness of the graph. The "signal" is "ability instance wide".
---@param OwningAbility UGameplayAbility
---@param SyncType EAbilityTaskNetSyncType
---@return UAbilityTask_NetworkSyncPoint
function UAbilityTask_NetworkSyncPoint.WaitNetSync(OwningAbility, SyncType) end

function UAbilityTask_NetworkSyncPoint:OnSignalCallback() end

