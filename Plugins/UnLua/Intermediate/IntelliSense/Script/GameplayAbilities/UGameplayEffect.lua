---UGameplayEffect
---    The GameplayEffect definition. This is the data asset defined in the editor that drives everything.
--- This is only blueprintable to allow for templating gameplay effects. Gameplay effects should NOT contain blueprint graphs.
---@class UGameplayEffect : UObject
---@field public DurationPolicy EGameplayEffectDurationType @Policy for the duration of this effect
---@field public DurationMagnitude FGameplayEffectModifierMagnitude @Duration in seconds. 0.0 for instantaneous effects; -1.0 for infinite duration.
---@field public Period FScalableFloat @Period in seconds. 0.0 for non-periodic effects
---@field public bExecutePeriodicEffectOnApplication boolean @If true, the effect executes on application and then at every period interval. If false, no execution occurs until the first period elapses. // EditCondition in FGameplayEffectDetails
---@field public PeriodicInhibitionPolicy EGameplayEffectPeriodInhibitionRemovedPolicy @How we should respond when a periodic gameplay effect is no longer inhibited // EditCondition in FGameplayEffectDetails
---@field public Modifiers TArray<FGameplayModifierInfo> @Array of modifiers that will affect the target of this effect
---@field public Executions TArray<FGameplayEffectExecutionDefinition> @Array of executions that will affect the target of this effect
---@field public ConditionalGameplayEffects TArray<FConditionalGameplayEffect>
---@field public OverflowEffects TArray<TSubclassOf<UGameplayEffect>> @Effects to apply when a stacking effect "overflows" its stack count through another attempted application. Added whether the overflow application succeeds or not.
---@field public bDenyOverflowApplication boolean @If true, stacking attempts made while at the stack count will fail, resulting in the duration and context not being refreshed
---@field public bClearStackOnOverflow boolean @If true, the entire stack of the effect will be cleared once it overflows
---@field public PrematureExpirationEffectClasses TArray<TSubclassOf<UGameplayEffect>>
---@field public RoutineExpirationEffectClasses TArray<TSubclassOf<UGameplayEffect>>
---@field public bRequireModifierSuccessToTriggerCues boolean @If true, cues will only trigger when GE modifiers succeed being applied (whether through modifiers or executions)
---@field public bSuppressStackingCues boolean @If true, GameplayCues will only be triggered for the first instance in a stacking GameplayEffect.
---@field public GameplayCues TArray<FGameplayEffectCue> @Cues to trigger non-simulated reactions in response to this GameplayEffect such as sounds, particle effects, etc
---@field public UIData UGameplayEffectUIData
---@field public InheritableGameplayEffectTags FInheritedTagContainer
---@field public InheritableOwnedTagsContainer FInheritedTagContainer
---@field public InheritableBlockedAbilityTagsContainer FInheritedTagContainer
---@field public OngoingTagRequirements FGameplayTagRequirements
---@field public ApplicationTagRequirements FGameplayTagRequirements
---@field public RemovalTagRequirements FGameplayTagRequirements
---@field public RemoveGameplayEffectsWithTags FInheritedTagContainer
---@field public GrantedApplicationImmunityTags FGameplayTagRequirements
---@field public GrantedApplicationImmunityQuery FGameplayEffectQuery
---@field public RemoveGameplayEffectQuery FGameplayEffectQuery
---@field public StackingType EGameplayEffectStackingType @How this GameplayEffect stacks with other instances of this same GameplayEffect
---@field public StackLimitCount integer @Stack limit for StackingType
---@field public StackDurationRefreshPolicy EGameplayEffectStackingDurationPolicy @Policy for how the effect duration should be refreshed while stacking
---@field public StackPeriodResetPolicy EGameplayEffectStackingPeriodPolicy @Policy for how the effect period should be reset (or not) while stacking
---@field public StackExpirationPolicy EGameplayEffectStackingExpirationPolicy @Policy for how to handle duration expiring on this gameplay effect
---@field public GrantedAbilities TArray<FGameplayAbilitySpecDef>
---@field protected GEComponents TArray<UGameplayEffectComponent> @These Gameplay Effect Components define how this Gameplay Effect behaves when applied
---@field protected EditorStatusText string @Allow us to show the Status of the class (valid configurations or invalid configurations) while configuring in the Editor
---@field private DataVersion FGameplayEffectVersion @The saved version of this package (the value is not inherited from its parents). @@see SetVersion and GetVersion.
local UGameplayEffect = {}

---Check if the asset has a gameplay tag that matches against the specified tag (expands to include parents of asset tags)
---@param TagToCheck FGameplayTag
---@return boolean
function UGameplayEffect:HasMatchingGameplayTag(TagToCheck) end

---Check if the asset has gameplay tags that matches against any of the specified tags (expands to include parents of asset tags)
---@param TagContainer FGameplayTagContainer
---@return boolean
function UGameplayEffect:HasAnyMatchingGameplayTags(TagContainer) end

---Check if the asset has gameplay tags that matches against all of the specified tags (expands to include parents of asset tags)
---@param TagContainer FGameplayTagContainer
---@return boolean
function UGameplayEffect:HasAllMatchingGameplayTags(TagContainer) end

---Get any owned gameplay tags on the asset
---@param TagContainer FGameplayTagContainer @[out] 
function UGameplayEffect:GetOwnedGameplayTags(TagContainer) end

