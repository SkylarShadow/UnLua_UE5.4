---AGameplayCueNotify_BurstLatent
---    This is an instanced gameplay cue notify for effects that are one-offs.
---    Since it is instanced, it can do latent things like time lines or delays.
---@class AGameplayCueNotify_BurstLatent : AGameplayCueNotify_Actor
---@field protected DefaultSpawnCondition FGameplayCueNotify_SpawnCondition @Default condition to check before spawning anything.  Applies for all spawns unless overridden.
---@field protected DefaultPlacementInfo FGameplayCueNotify_PlacementInfo @Default placement rules.  Applies for all spawns unless overridden.
---@field protected BurstEffects FGameplayCueNotify_BurstEffects @List of effects to spawn on burst.
---@field protected BurstSpawnResults FGameplayCueNotify_SpawnResult @Results of spawned burst effects.
local AGameplayCueNotify_BurstLatent = {}

---@param Target AActor
---@param Parameters FGameplayCueParameters
---@param SpawnResults FGameplayCueNotify_SpawnResult
function AGameplayCueNotify_BurstLatent:OnBurst(Target, Parameters, SpawnResults) end

