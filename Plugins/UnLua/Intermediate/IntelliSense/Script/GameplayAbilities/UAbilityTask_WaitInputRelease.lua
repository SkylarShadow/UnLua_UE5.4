---Waits until the input is released from activating an ability. Clients will replicate a 'release input' event to the server, but not the exact time it was held locally.
---We expect server to execute this task in parallel and keep its own time.
---@class UAbilityTask_WaitInputRelease : UAbilityTask
---@field public OnRelease MulticastDelegate
local UAbilityTask_WaitInputRelease = {}

---Wait until the user releases the input button for this ability's activation. Returns time from hitting this node, till release. Will return 0 if input was already released.
---@param OwningAbility UGameplayAbility
---@param bTestAlreadyReleased boolean @[opt] 
---@return UAbilityTask_WaitInputRelease
function UAbilityTask_WaitInputRelease.WaitInputRelease(OwningAbility, bTestAlreadyReleased) end

function UAbilityTask_WaitInputRelease:OnReleaseCallback() end

