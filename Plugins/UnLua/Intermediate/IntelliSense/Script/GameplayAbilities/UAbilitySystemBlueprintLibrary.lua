---Blueprint library for ability system. Many of these functions are useful to call from native as well
---@class UAbilitySystemBlueprintLibrary : UBlueprintFunctionLibrary
local UAbilitySystemBlueprintLibrary = {}

---Returns true if the target data has an origin
---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index integer
---@return boolean
function UAbilitySystemBlueprintLibrary.TargetDataHasOrigin(TargetData, Index) end

---Returns true if the target data has a hit result
---@param HitResult FGameplayAbilityTargetDataHandle
---@param Index integer
---@return boolean
function UAbilitySystemBlueprintLibrary.TargetDataHasHitResult(HitResult, Index) end

---Returns true if the target data has an end point
---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index integer
---@return boolean
function UAbilitySystemBlueprintLibrary.TargetDataHasEndPoint(TargetData, Index) end

---Returns true if the given TargetData has at least 1 actor targeted
---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index integer
---@return boolean
function UAbilitySystemBlueprintLibrary.TargetDataHasActor(TargetData, Index) end

---Sets the GameplayEffectSpec's StackCount to the max stack count defined in the GameplayEffect definition
---@param SpecHandle FGameplayEffectSpecHandle
---@return FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary.SetStackCountToMax(SpecHandle) end

---Sets the GameplayEffectSpec's StackCount to the specified amount (prior to applying)
---@param SpecHandle FGameplayEffectSpecHandle
---@param StackCount integer
---@return FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary.SetStackCount(SpecHandle, StackCount) end

---Manually sets the duration on a specific effect
---@param SpecHandle FGameplayEffectSpecHandle
---@param Duration number
---@return FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary.SetDuration(SpecHandle, Duration) end

---This function can be used to trigger an ability on the actor in question with useful payload data.
---@param Actor AActor
---@param EventTag FGameplayTag
---@param Payload FGameplayEventData
function UAbilitySystemBlueprintLibrary.SendGameplayEventToActor(Actor, EventTag, Payload) end

---Manually removes a set of tags from a given actor, with optional replication.
---@param Actor AActor
---@param GameplayTags FGameplayTagContainer
---@param bShouldReplicate boolean @[opt] 
---@return boolean
function UAbilitySystemBlueprintLibrary.RemoveLooseGameplayTags(Actor, GameplayTags, bShouldReplicate) end

---Simple inequality operator for gameplay attributes
---@param AttributeA FGameplayAttribute
---@param AttributeB FGameplayAttribute
---@return boolean
function UAbilitySystemBlueprintLibrary.NotEqual_GameplayAttributeGameplayAttribute(AttributeA, AttributeB) end

---Inequality operator for two Gameplay Ability Spec Handles
---@param A FGameplayAbilitySpecHandle
---@param B FGameplayAbilitySpecHandle
---@return boolean
function UAbilitySystemBlueprintLibrary.NotEqual_GameplayAbilitySpecHandle(A, B) end

---Inequality operator for two Active Gameplay Effect Handles
---@param A FActiveGameplayEffectHandle
---@param B FActiveGameplayEffectHandle
---@return boolean
function UAbilitySystemBlueprintLibrary.NotEqual_ActiveGameplayEffectHandle(A, B) end

---Create a spec handle, filling out all fields
---@param InGameplayEffect UGameplayEffect
---@param InInstigator AActor
---@param InEffectCauser AActor
---@param InLevel number @[opt] 
---@return FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary.MakeSpecHandle(InGameplayEffect, InInstigator, InEffectCauser, InLevel) end

---Native make, to avoid having to deal with quantized vector types
---@param NormalizedMagnitude number
---@param RawMagnitude number
---@param EffectContext FGameplayEffectContextHandle
---@param MatchedTagName FGameplayTag
---@param OriginalTag FGameplayTag
---@param AggregatedSourceTags FGameplayTagContainer
---@param AggregatedTargetTags FGameplayTagContainer
---@param Location FVector
---@param Normal FVector
---@param Instigator AActor
---@param EffectCauser AActor
---@param SourceObject UObject
---@param PhysicalMaterial UPhysicalMaterial
---@param GameplayEffectLevel integer
---@param AbilityLevel integer
---@param TargetAttachComponent USceneComponent
---@param bReplicateLocationWhenUsingMinimalRepProxy boolean
---@return FGameplayCueParameters
function UAbilitySystemBlueprintLibrary.MakeGameplayCueParameters(NormalizedMagnitude, RawMagnitude, EffectContext, MatchedTagName, OriginalTag, AggregatedSourceTags, AggregatedTargetTags, Location, Normal, Instigator, EffectCauser, SourceObject, PhysicalMaterial, GameplayEffectLevel, AbilityLevel, TargetAttachComponent, bReplicateLocationWhenUsingMinimalRepProxy) end

---Create a handle for filtering target data, filling out all fields
---@param Filter FGameplayTargetDataFilter
---@param FilterActor AActor
---@return FGameplayTargetDataFilterHandle
function UAbilitySystemBlueprintLibrary.MakeFilterHandle(Filter, FilterActor) end

---Returns true if the attribute actually exists
---@param Attribute FGameplayAttribute
---@return boolean
function UAbilitySystemBlueprintLibrary.IsValid(Attribute) end

---Returns true if the ability system component that spawned this cue is locally controlled and a player
---@param Parameters FGameplayCueParameters
---@return boolean
function UAbilitySystemBlueprintLibrary.IsInstigatorLocallyControlledPlayer(Parameters) end

---Returns true if the ability system component that spawned this cue is locally controlled
---@param Parameters FGameplayCueParameters
---@return boolean
function UAbilitySystemBlueprintLibrary.IsInstigatorLocallyControlled(Parameters) end

---Checks if the effect context has a hit reslt stored inside
---@param Parameters FGameplayCueParameters
---@return boolean
function UAbilitySystemBlueprintLibrary.HasHitResult(Parameters) end

---Returns the origin for a given index if it exists
---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index integer
---@return FTransform
function UAbilitySystemBlueprintLibrary.GetTargetDataOrigin(TargetData, Index) end

---Returns the end point transform for a given index if it exists
---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index integer
---@return FTransform
function UAbilitySystemBlueprintLibrary.GetTargetDataEndPointTransform(TargetData, Index) end

---Returns the end point for a given index if it exists
---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index integer
---@return FVector
function UAbilitySystemBlueprintLibrary.GetTargetDataEndPoint(TargetData, Index) end

---Gets instigating world location
---@param Parameters FGameplayCueParameters
---@return FVector
function UAbilitySystemBlueprintLibrary.GetOrigin(Parameters) end

---Gets the magnitude of change for an attribute on an APPLIED GameplayEffectSpec.
---@param SpecHandle FGameplayEffectSpecHandle
---@param Attribute FGameplayAttribute
---@return number
function UAbilitySystemBlueprintLibrary.GetModifiedAttributeMagnitude(SpecHandle, Attribute) end

---Gets instigating world location
---@param Parameters FGameplayCueParameters
---@return FTransform
function UAbilitySystemBlueprintLibrary.GetInstigatorTransform(Parameters) end

---Gets the instigating actor (that holds the ability system component) of the GameplayCue
---@param Parameters FGameplayCueParameters
---@return AActor
function UAbilitySystemBlueprintLibrary.GetInstigatorActor(Parameters) end

---Returns the hit result for a given index if it exists
---@param HitResult FGameplayAbilityTargetDataHandle
---@param Index integer
---@return FHitResult
function UAbilitySystemBlueprintLibrary.GetHitResultFromTargetData(HitResult, Index) end

---Returns a hit result stored in the effect context if valid
---@param Parameters FGameplayCueParameters
---@return FHitResult
function UAbilitySystemBlueprintLibrary.GetHitResult(Parameters) end

---Returns the UI data for a gameplay effect class (if any)
---@param EffectClass TSubclassOf_UGameplayEffect_
---@param DataType TSubclassOf_UGameplayEffectUIData_
---@return UGameplayEffectUIData
function UAbilitySystemBlueprintLibrary.GetGameplayEffectUIData(EffectClass, DataType) end

---Returns all tags that the Gameplay Effect grants to the target Actor
---@param EffectClass TSubclassOf_UGameplayEffect_
---@return FGameplayTagContainer
function UAbilitySystemBlueprintLibrary.GetGameplayEffectGrantedTags(EffectClass) end

---Returns the Gameplay Effect CDO from an active handle.
---This reference should be considered read only,
---but you can use it to read additional Gameplay Effect info, such as icon, description, etc.
---@param ActiveHandle FActiveGameplayEffectHandle
---@return UGameplayEffect
function UAbilitySystemBlueprintLibrary.GetGameplayEffectFromActiveEffectHandle(ActiveHandle) end

---Returns all tags that the Gameplay Effect *has* (that denote the GE Asset itself) and *does not* grant to any Actor.
---@param EffectClass TSubclassOf_UGameplayEffect_
---@return FGameplayTagContainer
function UAbilitySystemBlueprintLibrary.GetGameplayEffectAssetTags(EffectClass) end

---Gets the best end location and normal for this gameplay cue. If there is hit result data, it will return this. Otherwise it will return the target actor's location/rotation. If none of this is available, it will return false.
---@param TargetActor AActor
---@param Parameters FGameplayCueParameters
---@param Location FVector @[out] 
---@param Normal FVector @[out] 
---@return boolean
function UAbilitySystemBlueprintLibrary.GetGameplayCueEndLocationAndNormal(TargetActor, Parameters, Location, Normal) end

---Gets the best normalized effect direction for this gameplay cue. This is useful for effects that require the direction of an enemy attack. Returns true if a valid direction could be calculated.
---@param TargetActor AActor
---@param Parameters FGameplayCueParameters
---@param Direction FVector @[out] 
---@return boolean
function UAbilitySystemBlueprintLibrary.GetGameplayCueDirection(TargetActor, Parameters, Direction) end

---Provides the Gameplay Ability object associated with an Ability Spec Handle
---This can be either an instanced ability, or in the case of shared abilities, the Class Default Object
---@param AbilitySystem UAbilitySystemComponent
---@param AbilitySpecHandle FGameplayAbilitySpecHandle
---@param bIsInstance boolean @[out] 
---@return UGameplayAbility
function UAbilitySystemBlueprintLibrary.GetGameplayAbilityFromSpecHandle(AbilitySystem, AbilitySpecHandle, bIsInstance) end

---Returns the value of Attribute from the ability system component AbilitySystem.
---@param AbilitySystem UAbilitySystemComponent
---@param Attribute FGameplayAttribute
---@param bSuccessfullyFoundAttribute boolean @[out] 
---@return number
function UAbilitySystemBlueprintLibrary.GetFloatAttributeFromAbilitySystemComponent(AbilitySystem, Attribute, bSuccessfullyFoundAttribute) end

---Returns the base value of Attribute from the ability system component AbilitySystemComponent.
---@param AbilitySystemComponent UAbilitySystemComponent
---@param Attribute FGameplayAttribute
---@param bSuccessfullyFoundAttribute boolean @[out] 
---@return number
function UAbilitySystemBlueprintLibrary.GetFloatAttributeBaseFromAbilitySystemComponent(AbilitySystemComponent, Attribute, bSuccessfullyFoundAttribute) end

---Returns the base value of Attribute from the ability system component belonging to Actor.
---@param Actor AActor
---@param Attribute FGameplayAttribute
---@param bSuccessfullyFoundAttribute boolean @[out] 
---@return number
function UAbilitySystemBlueprintLibrary.GetFloatAttributeBase(Actor, Attribute, bSuccessfullyFoundAttribute) end

---Returns the value of Attribute from the ability system component belonging to Actor.
---@param Actor AActor
---@param Attribute FGameplayAttribute
---@param bSuccessfullyFoundAttribute boolean @[out] 
---@return number
function UAbilitySystemBlueprintLibrary.GetFloatAttribute(Actor, Attribute, bSuccessfullyFoundAttribute) end

---Gets the GameplayEffectSpec's effect context handle
---@param SpecHandle FGameplayEffectSpecHandle
---@return FGameplayEffectContextHandle
function UAbilitySystemBlueprintLibrary.GetEffectContext(SpecHandle) end

---Returns FString representation of a gameplay attribute's set class and name, in the form of AttrSetName.AttrName (or just AttrName if not part of a set).
---@param Attribute FGameplayAttribute
---@return string
function UAbilitySystemBlueprintLibrary.GetDebugStringFromGameplayAttribute(Attribute) end

---Returns number of target data objects, not necessarily number of distinct targets
---@param TargetData FGameplayAbilityTargetDataHandle
---@return integer
function UAbilitySystemBlueprintLibrary.GetDataCountFromTargetData(TargetData) end

---@param SpecHandle FGameplayEffectSpecHandle
---@return TArray_FGameplayEffectSpecHandle_
function UAbilitySystemBlueprintLibrary.GetAllLinkedGameplayEffectSpecHandles(SpecHandle) end

---Returns all actors targeted
---@param TargetData FGameplayAbilityTargetDataHandle
---@return TArray_AActor_
function UAbilitySystemBlueprintLibrary.GetAllActorsFromTargetData(TargetData) end

---Returns all actors targeted, for a given index
---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index integer
---@return TArray_AActor_
function UAbilitySystemBlueprintLibrary.GetActorsFromTargetData(TargetData, Index) end

---Returns number of actors stored in the Effect Context used by this cue
---@param Parameters FGameplayCueParameters
---@return integer
function UAbilitySystemBlueprintLibrary.GetActorCount(Parameters) end

---Returns actor stored in the Effect Context used by this cue
---@param Parameters FGameplayCueParameters
---@param Index integer
---@return AActor
function UAbilitySystemBlueprintLibrary.GetActorByIndex(Parameters, Index) end

---Returns the total duration for a given GameplayEffect
---@param ActiveHandle FActiveGameplayEffectHandle
---@return number
function UAbilitySystemBlueprintLibrary.GetActiveGameplayEffectTotalDuration(ActiveHandle) end

---Returns the start time (time which the GE was added) for a given GameplayEffect
---@param ActiveHandle FActiveGameplayEffectHandle
---@return number
function UAbilitySystemBlueprintLibrary.GetActiveGameplayEffectStartTime(ActiveHandle) end

---Returns stack limit count of an active Gameplay Effect. Will return 0 if the GameplayEffect is no longer valid.
---@param ActiveHandle FActiveGameplayEffectHandle
---@return integer
function UAbilitySystemBlueprintLibrary.GetActiveGameplayEffectStackLimitCount(ActiveHandle) end

---Returns current stack count of an active Gameplay Effect. Will return 0 if the GameplayEffect is no longer valid.
---@param ActiveHandle FActiveGameplayEffectHandle
---@return integer
function UAbilitySystemBlueprintLibrary.GetActiveGameplayEffectStackCount(ActiveHandle) end

---Returns the total duration for a given GameplayEffect, basically ExpectedEndTime - Current Time
---@param WorldContextObject UObject
---@param ActiveHandle FActiveGameplayEffectHandle
---@return number
function UAbilitySystemBlueprintLibrary.GetActiveGameplayEffectRemainingDuration(WorldContextObject, ActiveHandle) end

---Returns the expected end time (when we think the GE will expire) for a given GameplayEffect (note someone could remove or change it before that happens!)
---@param ActiveHandle FActiveGameplayEffectHandle
---@return number
function UAbilitySystemBlueprintLibrary.GetActiveGameplayEffectExpectedEndTime(ActiveHandle) end

---Returns a debug string for display
---@param ActiveHandle FActiveGameplayEffectHandle
---@return string
function UAbilitySystemBlueprintLibrary.GetActiveGameplayEffectDebugString(ActiveHandle) end

---Tries to find an ability system component on the actor, will use AbilitySystemInterface or fall back to a component search
---@param Actor AActor
---@return UAbilitySystemComponent
function UAbilitySystemBlueprintLibrary.GetAbilitySystemComponent(Actor) end

---Forwards the gameplay cue to another gameplay cue interface object
---@param TargetCueInterface TScriptInterface_UGameplayCueInterface_
---@param EventType integer
---@param Parameters FGameplayCueParameters
function UAbilitySystemBlueprintLibrary.ForwardGameplayCueToTarget(TargetCueInterface, EventType, Parameters) end

---Create a new target data handle with filtration performed on the data
---@param TargetDataHandle FGameplayAbilityTargetDataHandle
---@param ActorFilterClass FGameplayTargetDataFilterHandle
---@return FGameplayAbilityTargetDataHandle
function UAbilitySystemBlueprintLibrary.FilterTargetData(TargetDataHandle, ActorFilterClass) end

---Returns the value of Attribute from the ability system component AbilitySystem after evaluating it with source and target tags using the passed in base value instead of the real base value. bSuccess indicates the success or failure of this operation.
---@param AbilitySystem UAbilitySystemComponent
---@param Attribute FGameplayAttribute
---@param SourceTags FGameplayTagContainer
---@param TargetTags FGameplayTagContainer
---@param BaseValue number
---@param bSuccess boolean @[out] 
---@return number
function UAbilitySystemBlueprintLibrary.EvaluateAttributeValueWithTagsAndBase(AbilitySystem, Attribute, SourceTags, TargetTags, BaseValue, bSuccess) end

---Returns the value of Attribute from the ability system component AbilitySystem after evaluating it with source and target tags. bSuccess indicates the success or failure of this operation.
---@param AbilitySystem UAbilitySystemComponent
---@param Attribute FGameplayAttribute
---@param SourceTags FGameplayTagContainer
---@param TargetTags FGameplayTagContainer
---@param bSuccess boolean @[out] 
---@return number
function UAbilitySystemBlueprintLibrary.EvaluateAttributeValueWithTags(AbilitySystem, Attribute, SourceTags, TargetTags, bSuccess) end

---Simple equality operator for gameplay attributes
---@param AttributeA FGameplayAttribute
---@param AttributeB FGameplayAttribute
---@return boolean
function UAbilitySystemBlueprintLibrary.EqualEqual_GameplayAttributeGameplayAttribute(AttributeA, AttributeB) end

---Equality operator for two Gameplay Ability Spec Handles
---@param A FGameplayAbilitySpecHandle
---@param B FGameplayAbilitySpecHandle
---@return boolean
function UAbilitySystemBlueprintLibrary.EqualEqual_GameplayAbilitySpecHandle(A, B) end

---Equality operator for two Active Gameplay Effect Handles
---@param A FActiveGameplayEffectHandle
---@param B FActiveGameplayEffectHandle
---@return boolean
function UAbilitySystemBlueprintLibrary.EqualEqual_ActiveGameplayEffectHandle(A, B) end

---Sets the location the effect originated from
---@param EffectContext FGameplayEffectContextHandle
---@param Origin FVector
function UAbilitySystemBlueprintLibrary.EffectContextSetOrigin(EffectContext, Origin) end

---Returns true if this context has ever been initialized
---@param EffectContext FGameplayEffectContextHandle
---@return boolean
function UAbilitySystemBlueprintLibrary.EffectContextIsValid(EffectContext) end

---Returns true if the ability system component that instigated this is locally controlled
---@param EffectContext FGameplayEffectContextHandle
---@return boolean
function UAbilitySystemBlueprintLibrary.EffectContextIsInstigatorLocallyControlled(EffectContext) end

---Returns true if there is a valid hit result inside the effect context
---@param EffectContext FGameplayEffectContextHandle
---@return boolean
function UAbilitySystemBlueprintLibrary.EffectContextHasHitResult(EffectContext) end

---Gets the source object of the effect.
---@param EffectContext FGameplayEffectContextHandle
---@return UObject
function UAbilitySystemBlueprintLibrary.EffectContextGetSourceObject(EffectContext) end

---Gets the original instigator actor that started the chain of events to cause this effect
---@param EffectContext FGameplayEffectContextHandle
---@return AActor
function UAbilitySystemBlueprintLibrary.EffectContextGetOriginalInstigatorActor(EffectContext) end

---Gets the location the effect originated from
---@param EffectContext FGameplayEffectContextHandle
---@return FVector
function UAbilitySystemBlueprintLibrary.EffectContextGetOrigin(EffectContext) end

---Gets the instigating actor (that holds the ability system component) of the EffectContext
---@param EffectContext FGameplayEffectContextHandle
---@return AActor
function UAbilitySystemBlueprintLibrary.EffectContextGetInstigatorActor(EffectContext) end

---Extracts a hit result from the effect context if it is set
---@param EffectContext FGameplayEffectContextHandle
---@return FHitResult
function UAbilitySystemBlueprintLibrary.EffectContextGetHitResult(EffectContext) end

---Gets the physical actor that caused the effect, possibly a projectile or weapon
---@param EffectContext FGameplayEffectContextHandle
---@return AActor
function UAbilitySystemBlueprintLibrary.EffectContextGetEffectCauser(EffectContext) end

---Adds a hit result to the effect context
---@param EffectContext FGameplayEffectContextHandle
---@param HitResult FHitResult
---@param bReset boolean
function UAbilitySystemBlueprintLibrary.EffectContextAddHitResult(EffectContext, HitResult, bReset) end

---Returns true if the given TargetData has the actor passed in targeted
---@param TargetData FGameplayAbilityTargetDataHandle
---@param Index integer
---@param Actor AActor
---@return boolean
function UAbilitySystemBlueprintLibrary.DoesTargetDataContainActor(TargetData, Index, Actor) end

---Returns true if the aggregated source and target tags from the effect spec meets the tag requirements
---@param Parameters FGameplayCueParameters
---@param SourceTagReqs FGameplayTagRequirements
---@param TargetTagReqs FGameplayTagRequirements
---@return boolean
function UAbilitySystemBlueprintLibrary.DoesGameplayCueMeetTagRequirements(Parameters, SourceTagReqs, TargetTagReqs) end

---Create a spec handle, cloning another
---@param InNewInstigator AActor
---@param InEffectCauser AActor
---@param GameplayEffectSpecHandle_Clone FGameplayEffectSpecHandle
---@return FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary.CloneSpecHandle(InNewInstigator, InEffectCauser, GameplayEffectSpecHandle_Clone) end

---Native break, to avoid having to deal with quantized vector types
---@param Parameters FGameplayCueParameters
---@param NormalizedMagnitude number @[out] 
---@param RawMagnitude number @[out] 
---@param EffectContext FGameplayEffectContextHandle @[out] 
---@param MatchedTagName FGameplayTag @[out] 
---@param OriginalTag FGameplayTag @[out] 
---@param AggregatedSourceTags FGameplayTagContainer @[out] 
---@param AggregatedTargetTags FGameplayTagContainer @[out] 
---@param Location FVector @[out] 
---@param Normal FVector @[out] 
---@param Instigator AActor @[out] 
---@param EffectCauser AActor @[out] 
---@param SourceObject UObject @[out] 
---@param PhysicalMaterial UPhysicalMaterial @[out] 
---@param GameplayEffectLevel integer @[out] 
---@param AbilityLevel integer @[out] 
---@param TargetAttachComponent USceneComponent @[out] 
---@param bReplicateLocationWhenUsingMinimalRepProxy boolean @[out] 
function UAbilitySystemBlueprintLibrary.BreakGameplayCueParameters(Parameters, NormalizedMagnitude, RawMagnitude, EffectContext, MatchedTagName, OriginalTag, AggregatedSourceTags, AggregatedTargetTags, Location, Normal, Instigator, EffectCauser, SourceObject, PhysicalMaterial, GameplayEffectLevel, AbilityLevel, TargetAttachComponent, bReplicateLocationWhenUsingMinimalRepProxy) end

---Sets a gameplay tag Set By Caller magnitude value
---@param SpecHandle FGameplayEffectSpecHandle
---@param DataTag FGameplayTag
---@param Magnitude number
---@return FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary.AssignTagSetByCallerMagnitude(SpecHandle, DataTag, Magnitude) end

---Sets a raw name Set By Caller magnitude value, the tag version should normally be used
---@param SpecHandle FGameplayEffectSpecHandle
---@param DataName string
---@param Magnitude number
---@return FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary.AssignSetByCallerMagnitude(SpecHandle, DataName, Magnitude) end

---Copies targets from HandleToAdd to TargetHandle
---@param TargetHandle FGameplayAbilityTargetDataHandle
---@param HandleToAdd FGameplayAbilityTargetDataHandle
---@return FGameplayAbilityTargetDataHandle
function UAbilitySystemBlueprintLibrary.AppendTargetDataHandle(TargetHandle, HandleToAdd) end

---Manually adds a set of tags to a given actor, and optionally replicates them.
---@param Actor AActor
---@param GameplayTags FGameplayTagContainer
---@param bShouldReplicate boolean @[opt] 
---@return boolean
function UAbilitySystemBlueprintLibrary.AddLooseGameplayTags(Actor, GameplayTags, bShouldReplicate) end

---@param SpecHandle FGameplayEffectSpecHandle
---@param LinkedGameplayEffectSpec FGameplayEffectSpecHandle
---@return FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary.AddLinkedGameplayEffectSpec(SpecHandle, LinkedGameplayEffectSpec) end

---@param SpecHandle FGameplayEffectSpecHandle
---@param LinkedGameplayEffect TSubclassOf_UGameplayEffect_
---@return FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary.AddLinkedGameplayEffect(SpecHandle, LinkedGameplayEffect) end

---This instance of the effect will now grant NewGameplayTags to the object that this effect is applied to
---@param SpecHandle FGameplayEffectSpecHandle
---@param NewGameplayTags FGameplayTagContainer
---@return FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary.AddGrantedTags(SpecHandle, NewGameplayTags) end

---This instance of the effect will now grant NewGameplayTag to the object that this effect is applied to
---@param SpecHandle FGameplayEffectSpecHandle
---@param NewGameplayTag FGameplayTag
---@return FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary.AddGrantedTag(SpecHandle, NewGameplayTag) end

---Adds NewGameplayTags to this instance of the effect
---@param SpecHandle FGameplayEffectSpecHandle
---@param NewGameplayTags FGameplayTagContainer
---@return FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary.AddAssetTags(SpecHandle, NewGameplayTags) end

---Adds NewGameplayTag to this instance of the effect
---@param SpecHandle FGameplayEffectSpecHandle
---@param NewGameplayTag FGameplayTag
---@return FGameplayEffectSpecHandle
function UAbilitySystemBlueprintLibrary.AddAssetTag(SpecHandle, NewGameplayTag) end

---Creates a target data with a source and destination location
---@param SourceLocation FGameplayAbilityTargetingLocationInfo
---@param TargetLocation FGameplayAbilityTargetingLocationInfo
---@return FGameplayAbilityTargetDataHandle
function UAbilitySystemBlueprintLibrary.AbilityTargetDataFromLocations(SourceLocation, TargetLocation) end

---Creates a target data with a single hit result
---@param HitResult FHitResult
---@return FGameplayAbilityTargetDataHandle
function UAbilitySystemBlueprintLibrary.AbilityTargetDataFromHitResult(HitResult) end

---Creates actor array target data
---@param ActorArray TArray_AActor_
---@param OneTargetPerHandle boolean
---@return FGameplayAbilityTargetDataHandle
function UAbilitySystemBlueprintLibrary.AbilityTargetDataFromActorArray(ActorArray, OneTargetPerHandle) end

---Creates single actor target data
---@param Actor AActor
---@return FGameplayAbilityTargetDataHandle
function UAbilitySystemBlueprintLibrary.AbilityTargetDataFromActor(Actor) end

