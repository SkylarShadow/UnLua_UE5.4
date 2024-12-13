---AGameplayCueNotify_Looping
---    This is an instanced gameplay cue notify for continuous looping effects.
---    The game is responsible for defining the start/stop by adding/removing the gameplay cue.
---@class AGameplayCueNotify_Looping : AGameplayCueNotify_Actor
---@field protected DefaultSpawnCondition FGameplayCueNotify_SpawnCondition @Default condition to check before spawning anything.  Applies for all spawns unless overridden.
---@field protected DefaultPlacementInfo FGameplayCueNotify_PlacementInfo @Default placement rules.  Applies for all spawns unless overridden.
---@field protected ApplicationEffects FGameplayCueNotify_BurstEffects @List of effects to spawn on application.  These should not be looping effects!
---@field protected ApplicationSpawnResults FGameplayCueNotify_SpawnResult @Results of spawned application effects.
---@field protected LoopingEffects FGameplayCueNotify_LoopingEffects @List of effects to spawn on loop start.
---@field protected LoopingSpawnResults FGameplayCueNotify_SpawnResult @Results of spawned looping effects.
---@field protected RecurringEffects FGameplayCueNotify_BurstEffects @List of effects to spawn for a recurring gameplay effect (e.g. each time a DOT ticks).  These should not be looping effects!
---@field protected RecurringSpawnResults FGameplayCueNotify_SpawnResult @Results of spawned recurring effects.
---@field protected RemovalEffects FGameplayCueNotify_BurstEffects @List of effects to spawn on removal.  These should not be looping effects!
---@field protected RemovalSpawnResults FGameplayCueNotify_SpawnResult @Results of spawned removal effects.
local AGameplayCueNotify_Looping = {}

---@param Target AActor
---@param Parameters FGameplayCueParameters
---@param SpawnResults FGameplayCueNotify_SpawnResult
function AGameplayCueNotify_Looping:OnRemoval(Target, Parameters, SpawnResults) end

---@param Target AActor
---@param Parameters FGameplayCueParameters
---@param SpawnResults FGameplayCueNotify_SpawnResult
function AGameplayCueNotify_Looping:OnRecurring(Target, Parameters, SpawnResults) end

---@param Target AActor
---@param Parameters FGameplayCueParameters
---@param SpawnResults FGameplayCueNotify_SpawnResult
function AGameplayCueNotify_Looping:OnLoopingStart(Target, Parameters, SpawnResults) end

---@param Target AActor
---@param Parameters FGameplayCueParameters
---@param SpawnResults FGameplayCueNotify_SpawnResult
function AGameplayCueNotify_Looping:OnApplication(Target, Parameters, SpawnResults) end

