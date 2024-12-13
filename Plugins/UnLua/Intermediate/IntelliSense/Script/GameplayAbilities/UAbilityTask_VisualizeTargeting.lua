---@class UAbilityTask_VisualizeTargeting : UAbilityTask
---@field public TimeElapsed MulticastDelegate
local UAbilityTask_VisualizeTargeting = {}

---Visualize target using a specified target actor.
---@param OwningAbility UGameplayAbility
---@param TargetActor AGameplayAbilityTargetActor
---@param TaskInstanceName string
---@param Duration number @[opt] 
---@return UAbilityTask_VisualizeTargeting
function UAbilityTask_VisualizeTargeting.VisualizeTargetingUsingActor(OwningAbility, TargetActor, TaskInstanceName, Duration) end

---Spawns target actor and uses it for visualization.
---@param OwningAbility UGameplayAbility
---@param Class TSubclassOf_AGameplayAbilityTargetActor_
---@param TaskInstanceName string
---@param Duration number @[opt] 
---@return UAbilityTask_VisualizeTargeting
function UAbilityTask_VisualizeTargeting.VisualizeTargeting(OwningAbility, Class, TaskInstanceName, Duration) end

---@param OwningAbility UGameplayAbility
---@param SpawnedActor AGameplayAbilityTargetActor
function UAbilityTask_VisualizeTargeting:FinishSpawningActor(OwningAbility, SpawnedActor) end

---@param OwningAbility UGameplayAbility
---@param Class TSubclassOf_AGameplayAbilityTargetActor_
---@param SpawnedActor AGameplayAbilityTargetActor @[out] 
---@return boolean
function UAbilityTask_VisualizeTargeting:BeginSpawningActor(OwningAbility, Class, SpawnedActor) end

