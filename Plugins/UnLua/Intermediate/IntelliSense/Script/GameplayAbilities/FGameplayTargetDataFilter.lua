---Simple actor target filter, games can subclass this
---@class FGameplayTargetDataFilter
---@field public SelfActor AActor @Actor we're comparing against.
---@field public RequiredActorClass TSubclassOf<AActor> @Subclass actors must be to pass the filter.
---@field public SelfFilter integer @Filter based on whether or not this actor is "self."
---@field public bReverseFilter boolean @Reverses the meaning of the filter, so it will exclude all actors that pass.
local FGameplayTargetDataFilter = {}
