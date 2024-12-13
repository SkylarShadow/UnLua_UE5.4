---UGameplayCueNotify_Burst
---    This is a non-instanced gameplay cue notify for effects that are one-offs.
---    Since it is not instanced, it cannot do latent actions such as delays and time lines.
---@class UGameplayCueNotify_Burst : UGameplayCueNotify_Static
---@field protected DefaultSpawnCondition FGameplayCueNotify_SpawnCondition @Default condition to check before spawning anything.  Applies for all spawns unless overridden.
---@field protected DefaultPlacementInfo FGameplayCueNotify_PlacementInfo @Default placement rules.  Applies for all spawns unless overridden.
---@field protected BurstEffects FGameplayCueNotify_BurstEffects @List of effects to spawn on burst.
local UGameplayCueNotify_Burst = {}

---@param Target AActor
---@param Parameters FGameplayCueParameters
---@param SpawnResults FGameplayCueNotify_SpawnResult
function UGameplayCueNotify_Burst:OnBurst(Target, Parameters, SpawnResults) end

