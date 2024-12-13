---FGameplayCueNotify_ParticleInfo
---    Properties that specify how to play a particle effect.
---@class FGameplayCueNotify_ParticleInfo
---@field public SpawnConditionOverride FGameplayCueNotify_SpawnCondition @Condition to check before spawning the particle system.
---@field public PlacementInfoOverride FGameplayCueNotify_PlacementInfo @Defines how the particle system will be placed.
---@field public NiagaraSystem UNiagaraSystem @Niagara FX system to spawn.
---@field public bOverrideSpawnCondition boolean @If enabled, use the spawn condition override and not the default one.
---@field public bOverridePlacementInfo boolean @If enabled, use the placement info override and not the default one.
---@field public bCastShadow boolean @If enabled, this particle system will cast a shadow.
local FGameplayCueNotify_ParticleInfo = {}
