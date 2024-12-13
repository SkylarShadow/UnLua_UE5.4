---A non instantiated UObject that acts as a handler for a GameplayCue. These are useful for one-off "burst" effects.
---@class UGameplayCueNotify_Static : UObject
---@field public GameplayCueTag FGameplayTag @Tag this notify is activated by
---@field public GameplayCueName string @Mirrors GameplayCueTag in order to be asset registry searchable
---@field public IsOverride boolean @Does this Cue override other cues, or is it called in addition to them? E.g., If this is Damage.Physical.Slash, we wont call Damage.Physical afer we run this cue.
local UGameplayCueNotify_Static = {}

---Called when a GameplayCue with duration is first seen as active, even if it wasn't actually just applied (Join in progress, etc)
---@param MyTarget AActor
---@param Parameters FGameplayCueParameters
---@return boolean
function UGameplayCueNotify_Static:WhileActive(MyTarget, Parameters) end

---Called when a GameplayCue with duration is removed
---@param MyTarget AActor
---@param Parameters FGameplayCueParameters
---@return boolean
function UGameplayCueNotify_Static:OnRemove(MyTarget, Parameters) end

---Called when a GameplayCue is executed, this is used for instant effects or periodic ticks
---@param MyTarget AActor
---@param Parameters FGameplayCueParameters
---@return boolean
function UGameplayCueNotify_Static:OnExecute(MyTarget, Parameters) end

---Called when a GameplayCue with duration is first activated, this will only be called if the client witnessed the activation
---@param MyTarget AActor
---@param Parameters FGameplayCueParameters
---@return boolean
function UGameplayCueNotify_Static:OnActive(MyTarget, Parameters) end

---Generic Event Graph event that will get called for every event type
---@param MyTarget AActor
---@param EventType integer
---@param Parameters FGameplayCueParameters
function UGameplayCueNotify_Static:K2_HandleGameplayCue(MyTarget, EventType, Parameters) end

