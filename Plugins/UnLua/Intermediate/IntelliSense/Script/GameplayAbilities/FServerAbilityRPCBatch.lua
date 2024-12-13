---This struct holds state to batch server RPC calls: ServerTryActivateAbility, ServerSetReplicatedTargetData, ServerEndAbility.
---@class FServerAbilityRPCBatch
---@field public AbilitySpecHandle FGameplayAbilitySpecHandle
---@field public PredictionKey FPredictionKey
---@field public TargetData FGameplayAbilityTargetDataHandle
---@field public InputPressed boolean
---@field public Ended boolean
---@field public Started boolean @Safety bool to make sure ServerTryActivate was called exactly one time in a batch
local FServerAbilityRPCBatch = {}
