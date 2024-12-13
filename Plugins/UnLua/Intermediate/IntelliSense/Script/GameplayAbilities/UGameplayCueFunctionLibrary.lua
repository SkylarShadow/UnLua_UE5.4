---UGameplayCueFunctionLibrary
---    Helpful utility function for working with gameplay cues.
---@class UGameplayCueFunctionLibrary : UBlueprintFunctionLibrary
local UGameplayCueFunctionLibrary = {}

---Invoke the removed event for a gameplay cue on the target actor. This should be paired with an AddGameplayCueOnActor call.
---* If the actor has an ability system, the event will fire on authority only and will be replicated.
---* If the actor does not have an ability system, the event will only be fired locally.
---@param Target AActor
---@param GameplayCueTag FGameplayTag
---@param Parameters FGameplayCueParameters
function UGameplayCueFunctionLibrary.RemoveGameplayCueOnActor(Target, GameplayCueTag, Parameters) end

---Builds gameplay cue parameters using data from a hit result.
---@param HitResult FHitResult
---@return FGameplayCueParameters
function UGameplayCueFunctionLibrary.MakeGameplayCueParametersFromHitResult(HitResult) end

---Invoke a one time "instant" execute event for a gameplay cue on the target actor.
---* If the actor has an ability system, the event will fire on authority only and will be replicated.
---* If the actor does not have an ability system, the event will only be fired locally.
---@param Target AActor
---@param GameplayCueTag FGameplayTag
---@param Parameters FGameplayCueParameters
function UGameplayCueFunctionLibrary.ExecuteGameplayCueOnActor(Target, GameplayCueTag, Parameters) end

---Invoke the added event for a gameplay cue on the target actor. This should be paired with a RemoveGameplayCueOnActor call.
---* If the actor has an ability system, the event will fire on authority only and will be replicated.
---* If the actor does not have an ability system, the event will only be fired locally.
---@param Target AActor
---@param GameplayCueTag FGameplayTag
---@param Parameters FGameplayCueParameters
function UGameplayCueFunctionLibrary.AddGameplayCueOnActor(Target, GameplayCueTag, Parameters) end

