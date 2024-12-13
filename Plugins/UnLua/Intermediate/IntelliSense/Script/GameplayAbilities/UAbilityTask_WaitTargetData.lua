---Wait for targeting actor (spawned from parameter) to provide data. Can be set not to end upon outputting data. Can be ended by task name.
---WARNING: These actors are spawned once per ability activation and in their default form are not very efficient
---For most games you will need to subclass and heavily modify this actor, or you will want to implement similar functions in a game-specific actor or blueprint to avoid actor spawn costs
---This task is not well tested by internal games, but it is a useful class to look at to learn how target replication occurs
---@class UAbilityTask_WaitTargetData : UAbilityTask
---@field public ValidData MulticastDelegate
---@field public Cancelled MulticastDelegate
---@field protected TargetClass TSubclassOf<AGameplayAbilityTargetActor>
---@field protected TargetActor AGameplayAbilityTargetActor @The TargetActor that we spawned
local UAbilityTask_WaitTargetData = {}

---Uses specified target actor and waits for it to return valid data or to be canceled.
---@param OwningAbility UGameplayAbility
---@param TaskInstanceName string
---@param ConfirmationType integer
---@param TargetActor AGameplayAbilityTargetActor
---@return UAbilityTask_WaitTargetData
function UAbilityTask_WaitTargetData.WaitTargetDataUsingActor(OwningAbility, TaskInstanceName, ConfirmationType, TargetActor) end

---Spawns target actor and waits for it to return valid data or to be canceled.
---@param OwningAbility UGameplayAbility
---@param TaskInstanceName string
---@param ConfirmationType integer
---@param Class TSubclassOf_AGameplayAbilityTargetActor_
---@return UAbilityTask_WaitTargetData
function UAbilityTask_WaitTargetData.WaitTargetData(OwningAbility, TaskInstanceName, ConfirmationType, Class) end

function UAbilityTask_WaitTargetData:OnTargetDataReplicatedCancelledCallback() end

---@param Data FGameplayAbilityTargetDataHandle
---@param ActivationTag FGameplayTag
function UAbilityTask_WaitTargetData:OnTargetDataReplicatedCallback(Data, ActivationTag) end

---@param Data FGameplayAbilityTargetDataHandle
function UAbilityTask_WaitTargetData:OnTargetDataReadyCallback(Data) end

---@param Data FGameplayAbilityTargetDataHandle
function UAbilityTask_WaitTargetData:OnTargetDataCancelledCallback(Data) end

---@param OwningAbility UGameplayAbility
---@param SpawnedActor AGameplayAbilityTargetActor
function UAbilityTask_WaitTargetData:FinishSpawningActor(OwningAbility, SpawnedActor) end

---@param OwningAbility UGameplayAbility
---@param Class TSubclassOf_AGameplayAbilityTargetActor_
---@param SpawnedActor AGameplayAbilityTargetActor @[out] 
---@return boolean
function UAbilityTask_WaitTargetData:BeginSpawningActor(OwningAbility, Class, SpawnedActor) end

