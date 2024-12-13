---Where does an ability execute on the network. Does a client "ask and predict", "ask and wait", "don't ask (just do it)"
---@class EGameplayAbilityNetExecutionPolicy
---@field public LocalPredicted integer
---@field public LocalOnly integer
---@field public ServerInitiated integer
---@field public ServerOnly integer
---@field public EGameplayAbilityNetExecutionPolicy_MAX integer
local EGameplayAbilityNetExecutionPolicy = {}
