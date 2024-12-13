---Convenience task for spawning actors on the network authority. If not the net authority, we will not spawn and Success will not be called.
---The nice thing this adds is the ability to modify expose on spawn properties while also implicitly checking network role before spawning.
---Though this task doesn't do much - games can implement similiar tasks that carry out game specific rules. For example a 'SpawnProjectile'
---task that limits the available classes to the games projectile class, and that does game specific stuff on spawn (for example, determining
---firing position from a weapon attachment - logic that we don't necessarily want in ability blueprints).
---Long term we can also use this task as a sync point. If the executing client could wait execution until the server creates and replicates the
---actor down to it. We could potentially also use this to do predictive actor spawning / reconciliation.
---@class UAbilityTask_SpawnActor : UAbilityTask
---@field public Success MulticastDelegate
---@field public DidNotSpawn MulticastDelegate @Called when we can't spawn: on clients or potentially on server if they fail to spawn (rare)
local UAbilityTask_SpawnActor = {}

---Spawn new Actor on the network authority (server)
---@param OwningAbility UGameplayAbility
---@param TargetData FGameplayAbilityTargetDataHandle
---@param Class TSubclassOf_AActor_
---@return UAbilityTask_SpawnActor
function UAbilityTask_SpawnActor.SpawnActor(OwningAbility, TargetData, Class) end

---@param OwningAbility UGameplayAbility
---@param TargetData FGameplayAbilityTargetDataHandle
---@param SpawnedActor AActor
function UAbilityTask_SpawnActor:FinishSpawningActor(OwningAbility, TargetData, SpawnedActor) end

---@param OwningAbility UGameplayAbility
---@param TargetData FGameplayAbilityTargetDataHandle
---@param Class TSubclassOf_AActor_
---@param SpawnedActor AActor @[out] 
---@return boolean
function UAbilityTask_SpawnActor:BeginSpawningActor(OwningAbility, TargetData, Class, SpawnedActor) end

