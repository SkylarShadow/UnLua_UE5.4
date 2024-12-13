---Data structure that stores an instigator and related data, such as positions and targets
---Games can subclass this structure and add game-specific information
---It is passed throughout effect execution so it is a great place to track transient information about an execution
---@class FGameplayEffectContext
---@field protected Instigator TWeakObjectPtr<AActor> @Instigator actor, the actor that owns the ability system component
---@field protected EffectCauser TWeakObjectPtr<AActor> @The physical actor that actually did the damage, can be a weapon or projectile
---@field protected AbilityCDO TWeakObjectPtr<UGameplayAbility> @The ability CDO that is responsible for this effect context (replicated)
---@field protected AbilityInstanceNotReplicated TWeakObjectPtr<UGameplayAbility> @The ability instance that is responsible for this effect context (NOT replicated)
---@field protected AbilityLevel integer @The level this was executed at
---@field protected SourceObject TWeakObjectPtr<UObject> @Object this effect was created from, can be an actor or static object. Useful to bind an effect to a gameplay object
---@field protected InstigatorAbilitySystemComponent TWeakObjectPtr<UAbilitySystemComponent> @The ability system component that's bound to instigator
---@field protected Actors TArray<TWeakObjectPtr<AActor>> @Actors referenced by this context
---@field protected WorldOrigin FVector @Stored origin, may be invalid if bHasWorldOrigin is false
---@field protected bHasWorldOrigin boolean
---@field protected bReplicateSourceObject boolean @True if the SourceObject can be replicated. This bool is not replicated itself.
---@field protected bReplicateInstigator boolean @True if the Instigator can be replicated. This bool is not replicated itself.
---@field protected bReplicateEffectCauser boolean @True if the Instigator can be replicated. This bool is not replicated itself.
local FGameplayEffectContext = {}