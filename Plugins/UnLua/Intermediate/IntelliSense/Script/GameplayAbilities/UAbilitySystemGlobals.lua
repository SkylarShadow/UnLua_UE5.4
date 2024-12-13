---Holds global data for the ability system. Can be configured per project via config file
---@class UAbilitySystemGlobals : UObject
---@field public AbilitySystemGlobalsClassName FSoftClassPath @The class to instantiate as the globals object. Defaults to this class but can be overridden
---@field public bUseDebugTargetFromHud boolean @Set to true if you want the "ShowDebug AbilitySystem" cheat to use the hud's debug target instead of the ability system's debug target.
---@field public ActivateFailIsDeadTag FGameplayTag @TryActivate failed due to being dead
---@field public ActivateFailIsDeadName string
---@field public ActivateFailCooldownTag FGameplayTag @TryActivate failed due to being on cooldown
---@field public ActivateFailCooldownName string
---@field public ActivateFailCostTag FGameplayTag @TryActivate failed due to not being able to spend costs
---@field public ActivateFailCostName string
---@field public ActivateFailTagsBlockedTag FGameplayTag @TryActivate failed due to being blocked by other abilities
---@field public ActivateFailTagsBlockedName string
---@field public ActivateFailTagsMissingTag FGameplayTag @TryActivate failed due to missing required tags
---@field public ActivateFailTagsMissingName string
---@field public ActivateFailNetworkingTag FGameplayTag @Failed to activate due to invalid networking settings, this is designer error
---@field public ActivateFailNetworkingName string
---@field public MinimalReplicationTagCountBits integer @How many bits to use for "number of tags" in FMinimalReplicationTagCountMap::NetSerialize.
---@field public TargetDataStructCache FNetSerializeScriptStructCache
---@field public EffectContextStructCache FNetSerializeScriptStructCache
---@field protected bAllowGameplayModEvaluationChannels boolean @Whether the game should allow the usage of gameplay mod evaluation channels or not
---@field protected DefaultGameplayModEvaluationChannel EGameplayModEvaluationChannel @The default mod evaluation channel for the game
---@field protected GameplayModEvaluationChannelAliases string @Game-specified named aliases for gameplay mod evaluation channels; Only those with valid aliases are eligible to be used in a game (except Channel0, which is always valid)
---@field protected GlobalCurveTableName FSoftObjectPath @Name of global curve table to use as the default for scalable floats, etc.
---@field protected GlobalCurveTable UCurveTable
---@field protected GlobalAttributeMetaDataTableName FSoftObjectPath @Holds information about the valid attributes' min and max values and stacking rules
---@field protected GlobalAttributeMetaDataTable UDataTable
---@field protected GlobalAttributeSetDefaultsTableName FSoftObjectPath @Holds default values for attribute sets, keyed off of Name/Levels. NOTE: Preserved for backwards compatibility, should use the array version below now
---@field protected GlobalAttributeSetDefaultsTableNames TArray<FSoftObjectPath> @Array of curve table names to use for default values for attribute sets, keyed off of Name/Levels
---@field protected GlobalAttributeDefaultsTables TArray<UCurveTable> @Curve tables containing default values for attribute sets, keyed off of Name/Levels
---@field protected GlobalGameplayCueManagerClass FSoftObjectPath @Class reference to gameplay cue manager. Use this if you want to just instantiate a class for your gameplay cue manager without having to create an asset.
---@field protected GlobalGameplayCueManagerName FSoftObjectPath @Object reference to gameplay cue manager (E.g., reference to a specific blueprint of your GameplayCueManager class. This is not necessary unless you want to have data or blueprints in your gameplay cue manager.
---@field protected GameplayCueNotifyPaths TArray<string> @Look in these paths for GameplayCueNotifies. These are your "always loaded" set.
---@field protected GameplayTagResponseTableName FSoftObjectPath @The class to instantiate as the GameplayTagResponseTable.
---@field protected GameplayTagResponseTable UGameplayTagReponseTable
---@field protected PredictTargetGameplayEffects boolean @Set to true if you want clients to try to predict gameplay effects done to targets. If false it will only predict self effects
---@field protected ReplicateActivationOwnedTags boolean @Set to true if you want tags granted to owners from ability activations to be replicated. If false, ActivationOwnedTags are only applied locally. This should only be disabled for legacy game code that depends on non-replication of ActivationOwnedTags.
---@field protected GlobalGameplayCueManager UGameplayCueManager @Manager for all gameplay cues
local UAbilitySystemGlobals = {}

