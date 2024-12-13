---This action listens for specific gameplay effect applications based off specified tags.
---Effects themselves are not replicated; rather the tags they grant, the attributes they
---change, and the gameplay cues they emit are replicated.
---This will only listen for local server or predicted client effects.
---@class UAbilityAsync_WaitGameplayEffectApplied : UAbilityAsync
---@field public OnApplied MulticastDelegate
local UAbilityAsync_WaitGameplayEffectApplied = {}

---Wait until a GameplayEffect is applied to a target actor
---If TriggerOnce is true, this action will only activate one time. Otherwise it will return every time a GE is applied that meets the requirements over the life of the ability
---If used in an ability graph, this async action will wait even after activation ends. It's recommended to use WaitGameplayEffectApplied instead.
---@param TargetActor AActor
---@param SourceFilter FGameplayTargetDataFilterHandle
---@param SourceTagRequirements FGameplayTagRequirements
---@param TargetTagRequirements FGameplayTagRequirements
---@param TriggerOnce boolean @[opt] 
---@param ListenForPeriodicEffect boolean @[opt] 
---@return UAbilityAsync_WaitGameplayEffectApplied
function UAbilityAsync_WaitGameplayEffectApplied.WaitGameplayEffectAppliedToActor(TargetActor, SourceFilter, SourceTagRequirements, TargetTagRequirements, TriggerOnce, ListenForPeriodicEffect) end

---@param Source AActor
---@param SpecHandle FGameplayEffectSpecHandle
---@param ActiveHandle FActiveGameplayEffectHandle
function UAbilityAsync_WaitGameplayEffectApplied:OnAppliedDelegate__DelegateSignature(Source, SpecHandle, ActiveHandle) end

