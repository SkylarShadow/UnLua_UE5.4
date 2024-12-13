---Abilities define custom gameplay logic that can be activated by players or external game logic
---@class UGameplayAbility : UObject
---@field public AbilityTags FGameplayTagContainer @This ability has these tags
---@field public bReplicateInputDirectly boolean @If true, this ability will always replicate input press/release events to the server.
---@field public RemoteInstanceEnded boolean @Set when the remote instance of this ability has ended (but the local instance may still be running or finishing up
---@field protected ReplicationPolicy integer @How an ability replicates state/events to everyone on the network. Replication is not required for NetExecutionPolicy.
---@field protected InstancingPolicy integer @How the ability is instanced when executed. This limits what an ability can do in its implementation.
---@field protected bServerRespectsRemoteAbilityCancellation boolean @If this is set, the server-side version of the ability can be canceled by the client-side version. The client-side version can always be canceled by the server.
---@field protected bRetriggerInstancedAbility boolean @if true, and trying to activate an already active instanced ability, end it and re-trigger it.
---@field protected CurrentActivationInfo FGameplayAbilityActivationInfo @This is information specific to this instance of the ability. E.g, whether it is predicting, authoring, confirmed, etc.
---@field protected CurrentEventData FGameplayEventData @Information specific to this instance of the ability, if it was activated by an event
---@field protected NetExecutionPolicy integer @How does an ability execute on the network. Does a client "ask and predict", "ask and wait", "don't ask (just do it)".
---@field protected NetSecurityPolicy integer @What protections does this ability have? Should the client be allowed to request changes to the execution of the ability?
---@field protected CostGameplayEffectClass TSubclassOf<UGameplayEffect> @This GameplayEffect represents the cost (mana, stamina, etc) of the ability. It will be applied when the ability is committed.
---@field protected AbilityTriggers TArray<FAbilityTriggerData> @Triggers to determine if this ability should execute in response to an event
---@field protected CooldownGameplayEffectClass TSubclassOf<UGameplayEffect> @This GameplayEffect represents the cooldown. It will be applied when the ability is committed and the ability cannot be used again until it is expired.
---@field protected CancelAbilitiesWithTag FGameplayTagContainer @Abilities with these tags are cancelled when this ability is executed
---@field protected BlockAbilitiesWithTag FGameplayTagContainer @Abilities with these tags are blocked while this ability is active
---@field protected ActivationOwnedTags FGameplayTagContainer @Tags to apply to activating owner while this ability is active. These are replicated if ReplicateActivationOwnedTags is enabled in AbilitySystemGlobals.
---@field protected ActivationRequiredTags FGameplayTagContainer @This ability can only be activated if the activating actor/component has all of these tags
---@field protected ActivationBlockedTags FGameplayTagContainer @This ability is blocked if the activating actor/component has any of these tags
---@field protected SourceRequiredTags FGameplayTagContainer @This ability can only be activated if the source actor/component has all of these tags
---@field protected SourceBlockedTags FGameplayTagContainer @This ability is blocked if the source actor/component has any of these tags
---@field protected TargetRequiredTags FGameplayTagContainer @This ability can only be activated if the target actor/component has all of these tags
---@field protected TargetBlockedTags FGameplayTagContainer @This ability is blocked if the target actor/component has any of these tags
---@field protected ActiveTasks TArray<UGameplayTask> @List of currently active tasks, do not modify directly
---@field protected CurrentMontage UAnimMontage @Active montage being played by this ability
---@field protected bIsActive boolean @True if the ability is currently active. For instance per owner abilities
---@field protected bIsAbilityEnding boolean @True if the end ability has been called, but has not yet completed.
---@field protected bIsCancelable boolean @True if the ability is currently cancelable, if not will only be canceled by hard EndAbility calls
---@field protected bIsBlockingOtherAbilities boolean @True if the ability block flags are currently enabled
---@field protected bMarkPendingKillOnAbilityEnd boolean
local UGameplayAbility = {}

---Sets rather ability block flags are enabled or disabled. Only valid on instanced abilities
---@param bShouldBlockAbilities boolean
function UGameplayAbility:SetShouldBlockOtherAbilities(bShouldBlockAbilities) end

---Sets whether the ability should ignore cancel requests. Only valid on instanced abilities
---@param bCanBeCanceled boolean
function UGameplayAbility:SetCanBeCanceled(bCanBeCanceled) end

---Sends a gameplay event, also creates a prediction window
---@param EventTag FGameplayTag
---@param Payload FGameplayEventData
function UGameplayAbility:SendGameplayEvent(EventTag, Payload) end

---Removes the GameplayEffect that granted this ability. Can only be called on instanced abilities.
function UGameplayAbility:RemoveGrantedByEffect() end

---Stops the current animation montage.
---@param OverrideBlendOutTime number @[opt] 
function UGameplayAbility:MontageStop(OverrideBlendOutTime) end

---Sets pending section on active montage
---@param FromSectionName string
---@param ToSectionName string
function UGameplayAbility:MontageSetNextSectionName(FromSectionName, ToSectionName) end

---Immediately jumps the active montage to a section
---@param SectionName string
function UGameplayAbility:MontageJumpToSection(SectionName) end

---Creates a target location from a socket on the owner avatar's skeletal mesh
---@param SocketName string
---@return FGameplayAbilityTargetingLocationInfo
function UGameplayAbility:MakeTargetLocationInfoFromOwnerSkeletalMeshComponent(SocketName) end

---Creates a target location from where the owner avatar is
---@return FGameplayAbilityTargetingLocationInfo
function UGameplayAbility:MakeTargetLocationInfoFromOwnerActor() end

---Convenience method for abilities to get outgoing gameplay effect specs (for example, to pass on to projectiles to apply to whoever they hit)
---@param GameplayEffectClass TSubclassOf_UGameplayEffect_
---@param Level number @[opt] 
---@return FGameplayEffectSpecHandle
function UGameplayAbility:MakeOutgoingGameplayEffectSpec(GameplayEffectClass, Level) end

---Returns true if this ability can be activated right now. Has no side effects
---@param ActorInfo FGameplayAbilityActorInfo
---@param Payload FGameplayEventData
---@return boolean
function UGameplayAbility:K2_ShouldAbilityRespondToEvent(ActorInfo, Payload) end

---Removes a persistent gameplay cue from the ability owner
---@param GameplayCueTag FGameplayTag
function UGameplayAbility:K2_RemoveGameplayCue(GameplayCueTag) end

---Blueprint event, will be called if an ability ends normally or abnormally
---@param bWasCancelled boolean
function UGameplayAbility:K2_OnEndAbility(bWasCancelled) end

---@return boolean
function UGameplayAbility:K2_HasAuthority() end

---Invoke a gameplay cue on the ability owner, with extra parameters
---@param GameplayCueTag FGameplayTag
---@param GameplayCueParameters FGameplayCueParameters
function UGameplayAbility:K2_ExecuteGameplayCueWithParams(GameplayCueTag, GameplayCueParameters) end

---Invoke a gameplay cue on the ability owner
---@param GameplayCueTag FGameplayTag
---@param Context FGameplayEffectContextHandle
function UGameplayAbility:K2_ExecuteGameplayCue(GameplayCueTag, Context) end

---Call from blueprints to end the ability naturally. This will only end predicted abilities locally, allowing it end naturally on the client or server
function UGameplayAbility:K2_EndAbilityLocally() end

---Call from blueprints to forcibly end the ability without canceling it. This will replicate the end ability to the client or server which can interrupt tasks
function UGameplayAbility:K2_EndAbility() end

---BP event called from CommitAbility
function UGameplayAbility:K2_CommitExecute() end

---Attempts to commit the ability's cost only. If BroadcastCommitEvent is true, it will broadcast the commit event that tasks like WaitAbilityCommit are listening for.
---@param BroadcastCommitEvent boolean @[opt] 
---@return boolean
function UGameplayAbility:K2_CommitAbilityCost(BroadcastCommitEvent) end

---Attempts to commit the ability's cooldown only. If BroadcastCommitEvent is true, it will broadcast the commit event that tasks like WaitAbilityCommit are listening for.
---@param BroadcastCommitEvent boolean @[opt] 
---@param ForceCooldown boolean @[opt] 
---@return boolean
function UGameplayAbility:K2_CommitAbilityCooldown(BroadcastCommitEvent, ForceCooldown) end

---Attempts to commit the ability (spend resources, etc). This our last chance to fail. Child classes that override ActivateAbility must call this themselves!
---@return boolean
function UGameplayAbility:K2_CommitAbility() end

---Checks the ability's cost, but does not apply it.
---@return boolean
function UGameplayAbility:K2_CheckAbilityCost() end

---Checks the ability's cooldown, but does not apply it.
---@return boolean
function UGameplayAbility:K2_CheckAbilityCooldown() end

---Call from Blueprint to cancel the ability naturally
function UGameplayAbility:K2_CancelAbility() end

---Returns true if this ability can be activated right now. Has no side effects
---@param ActorInfo FGameplayAbilityActorInfo
---@param Handle FGameplayAbilitySpecHandle
---@param RelevantTags FGameplayTagContainer @[out] 
---@return boolean
function UGameplayAbility:K2_CanActivateAbility(ActorInfo, Handle, RelevantTags) end

---Apply a previously created gameplay effect spec to a target
---@param EffectSpecHandle FGameplayEffectSpecHandle
---@param TargetData FGameplayAbilityTargetDataHandle
---@return TArray_FActiveGameplayEffectHandle_
function UGameplayAbility:K2_ApplyGameplayEffectSpecToTarget(EffectSpecHandle, TargetData) end

---Apply a previously created gameplay effect spec to the owner of this ability
---@param EffectSpecHandle FGameplayEffectSpecHandle
---@return FActiveGameplayEffectHandle
function UGameplayAbility:K2_ApplyGameplayEffectSpecToOwner(EffectSpecHandle) end

---Adds a persistent gameplay cue to the ability owner. Optionally will remove if ability ends
---@param GameplayCueTag FGameplayTag
---@param GameplayCueParameter FGameplayCueParameters
---@param bRemoveOnAbilityEnd boolean @[opt] 
function UGameplayAbility:K2_AddGameplayCueWithParams(GameplayCueTag, GameplayCueParameter, bRemoveOnAbilityEnd) end

---Adds a persistent gameplay cue to the ability owner. Optionally will remove if ability ends
---@param GameplayCueTag FGameplayTag
---@param Context FGameplayEffectContextHandle
---@param bRemoveOnAbilityEnd boolean @[opt] 
function UGameplayAbility:K2_AddGameplayCue(GameplayCueTag, Context, bRemoveOnAbilityEnd) end

---@param EventData FGameplayEventData
function UGameplayAbility:K2_ActivateAbilityFromEvent(EventData) end

---The main function that defines what an ability does.
--- -Child classes will want to override this
--- -This function graph should call CommitAbility
--- -This function graph should call EndAbility
--- Latent/async actions are ok in this graph. Note that Commit and EndAbility calling requirements speak to the K2_ActivateAbility graph.
--- In C++, the call to K2_ActivateAbility() may return without CommitAbility or EndAbility having been called. But it is expected that this
--- will only occur when latent/async actions are pending. When K2_ActivateAbility logically finishes, then we will expect Commit/End to have been called.
function UGameplayAbility:K2_ActivateAbility() end

---True if the owning actor is locally controlled, true in single player
---@return boolean
function UGameplayAbility:IsLocallyControlled() end

---Invalidates the current prediction key. This should be used in cases where there is a valid prediction window, but the server is doing logic that only it can do, and afterwards performs an action that the client could predict (had the client been able to run the server-only code prior).
---This returns instantly and has no other side effects other than clearing the current prediction key.
function UGameplayAbility:InvalidateClientPredictionKey() end

---Retrieves the SourceObject associated with this ability. Callable on non instanced
---@param Handle FGameplayAbilitySpecHandle
---@param ActorInfo FGameplayAbilityActorInfo
---@return UObject
function UGameplayAbility:GetSourceObject_BP(Handle, ActorInfo) end

---Convenience method for abilities to get skeletal mesh component - useful for aiming abilities
---@return USkeletalMeshComponent
function UGameplayAbility:GetOwningComponentFromActorInfo() end

---Returns the actor that owns this ability, which may not have a physical location
---@return AActor
function UGameplayAbility:GetOwningActorFromActorInfo() end

---Retrieves the EffectContext of the GameplayEffect that granted this ability. Can only be called on instanced abilities.
---@return FGameplayEffectContextHandle
function UGameplayAbility:GetGrantedByEffectContext() end

---Retrieves the SourceObject associated with this ability. Can only be called on instanced abilities.
---@return UObject
function UGameplayAbility:GetCurrentSourceObject() end

---Returns the currently playing montage for this ability, if any
---@return UAnimMontage
function UGameplayAbility:GetCurrentMontage() end

---Returns the time in seconds remaining on the currently active cooldown.
---@return number
function UGameplayAbility:GetCooldownTimeRemaining() end

---Generates a GameplayEffectContextHandle from our owner and an optional TargetData.
---@param OptionalTargetData FGameplayAbilityTargetDataHandle
---@return FGameplayEffectContextHandle
function UGameplayAbility:GetContextFromOwner(OptionalTargetData) end

---Returns the physical actor that is executing this ability. May be null
---@return AActor
function UGameplayAbility:GetAvatarActorFromActorInfo() end

---Returns the actor info associated with this ability, has cached pointers to useful objects
---@return FGameplayAbilityActorInfo
function UGameplayAbility:GetActorInfo() end

---Returns the AbilitySystemComponent that is activating this ability
---@return UAbilitySystemComponent
function UGameplayAbility:GetAbilitySystemComponentFromActorInfo() end

---Returns current ability level for non instanced abilities. You must call this version in these contexts!
---@param Handle FGameplayAbilitySpecHandle
---@param ActorInfo FGameplayAbilityActorInfo
---@return integer
function UGameplayAbility:GetAbilityLevel_BP(Handle, ActorInfo) end

---Returns current level of the Ability
---@return integer
function UGameplayAbility:GetAbilityLevel() end

---Add any task with this instance name to a list to be ended (not canceled) next frame.  See also CancelTaskByInstanceName.
---@param InstanceName string
function UGameplayAbility:EndTaskByInstanceName(InstanceName) end

---Ends any active ability state task with the given name. If name is 'None' all active states will be ended (in an arbitrary order).
---@param OptionalStateNameToEnd string
function UGameplayAbility:EndAbilityState(OptionalStateNameToEnd) end

---Finds all currently active tasks named InstanceName and confirms them. What this means depends on the individual task. By default, this does nothing other than ending if bEndTask is true.
---@param InstanceName string
---@param bEndTask boolean
function UGameplayAbility:ConfirmTaskByInstanceName(InstanceName, bEndTask) end

---Add any task with this instance name to a list to be canceled (not ended) next frame.  See also EndTaskByInstanceName.
---@param InstanceName string
function UGameplayAbility:CancelTaskByInstanceName(InstanceName) end

---Removes GameplayEffect from owner that match the given handle
---@param Handle FActiveGameplayEffectHandle
---@param StacksToRemove integer @[opt] 
function UGameplayAbility:BP_RemoveGameplayEffectFromOwnerWithHandle(Handle, StacksToRemove) end

---Removes GameplayEffects from owner which grant the given tags
---@param WithGrantedTags FGameplayTagContainer
---@param StacksToRemove integer @[opt] 
function UGameplayAbility:BP_RemoveGameplayEffectFromOwnerWithGrantedTags(WithGrantedTags, StacksToRemove) end

---Removes GameplayEffects from owner which match the given asset level tags
---@param WithAssetTags FGameplayTagContainer
---@param StacksToRemove integer @[opt] 
function UGameplayAbility:BP_RemoveGameplayEffectFromOwnerWithAssetTags(WithAssetTags, StacksToRemove) end

---Apply a gameplay effect to a Target
---@param TargetData FGameplayAbilityTargetDataHandle
---@param GameplayEffectClass TSubclassOf_UGameplayEffect_
---@param GameplayEffectLevel integer @[opt] 
---@param Stacks integer @[opt] 
---@return TArray_FActiveGameplayEffectHandle_
function UGameplayAbility:BP_ApplyGameplayEffectToTarget(TargetData, GameplayEffectClass, GameplayEffectLevel, Stacks) end

---Apply a gameplay effect to the owner of this ability
---@param GameplayEffectClass TSubclassOf_UGameplayEffect_
---@param GameplayEffectLevel integer @[opt] 
---@param Stacks integer @[opt] 
---@return FActiveGameplayEffectHandle
function UGameplayAbility:BP_ApplyGameplayEffectToOwner(GameplayEffectClass, GameplayEffectLevel, Stacks) end

