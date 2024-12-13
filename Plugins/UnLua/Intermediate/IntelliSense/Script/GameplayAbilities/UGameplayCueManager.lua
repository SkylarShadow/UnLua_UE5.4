---Singleton manager object that handles dispatching gameplay cues and spawning GameplayCueNotify actors as needed
---@class UGameplayCueManager : UDataAsset
---@field protected RuntimeGameplayCueObjectLibrary FGameplayCueObjectLibrary
---@field protected EditorGameplayCueObjectLibrary FGameplayCueObjectLibrary
---@field protected LoadedGameplayCueNotifyClasses TArray<TSubclassOf<UObject>> @Hardref to the gameplaycue notify classes we have async loaded
---@field protected GameplayCueClassesForPreallocation TArray<TSubclassOf<AGameplayCueNotify_Actor>> @Classes that we need to preallocate instances for
---@field protected PendingExecuteCues TArray<FGameplayCuePendingExecute> @List of gameplay cue executes that haven't been processed yet
---@field protected GameplayCueSendContextCount integer @Number of active gameplay cue send contexts, when it goes to 0 cues are flushed
---@field protected PreallocationInfoList_Internal TArray<FPreallocationInfo>
local UGameplayCueManager = {}

