---Latent tasks are waiting on something. This is to differeniate waiting on the user to do something vs waiting on the game to do something.
---Tasks start WaitingOnGame, and are set to WaitingOnUser when appropriate (see WaitTargetData, WaitIiputPress, etc)
---@class EAbilityTaskWaitState
---@field public WaitingOnGame integer
---@field public WaitingOnUser integer
---@field public WaitingOnAvatar integer
---@field public EAbilityTaskWaitState_MAX integer
local EAbilityTaskWaitState = {}
