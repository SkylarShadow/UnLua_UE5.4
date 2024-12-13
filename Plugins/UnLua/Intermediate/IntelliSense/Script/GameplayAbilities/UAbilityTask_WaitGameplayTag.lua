---@class UAbilityTask_WaitGameplayTag : UAbilityTask
---@field protected OptionalExternalTarget UAbilitySystemComponent
local UAbilityTask_WaitGameplayTag = {}

---@param Tag FGameplayTag
---@param NewCount integer
function UAbilityTask_WaitGameplayTag:GameplayTagCallback(Tag, NewCount) end

