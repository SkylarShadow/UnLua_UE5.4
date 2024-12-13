---How the ability is instanced when executed. This limits what an ability can do in its implementation. For example, a NonInstanced
---Ability cannot have state. It is probably unsafe for an InstancedPerActor ability to have latent actions, etc.
---@class EGameplayAbilityInstancingPolicy
---@field public NonInstanced integer
---@field public InstancedPerActor integer
---@field public InstancedPerExecution integer
---@field public EGameplayAbilityInstancingPolicy_MAX integer
local EGameplayAbilityInstancingPolicy = {}
