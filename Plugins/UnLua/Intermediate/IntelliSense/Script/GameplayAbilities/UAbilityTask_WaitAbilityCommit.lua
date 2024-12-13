---Waits for the actor to activate another ability
---@class UAbilityTask_WaitAbilityCommit : UAbilityTask
---@field public OnCommit MulticastDelegate
local UAbilityTask_WaitAbilityCommit = {}

---@param OwningAbility UGameplayAbility
---@param Query FGameplayTagQuery
---@param TriggerOnce boolean @[opt] 
---@return UAbilityTask_WaitAbilityCommit
function UAbilityTask_WaitAbilityCommit.WaitForAbilityCommit_Query(OwningAbility, Query, TriggerOnce) end

---Wait until a new ability (of the same or different type) is commited.
---@param OwningAbility UGameplayAbility
---@param WithTag FGameplayTag
---@param WithoutTage FGameplayTag
---@param TriggerOnce boolean @[opt] 
---@return UAbilityTask_WaitAbilityCommit
function UAbilityTask_WaitAbilityCommit.WaitForAbilityCommit(OwningAbility, WithTag, WithoutTage, TriggerOnce) end

---@param ActivatedAbility UGameplayAbility
function UAbilityTask_WaitAbilityCommit:OnAbilityCommit(ActivatedAbility) end

