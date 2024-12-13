---The core ActorComponent for interfacing with the GameplayAbilities System
---@class UAbilitySystemComponent : UGameplayTasksComponent
---@field public DefaultStartingData TArray<FAttributeDefaults>
---@field public AffectedAnimInstanceTag string @The linked Anim Instance that this component will play montages in. Use NAME_None for the main anim instance.
---@field public OutgoingDuration number @Internal Attribute that modifies the duration of gameplay effects created by this component
---@field public IncomingDuration number @Internal Attribute that modifies the duration of gameplay effects applied to this component
---@field public ClientDebugStrings TArray<string>
---@field public ServerDebugStrings TArray<string>
---@field public UserAbilityActivationInhibited boolean @Rather activation is currently inhibited
---@field public ReplicationProxyEnabled boolean @When enabled GameplayCue RPCs will be routed through the AvatarActor's IAbilitySystemReplicationProxyInterface rather than this component
---@field public bSuppressGrantAbility boolean @Suppress all ability granting through GEs on this component
---@field public bSuppressGameplayCues boolean @Suppress all GameplayCues on this component
---@field public SpawnedTargetActors TArray<AGameplayAbilityTargetActor> @List of currently active targeting actors
---@field private OwnerActor AActor @The actor that owns this component logically
---@field private AvatarActor AActor @The actor that is the physical representation used for abilities. Can be NULL
---@field protected ActivatableAbilities FGameplayAbilitySpecContainer @The abilities we can activate.         -This will include CDOs for non instanced abilities and per-execution instanced abilities.         -Actor-instanced abilities will be the actual instance (not CDO) This array is not vital for things to work. It is a convenience thing for 'giving abilities to the actor'. But abilities could also work on things without an AbilitySystemComponent. For example an ability could be written to execute on a StaticMeshActor. As long as the ability doesn't require instancing or anything else that the AbilitySystemComponent would provide, then it doesn't need the component to function.
---@field protected AllReplicatedInstancedAbilities TArray<UGameplayAbility>
---@field protected RepAnimMontageInfo FGameplayAbilityRepAnimMontage @Data structure for replicating montage info to simulated clients
---@field protected bCachedIsNetSimulated boolean @Cached value of rather this is a simulated actor
---@field protected bPendingMontageRep boolean @Set if montage rep happens while we don't have the animinstance associated with us yet
---@field protected LocalAnimMontageInfo FGameplayAbilityLocalAnimMontage @Data structure for montages that were instigated locally (everything if server, predictive if client. replicated if simulated proxy)
---@field protected ActiveGameplayEffects FActiveGameplayEffectsContainer @Contains all of the gameplay effects that are currently active on this component
---@field protected ActiveGameplayCues FActiveGameplayCueContainer @List of all active gameplay cues (executed outside of Gameplay Effects)
---@field protected MinimalReplicationGameplayCues FActiveGameplayCueContainer @Replicated gameplaycues when in minimal replication mode. These are cues that would come normally come from ActiveGameplayEffects (but since we do not replicate AGE in minimal mode, they must be replicated through here)
---@field protected BlockedAbilityBindings TArray<integer> @Tracks abilities that are blocked based on input binding. An ability is blocked if BlockedAbilityBindings[InputID] > 0
---@field protected MinimalReplicationTags FMinimalReplicationTagCountMap
---@field private SpawnedAttributes TArray<UAttributeSet> @List of attribute sets
---@field private ReplicatedLooseTags FMinimalReplicationTagCountMap @Container used for replicating loose gameplay tags
---@field public ReplicatedPredictionKeyMap FReplicatedPredictionKeyMap @PredictionKeys, see more info in GameplayPrediction.h. This has to come *last* in all replicated properties on the AbilitySystemComponent to ensure OnRep/callback order.
local UAbilitySystemComponent = {}

---Dynamically update multiple set-by-caller magnitudes for an active gameplay effect
---@param ActiveHandle FActiveGameplayEffectHandle
---@param NewSetByCallerValues TMap_FGameplayTag__number_
function UAbilitySystemComponent:UpdateActiveGameplayEffectSetByCallerMagnitudes(ActiveHandle, NewSetByCallerValues) end

---Dynamically update the set-by-caller magnitude for an active gameplay effect
---@param ActiveHandle FActiveGameplayEffectHandle
---@param SetByCallerTag FGameplayTag
---@param NewValue number
function UAbilitySystemComponent:UpdateActiveGameplayEffectSetByCallerMagnitude(ActiveHandle, SetByCallerTag, NewValue) end

---Attempts to activate the ability that is passed in. This will check costs and requirements before doing so.
---Returns true if it thinks it activated, but it may return false positives due to failure later in activation.
---If bAllowRemoteActivation is true, it will remotely activate local/server abilities, if false it will only try to locally activate the ability
---@param InAbilityToActivate TSubclassOf_UGameplayAbility_
---@param bAllowRemoteActivation boolean @[opt] 
---@return boolean
function UAbilitySystemComponent:TryActivateAbilityByClass(InAbilityToActivate, bAllowRemoteActivation) end

---Attempts to activate the given ability, will check costs and requirements before doing so.
---Returns true if it thinks it activated, but it may return false positives due to failure later in activation.
---If bAllowRemoteActivation is true, it will remotely activate local/server abilities, if false it will only try to locally activate the ability
---@param AbilityToActivate FGameplayAbilitySpecHandle
---@param bAllowRemoteActivation boolean @[opt] 
---@return boolean
function UAbilitySystemComponent:TryActivateAbility(AbilityToActivate, bAllowRemoteActivation) end

---Attempts to activate every gameplay ability that matches the given tag and DoesAbilitySatisfyTagRequirements().
---Returns true if anything attempts to activate. Can activate more than one ability and the ability may fail later.
---If bAllowRemoteActivation is true, it will remotely activate local/server abilities, if false it will only try to locally activate abilities.
---@param GameplayTagContainer FGameplayTagContainer
---@param bAllowRemoteActivation boolean @[opt] 
---@return boolean
function UAbilitySystemComponent:TryActivateAbilitiesByTag(GameplayTagContainer, bAllowRemoteActivation) end

---Any active targeting actors will be told to stop and return current targeting data
function UAbilitySystemComponent:TargetConfirm() end

---Any active targeting actors will be stopped and canceled, not returning any targeting data
function UAbilitySystemComponent:TargetCancel() end

---Disable or Enable a local user from being able to activate abilities. This should only be used for input/UI etc related inhibition. Do not use for game mechanics.
---@param NewInhibit boolean
function UAbilitySystemComponent:SetUserAbilityActivationInhibited(NewInhibit) end

---Updates the level of an already applied gameplay effect. The intention is that this is 'seemless' and doesnt behave like removing/reapplying
---@param Query FGameplayEffectQuery
---@param NewLevel integer
function UAbilitySystemComponent:SetActiveGameplayEffectLevelUsingQuery(Query, NewLevel) end

---Updates the level of an already applied gameplay effect. The intention is that this is 'seemless' and doesnt behave like removing/reapplying
---@param ActiveHandle FActiveGameplayEffectHandle
---@param NewLevel integer
function UAbilitySystemComponent:SetActiveGameplayEffectLevel(ActiveHandle, NewLevel) end

---@param AbilityToActivate FGameplayAbilitySpecHandle
---@param InputPressed boolean
---@param PredictionKey FPredictionKey
---@param TriggerEventData FGameplayEventData
function UAbilitySystemComponent:ServerTryActivateAbilityWithEventData(AbilityToActivate, InputPressed, PredictionKey, TriggerEventData) end

---@param AbilityToActivate FGameplayAbilitySpecHandle
---@param InputPressed boolean
---@param PredictionKey FPredictionKey
function UAbilitySystemComponent:ServerTryActivateAbility(AbilityToActivate, InputPressed, PredictionKey) end

---Replicates to the server that targeting has been cancelled
---@param AbilityHandle FGameplayAbilitySpecHandle
---@param AbilityOriginalPredictionKey FPredictionKey
---@param CurrentPredictionKey FPredictionKey
function UAbilitySystemComponent:ServerSetReplicatedTargetDataCancelled(AbilityHandle, AbilityOriginalPredictionKey, CurrentPredictionKey) end

---Replicates targeting data to the server
---@param AbilityHandle FGameplayAbilitySpecHandle
---@param AbilityOriginalPredictionKey FPredictionKey
---@param ReplicatedTargetDataHandle FGameplayAbilityTargetDataHandle
---@param ApplicationTag FGameplayTag
---@param CurrentPredictionKey FPredictionKey
function UAbilitySystemComponent:ServerSetReplicatedTargetData(AbilityHandle, AbilityOriginalPredictionKey, ReplicatedTargetDataHandle, ApplicationTag, CurrentPredictionKey) end

---Replicates the Generic Replicated Event to the server with payload.
---@param EventType integer
---@param AbilityHandle FGameplayAbilitySpecHandle
---@param AbilityOriginalPredictionKey FPredictionKey
---@param CurrentPredictionKey FPredictionKey
---@param VectorPayload FVector_NetQuantize100
function UAbilitySystemComponent:ServerSetReplicatedEventWithPayload(EventType, AbilityHandle, AbilityOriginalPredictionKey, CurrentPredictionKey, VectorPayload) end

---Replicates the Generic Replicated Event to the server.
---@param EventType integer
---@param AbilityHandle FGameplayAbilitySpecHandle
---@param AbilityOriginalPredictionKey FPredictionKey
---@param CurrentPredictionKey FPredictionKey
function UAbilitySystemComponent:ServerSetReplicatedEvent(EventType, AbilityHandle, AbilityOriginalPredictionKey, CurrentPredictionKey) end

---@param AbilityHandle FGameplayAbilitySpecHandle
function UAbilitySystemComponent:ServerSetInputReleased(AbilityHandle) end

---Direct Input state replication. These will be called if bReplicateInputDirectly is true on the ability and is generally not a good thing to use. (Instead, prefer to use Generic Replicated Events).
---@param AbilityHandle FGameplayAbilitySpecHandle
function UAbilitySystemComponent:ServerSetInputPressed(AbilityHandle) end

---Same as ServerPrintDebug_Request but this includes the client debug strings so that the server can embed them in replays
---@param Strings TArray_string_
function UAbilitySystemComponent:ServerPrintDebug_RequestWithStrings(Strings) end

---Ask the server to send ability system debug information back to the client, via ClientPrintDebug_Response
function UAbilitySystemComponent:ServerPrintDebug_Request() end

---@param AbilityToEnd FGameplayAbilitySpecHandle
---@param ActivationInfo FGameplayAbilityActivationInfo
---@param PredictionKey FPredictionKey
function UAbilitySystemComponent:ServerEndAbility(AbilityToEnd, ActivationInfo, PredictionKey) end

---RPC function called from CurrentMontageSetPlayRate, replicates to other clients
---@param ClientAnimation UAnimSequenceBase
---@param InPlayRate number
function UAbilitySystemComponent:ServerCurrentMontageSetPlayRate(ClientAnimation, InPlayRate) end

---RPC function called from CurrentMontageSetNextSectionName, replicates to other clients
---@param ClientAnimation UAnimSequenceBase
---@param ClientPosition number
---@param SectionName string
---@param NextSectionName string
function UAbilitySystemComponent:ServerCurrentMontageSetNextSectionName(ClientAnimation, ClientPosition, SectionName, NextSectionName) end

---RPC function called from CurrentMontageJumpToSection, replicates to other clients
---@param ClientAnimation UAnimSequenceBase
---@param SectionName string
function UAbilitySystemComponent:ServerCurrentMontageJumpToSectionName(ClientAnimation, SectionName) end

---@param AbilityToCancel FGameplayAbilitySpecHandle
---@param ActivationInfo FGameplayAbilityActivationInfo
function UAbilitySystemComponent:ServerCancelAbility(AbilityToCancel, ActivationInfo) end

---@param BatchInfo FServerAbilityRPCBatch
function UAbilitySystemComponent:ServerAbilityRPCBatch(BatchInfo) end

---Remove active gameplay effects whose backing definition are the specified gameplay effect class
---@param GameplayEffect TSubclassOf_UGameplayEffect_
---@param InstigatorAbilitySystemComponent UAbilitySystemComponent
---@param StacksToRemove integer @[opt] 
function UAbilitySystemComponent:RemoveActiveGameplayEffectBySourceEffect(GameplayEffect, InstigatorAbilitySystemComponent, StacksToRemove) end

---Removes GameplayEffect by Handle. StacksToRemove=-1 will remove all stacks.
---@param Handle FActiveGameplayEffectHandle
---@param StacksToRemove integer @[opt] 
---@return boolean
function UAbilitySystemComponent:RemoveActiveGameplayEffect(Handle, StacksToRemove) end

---Removes all active effects that contain any of the tags in Tags
---@param Tags FGameplayTagContainer
---@return integer
function UAbilitySystemComponent:RemoveActiveEffectsWithTags(Tags) end

---Removes all active effects with captured source tags that contain any of the tags in Tags
---@param Tags FGameplayTagContainer
---@return integer
function UAbilitySystemComponent:RemoveActiveEffectsWithSourceTags(Tags) end

---Removes all active effects that grant any of the tags in Tags
---@param Tags FGameplayTagContainer
---@return integer
function UAbilitySystemComponent:RemoveActiveEffectsWithGrantedTags(Tags) end

---Removes all active effects that apply any of the tags in Tags
---@param Tags FGameplayTagContainer
---@return integer
function UAbilitySystemComponent:RemoveActiveEffectsWithAppliedTags(Tags) end

---Sends a local player Input Released event with the provided Input ID, notifying any bound abilities
---@param InputID integer
function UAbilitySystemComponent:ReleaseInputID(InputID) end

---* Sends a local player Input Pressed event with the provided Input ID, notifying any bound abilities
---*
---* @@param InputID The Input ID to match
---@param InputID integer
function UAbilitySystemComponent:PressInputID(InputID) end

---@param InActor AActor
---@param EndPlayReason integer
function UAbilitySystemComponent:OnSpawnedAttributesEndPlayed(InActor, EndPlayReason) end

---@param PreviousSpawnedAttributes TArray_UAttributeSet_
function UAbilitySystemComponent:OnRep_SpawnedAttributes(PreviousSpawnedAttributes) end

function UAbilitySystemComponent:OnRep_ServerDebugString() end

function UAbilitySystemComponent:OnRep_ReplicatedAnimMontage() end

function UAbilitySystemComponent:OnRep_OwningActor() end

function UAbilitySystemComponent:OnRep_ClientDebugString() end

function UAbilitySystemComponent:OnRep_ActivateAbilities() end

---@param InActor AActor
function UAbilitySystemComponent:OnOwnerActorDestroyed(InActor) end

---@param InActor AActor
function UAbilitySystemComponent:OnAvatarActorDestroyed(InActor) end

---@param GameplayCueTags FGameplayTagContainer
---@param PredictionKey FPredictionKey
---@param GameplayCueParameters FGameplayCueParameters
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCuesExecuted_WithParams(GameplayCueTags, PredictionKey, GameplayCueParameters) end

---@param GameplayCueTags FGameplayTagContainer
---@param PredictionKey FPredictionKey
---@param EffectContext FGameplayEffectContextHandle
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCuesExecuted(GameplayCueTags, PredictionKey, EffectContext) end

---@param GameplayCueTags FGameplayTagContainer
---@param PredictionKey FPredictionKey
---@param GameplayCueParameters FGameplayCueParameters
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCuesAddedAndWhileActive_WithParams(GameplayCueTags, PredictionKey, GameplayCueParameters) end

---@param GameplayCueTag FGameplayTag
---@param PredictionKey FPredictionKey
---@param GameplayCueParameters FGameplayCueParameters
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCueExecuted_WithParams(GameplayCueTag, PredictionKey, GameplayCueParameters) end

---Do not call these functions directly, call the wrappers on GameplayCueManager instead
---@param Spec FGameplayEffectSpecForRPC
---@param PredictionKey FPredictionKey
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCueExecuted_FromSpec(Spec, PredictionKey) end

---@param GameplayCueTag FGameplayTag
---@param PredictionKey FPredictionKey
---@param EffectContext FGameplayEffectContextHandle
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCueExecuted(GameplayCueTag, PredictionKey, EffectContext) end

---@param GameplayCueTag FGameplayTag
---@param PredictionKey FPredictionKey
---@param GameplayCueParameters FGameplayCueParameters
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCueAddedAndWhileActive_WithParams(GameplayCueTag, PredictionKey, GameplayCueParameters) end

---@param Spec FGameplayEffectSpecForRPC
---@param PredictionKey FPredictionKey
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCueAddedAndWhileActive_FromSpec(Spec, PredictionKey) end

---@param GameplayCueTag FGameplayTag
---@param PredictionKey FPredictionKey
---@param Parameters FGameplayCueParameters
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCueAdded_WithParams(GameplayCueTag, PredictionKey, Parameters) end

---@param GameplayCueTag FGameplayTag
---@param PredictionKey FPredictionKey
---@param EffectContext FGameplayEffectContextHandle
function UAbilitySystemComponent:NetMulticast_InvokeGameplayCueAdded(GameplayCueTag, PredictionKey, EffectContext) end

---Get an outgoing GameplayEffectSpec that is ready to be applied to other things.
---@param GameplayEffectClass TSubclassOf_UGameplayEffect_
---@param Level number
---@param Context FGameplayEffectContextHandle
---@return FGameplayEffectSpecHandle
function UAbilitySystemComponent:MakeOutgoingSpec(GameplayEffectClass, Level, Context) end

---Create an EffectContext for the owner of this AbilitySystemComponent
---@return FGameplayEffectContextHandle
function UAbilitySystemComponent:MakeEffectContext() end

---@param Attributes TSubclassOf_UAttributeSet_
---@param DataTable UDataTable
function UAbilitySystemComponent:K2_InitStats(Attributes, DataTable) end

---Grants a Gameplay Ability, activates it once, and removes it.
---This will be ignored if the actor is not authoritative.
---@param AbilityClass TSubclassOf_UGameplayAbility_
---@param Level integer @[opt] 
---@param InputID integer @[opt] 
---@return FGameplayAbilitySpecHandle
function UAbilitySystemComponent:K2_GiveAbilityAndActivateOnce(AbilityClass, Level, InputID) end

---Grants a Gameplay Ability and returns its handle.
---This will be ignored if the actor is not authoritative.
---@param AbilityClass TSubclassOf_UGameplayAbility_
---@param Level integer @[opt] 
---@param InputID integer @[opt] 
---@return FGameplayAbilitySpecHandle
function UAbilitySystemComponent:K2_GiveAbility(AbilityClass, Level, InputID) end

---Allows polling to see if a GameplayCue is active. We expect most GameplayCue handling to be event based, but some cases we may need to check if a GameplayCue is active (Animation Blueprint for example)
---@param GameplayCueTag FGameplayTag
---@return boolean
function UAbilitySystemComponent:IsGameplayCueActive(GameplayCueTag) end

---Sends a local player Input Confirm event, notifying abilities
function UAbilitySystemComponent:InputConfirm() end

---Sends a local player Input Cancel event, notifying abilities
function UAbilitySystemComponent:InputCancel() end

---This is meant to be used to inhibit activating an ability from an input perspective. (E.g., the menu is pulled up, another game mechanism is consuming all input, etc)
---This should only be called on locally owned players.
---This should not be used to game mechanics like silences or disables. Those should be done through gameplay effects.
---@return boolean
function UAbilitySystemComponent:GetUserAbilityActivationInhibited() end

---Returns the current count of the given gameplay tag.
---This includes both loose tags, and tags granted by gameplay effects and abilities.
---This function can be called on the client, but it may not display the most current count on the server.
---@param GameplayTag FGameplayTag
---@return integer
function UAbilitySystemComponent:GetGameplayTagCount(GameplayTag) end

---Raw accessor to ask the magnitude of a gameplay effect, not necessarily always correct. How should outside code (UI, etc) ask things like 'how much is this gameplay effect modifying my damage by'
---(most likely we want to catch this on the backend - when damage is applied we can get a full dump/history of how the number got to where it is. But still we may need polling methods like below (how much would my damage be)
---@param Handle FActiveGameplayEffectHandle
---@param Attribute FGameplayAttribute
---@return number
function UAbilitySystemComponent:GetGameplayEffectMagnitude(Handle, Attribute) end

---Get the count of the specified source effect on the ability system component. For non-stacking effects, this is the sum of all active instances.
---For stacking effects, this is the sum of all valid stack counts. If an instigator is specified, only effects from that instigator are counted.
---@param SoftSourceGameplayEffect TSoftClassPtr_UGameplayEffect_
---@param OptionalInstigatorFilterComponent UAbilitySystemComponent
---@param bEnforceOnGoingCheck boolean @[opt] 
---@return integer
function UAbilitySystemComponent:GetGameplayEffectCount_IfLoaded(SoftSourceGameplayEffect, OptionalInstigatorFilterComponent, bEnforceOnGoingCheck) end

---Get the count of the specified source effect on the ability system component. For non-stacking effects, this is the sum of all active instances.
---For stacking effects, this is the sum of all valid stack counts. If an instigator is specified, only effects from that instigator are counted.
---@param SourceGameplayEffect TSubclassOf_UGameplayEffect_
---@param OptionalInstigatorFilterComponent UAbilitySystemComponent
---@param bEnforceOnGoingCheck boolean @[opt] 
---@return integer
function UAbilitySystemComponent:GetGameplayEffectCount(SourceGameplayEffect, OptionalInstigatorFilterComponent, bEnforceOnGoingCheck) end

---Returns the current value of the given gameplay attribute, or zero if the attribute is not found.
---NOTE: This doesn't take predicted gameplay effect modifiers into consideration, so the value may not be accurate on clients at all times.
---@param Attribute FGameplayAttribute
---@param bFound boolean @[out] 
---@return number
function UAbilitySystemComponent:GetGameplayAttributeValue(Attribute, bFound) end

---Returns a reference to the Attribute Set instance, if one exists in this component
---@param AttributeSetClass TSubclassOf_UAttributeSet_
---@return UAttributeSet
function UAbilitySystemComponent:GetAttributeSet(AttributeSetClass) end

---Returns a list of all attributes for this abilty system component
---@param OutAttributes TArray_FGameplayAttribute_ @[out] 
function UAbilitySystemComponent:GetAllAttributes(OutAttributes) end

---Returns an array with all granted ability handles
---NOTE: currently this doesn't include abilities that are mid-activation
---@param OutAbilityHandles TArray_FGameplayAbilitySpecHandle_ @[out] 
function UAbilitySystemComponent:GetAllAbilities(OutAbilityHandles) end

---Returns list of active effects that have all of the passed in tags
---@param Tags FGameplayTagContainer
---@return TArray_FActiveGameplayEffectHandle_
function UAbilitySystemComponent:GetActiveEffectsWithAllTags(Tags) end

---Returns list of active effects, for a query
---@param Query FGameplayEffectQuery
---@return TArray_FActiveGameplayEffectHandle_
function UAbilitySystemComponent:GetActiveEffects(Query) end

---Returns an array with all abilities that match the provided tags
---@param OutAbilityHandles TArray_FGameplayAbilitySpecHandle_ @[out] 
---@param Tags FGameplayTagContainer
---@param bExactMatch boolean @[opt] 
function UAbilitySystemComponent:FindAllAbilitiesWithTags(OutAbilityHandles, Tags, bExactMatch) end

---Returns an array with all abilities bound to an Input ID value
---@param OutAbilityHandles TArray_FGameplayAbilitySpecHandle_ @[out] 
---@param InputID integer @[opt] 
function UAbilitySystemComponent:FindAllAbilitiesWithInputID(OutAbilityHandles, InputID) end

---Returns an array with all abilities that match the provided Gameplay Tag Query
---@param OutAbilityHandles TArray_FGameplayAbilitySpecHandle_ @[out] 
---@param Query FGameplayTagQuery
function UAbilitySystemComponent:FindAllAbilitiesMatchingQuery(OutAbilityHandles, Query) end

---@param AbilityToActivate FGameplayAbilitySpecHandle
function UAbilitySystemComponent:ClientTryActivateAbility(AbilityToActivate) end

---Replicates the Generic Replicated Event to the client.
---@param EventType integer
---@param AbilityHandle FGameplayAbilitySpecHandle
---@param AbilityOriginalPredictionKey FPredictionKey
function UAbilitySystemComponent:ClientSetReplicatedEvent(EventType, AbilityHandle, AbilityOriginalPredictionKey) end

---@param Strings TArray_string_
---@param GameFlags integer
function UAbilitySystemComponent:ClientPrintDebug_Response(Strings, GameFlags) end

---@param AbilityToEnd FGameplayAbilitySpecHandle
---@param ActivationInfo FGameplayAbilityActivationInfo
function UAbilitySystemComponent:ClientEndAbility(AbilityToEnd, ActivationInfo) end

---@param AbilityToCancel FGameplayAbilitySpecHandle
---@param ActivationInfo FGameplayAbilityActivationInfo
function UAbilitySystemComponent:ClientCancelAbility(AbilityToCancel, ActivationInfo) end

---@param AbilityToActivate FGameplayAbilitySpecHandle
---@param PredictionKey FPredictionKey
---@param TriggerEventData FGameplayEventData
function UAbilitySystemComponent:ClientActivateAbilitySucceedWithEventData(AbilityToActivate, PredictionKey, TriggerEventData) end

---@param AbilityToActivate FGameplayAbilitySpecHandle
---@param PredictionKey FPredictionKey
function UAbilitySystemComponent:ClientActivateAbilitySucceed(AbilityToActivate, PredictionKey) end

---@param AbilityToActivate FGameplayAbilitySpecHandle
---@param PredictionKey integer
function UAbilitySystemComponent:ClientActivateAbilityFailed(AbilityToActivate, PredictionKey) end

---Clears all abilities bound to a given Input ID
---This will be ignored if the actor is not authoritative
---@param InputID integer @[opt] 
function UAbilitySystemComponent:ClearAllAbilitiesWithInputID(InputID) end

---Wipes all 'given' abilities. This will be ignored if the actor is not authoritative.
function UAbilitySystemComponent:ClearAllAbilities() end

---Removes the specified ability.
---This will be ignored if the actor is not authoritative.
---@param Handle FGameplayAbilitySpecHandle
function UAbilitySystemComponent:ClearAbility(Handle) end

---Apply a gameplay effect to passed in target
---@param GameplayEffectClass TSubclassOf_UGameplayEffect_
---@param Target UAbilitySystemComponent
---@param Level number
---@param Context FGameplayEffectContextHandle
---@return FActiveGameplayEffectHandle
function UAbilitySystemComponent:BP_ApplyGameplayEffectToTarget(GameplayEffectClass, Target, Level, Context) end

---Apply a gameplay effect to self
---@param GameplayEffectClass TSubclassOf_UGameplayEffect_
---@param Level number
---@param EffectContext FGameplayEffectContextHandle
---@return FActiveGameplayEffectHandle
function UAbilitySystemComponent:BP_ApplyGameplayEffectToSelf(GameplayEffectClass, Level, EffectContext) end

---Applies a previously created gameplay effect spec to a target
---@param SpecHandle FGameplayEffectSpecHandle
---@param Target UAbilitySystemComponent
---@return FActiveGameplayEffectHandle
function UAbilitySystemComponent:BP_ApplyGameplayEffectSpecToTarget(SpecHandle, Target) end

---Applies a previously created gameplay effect spec to this component
---@param SpecHandle FGameplayEffectSpecHandle
---@return FActiveGameplayEffectHandle
function UAbilitySystemComponent:BP_ApplyGameplayEffectSpecToSelf(SpecHandle) end

---Used to register callbacks to confirm/cancel input
function UAbilitySystemComponent:AbilityConfirmOrCancel__DelegateSignature() end

---UGameplayAbility*, Ability,
---@param InputID integer
function UAbilitySystemComponent:AbilityAbilityKey__DelegateSignature(InputID) end

---Check if the asset has a gameplay tag that matches against the specified tag (expands to include parents of asset tags)
---@param TagToCheck FGameplayTag
---@return boolean
function UAbilitySystemComponent:HasMatchingGameplayTag(TagToCheck) end

---Check if the asset has gameplay tags that matches against any of the specified tags (expands to include parents of asset tags)
---@param TagContainer FGameplayTagContainer
---@return boolean
function UAbilitySystemComponent:HasAnyMatchingGameplayTags(TagContainer) end

---Check if the asset has gameplay tags that matches against all of the specified tags (expands to include parents of asset tags)
---@param TagContainer FGameplayTagContainer
---@return boolean
function UAbilitySystemComponent:HasAllMatchingGameplayTags(TagContainer) end

---Get any owned gameplay tags on the asset
---@param TagContainer FGameplayTagContainer @[out] 
function UAbilitySystemComponent:GetOwnedGameplayTags(TagContainer) end

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UAbilitySystemComponent:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UAbilitySystemComponent:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UAbilitySystemComponent:AddAssetUserDataOfClass(InUserDataClass) end

