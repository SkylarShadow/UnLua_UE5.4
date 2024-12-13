---State of a registry async request
---@class EDataRegistryAcquireStatus
---@field public NotStarted integer
---@field public WaitingForInitialAcquire integer
---@field public InitialAcquireFinished integer
---@field public WaitingForResources integer
---@field public AcquireFinished integer
---@field public AcquireError integer
---@field public DoesNotExist integer
---@field public EDataRegistryAcquireStatus_MAX integer
local EDataRegistryAcquireStatus = {}