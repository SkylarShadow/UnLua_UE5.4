---FGameplayCueNotify_SpawnCondition
---    Conditions used to determine if the gameplay cue notify should spawn.
---@class FGameplayCueNotify_SpawnCondition
---@field public LocallyControlledSource EGameplayCueNotify_LocallyControlledSource @Source actor to use when determining if it is locally controlled.
---@field public LocallyControlledPolicy EGameplayCueNotify_LocallyControlledPolicy @Locally controlled policy used to determine if the gameplay cue effects should spawn.
---@field public ChanceToPlay number @Random chance to play the effects.  (1.0 = always play,  0.0 = never play)
---@field public AllowedSurfaceTypes TArray<integer> @The gameplay cue effects will only spawn if the surface type is in this list. An empty list means everything is allowed.
---@field public RejectedSurfaceTypes TArray<integer> @The gameplay cue effects will only spawn if the surface type is NOT in this list. An empty list means nothing will be rejected.
local FGameplayCueNotify_SpawnCondition = {}
