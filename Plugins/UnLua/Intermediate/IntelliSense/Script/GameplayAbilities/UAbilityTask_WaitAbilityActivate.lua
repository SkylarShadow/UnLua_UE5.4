---Waits for the actor to activate another ability
---@class UAbilityTask_WaitAbilityActivate : UAbilityTask
---@field public OnActivate MulticastDelegate
local UAbilityTask_WaitAbilityActivate = {}

---Wait until a new ability (of the same or different type) is activated. Only input based abilities will be counted unless IncludeTriggeredAbilities is true. Uses a tag requirements structure to filter abilities.
---@param OwningAbility UGameplayAbility
---@param TagRequirements FGameplayTagRequirements
---@param IncludeTriggeredAbilities boolean @[opt] 
---@param TriggerOnce boolean @[opt] 
---@return UAbilityTask_WaitAbilityActivate
function UAbilityTask_WaitAbilityActivate.WaitForAbilityActivateWithTagRequirements(OwningAbility, TagRequirements, IncludeTriggeredAbilities, TriggerOnce) end

---Wait until a new ability (of the same or different type) is activated. Only input based abilities will be counted unless IncludeTriggeredAbilities is true.
---@param OwningAbility UGameplayAbility
---@param Query FGameplayTagQuery
---@param IncludeTriggeredAbilities boolean @[opt] 
---@param TriggerOnce boolean @[opt] 
---@return UAbilityTask_WaitAbilityActivate
function UAbilityTask_WaitAbilityActivate.WaitForAbilityActivate_Query(OwningAbility, Query, IncludeTriggeredAbilities, TriggerOnce) end

---Wait until a new ability (of the same or different type) is activated. Only input based abilities will be counted unless IncludeTriggeredAbilities is true.
---@param OwningAbility UGameplayAbility
---@param WithTag FGameplayTag
---@param WithoutTag FGameplayTag
---@param IncludeTriggeredAbilities boolean @[opt] 
---@param TriggerOnce boolean @[opt] 
---@return UAbilityTask_WaitAbilityActivate
function UAbilityTask_WaitAbilityActivate.WaitForAbilityActivate(OwningAbility, WithTag, WithoutTag, IncludeTriggeredAbilities, TriggerOnce) end

---@param ActivatedAbility UGameplayAbility
function UAbilityTask_WaitAbilityActivate:OnAbilityActivate(ActivatedAbility) end

