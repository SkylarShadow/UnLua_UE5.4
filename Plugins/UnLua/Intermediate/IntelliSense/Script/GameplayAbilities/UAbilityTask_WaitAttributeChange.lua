---Waits for the actor to activate another ability
---@class UAbilityTask_WaitAttributeChange : UAbilityTask
---@field public OnChange MulticastDelegate
---@field protected ExternalOwner UAbilitySystemComponent
local UAbilityTask_WaitAttributeChange = {}

---Wait until an attribute changes to pass a given test.
---@param OwningAbility UGameplayAbility
---@param InAttribute FGameplayAttribute
---@param InWithTag FGameplayTag
---@param InWithoutTag FGameplayTag
---@param InComparisonType integer
---@param InComparisonValue number
---@param TriggerOnce boolean @[opt] 
---@param OptionalExternalOwner AActor @[opt] 
---@return UAbilityTask_WaitAttributeChange
function UAbilityTask_WaitAttributeChange.WaitForAttributeChangeWithComparison(OwningAbility, InAttribute, InWithTag, InWithoutTag, InComparisonType, InComparisonValue, TriggerOnce, OptionalExternalOwner) end

---Wait until an attribute changes.
---@param OwningAbility UGameplayAbility
---@param Attribute FGameplayAttribute
---@param WithSrcTag FGameplayTag
---@param WithoutSrcTag FGameplayTag
---@param TriggerOnce boolean @[opt] 
---@param OptionalExternalOwner AActor @[opt] 
---@return UAbilityTask_WaitAttributeChange
function UAbilityTask_WaitAttributeChange.WaitForAttributeChange(OwningAbility, Attribute, WithSrcTag, WithoutSrcTag, TriggerOnce, OptionalExternalOwner) end

