---An instantiated Actor that acts as a handler of a GameplayCue. Since they are instantiated, they can maintain state and tick/update every frame if necessary.
---@class AGameplayCueNotify_Actor : AActor
---@field public bAutoDestroyOnRemove boolean @We will auto destroy (recycle) this GameplayCueActor when the OnRemove event fires (after OnRemove is called).
---@field public AutoDestroyDelay number @If bAutoDestroyOnRemove is true, the actor will stay alive for this many seconds before being auto destroyed.
---@field public WarnIfTimelineIsStillRunning boolean @Warn if we have a timeline running when we cleanup this gameplay cue (we will kill the timeline either way)
---@field public WarnIfLatentActionIsStillRunning boolean @Warn if we have a latent action (delay, etc) running when we cleanup this gameplay cue (we will kill the latent action either way)
---@field public GameplayCueTag FGameplayTag @Tag this notify is activated by
---@field public GameplayCueName string @Mirrors GameplayCueTag in order to be asset registry searchable
---@field public bAutoAttachToOwner boolean @If true, attach this GameplayCue Actor to the target actor while it is active. Attaching is slightly more expensive than not attaching, so only enable when you need to.
---@field public IsOverride boolean @Does this Cue override other cues, or is it called in addition to them? E.g., If this is Damage.Physical.Slash, we wont call Damage.Physical afer we run this cue.
---@field public bUniqueInstancePerInstigator boolean @Does this cue get a new instance for each instigator? For example if two instigators apply a GC to the same source, do we create two of these GameplayCue Notify actors or just one? If the notify is simply playing FX or sounds on the source, it should not need unique instances. If this Notify is attaching a beam from the instigator to the target, it does need a unique instance per instigator.
---@field public bUniqueInstancePerSourceObject boolean @Does this cue get a new instance for each source object? For example if two source objects apply a GC to the same source, do we create two of these GameplayCue Notify actors or just one? If the notify is simply playing FX or sounds on the source, it should not need unique instances. If this Notify is attaching a beam from the source object to the target, it does need a unique instance per instigator.
---@field public bAllowMultipleOnActiveEvents boolean @Does this cue trigger its OnActive event if it's already been triggered? This can occur when the associated tag is triggered by multiple sources and there is no unique instancing.
---@field public bAllowMultipleWhileActiveEvents boolean @Does this cue trigger its WhileActive event if it's already been triggered? This can occur when the associated tag is triggered by multiple sources and there is no unique instancing.
---@field public NumPreallocatedInstances integer @How many instances of the gameplay cue to preallocate
local AGameplayCueNotify_Actor = {}

---Called when a GameplayCue with duration is first seen as active, even if it wasn't actually just applied (Join in progress, etc)
---@param MyTarget AActor
---@param Parameters FGameplayCueParameters
---@return boolean
function AGameplayCueNotify_Actor:WhileActive(MyTarget, Parameters) end

---Called when a GameplayCue with duration is removed
---@param MyTarget AActor
---@param Parameters FGameplayCueParameters
---@return boolean
function AGameplayCueNotify_Actor:OnRemove(MyTarget, Parameters) end

---@param DestroyedActor AActor
function AGameplayCueNotify_Actor:OnOwnerDestroyed(DestroyedActor) end

---Called when a GameplayCue is executed, this is used for instant effects or periodic ticks
---@param MyTarget AActor
---@param Parameters FGameplayCueParameters
---@return boolean
function AGameplayCueNotify_Actor:OnExecute(MyTarget, Parameters) end

---Called when a GameplayCue with duration is first activated, this will only be called if the client witnessed the activation
---@param MyTarget AActor
---@param Parameters FGameplayCueParameters
---@return boolean
function AGameplayCueNotify_Actor:OnActive(MyTarget, Parameters) end

---Generic Event Graph event that will get called for every event type
---@param MyTarget AActor
---@param EventType integer
---@param Parameters FGameplayCueParameters
function AGameplayCueNotify_Actor:K2_HandleGameplayCue(MyTarget, EventType, Parameters) end

---Ends the gameplay cue: either destroying it or recycling it. You must call this manually only if you do not use bAutoDestroyOnRemove/AutoDestroyDelay
function AGameplayCueNotify_Actor:K2_EndGameplayCue() end

