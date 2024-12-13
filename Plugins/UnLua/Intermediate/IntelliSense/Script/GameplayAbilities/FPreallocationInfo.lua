---Struct for pooling and preallocating gameplaycuenotify_actor classes. This data is per world and used to track what actors are available to recycle and which classes need to preallocate instances of those actors
---@class FPreallocationInfo
---@field public PreallocatedInstances TMap<TSubclassOf<UObject>, FGameplayCueNotifyActorArray> @Raw list of pooled instances. This relies on NotifyGameplayCueActorEndPlay always being called when actor is destroyed
---@field public ClassesNeedingPreallocation TArray<TSubclassOf<AGameplayCueNotify_Actor>> @List of classes that will be pooled
local FPreallocationInfo = {}
