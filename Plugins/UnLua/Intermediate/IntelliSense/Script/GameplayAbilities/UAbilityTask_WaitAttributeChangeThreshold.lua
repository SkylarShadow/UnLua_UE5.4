---Waits for an attribute to match a threshold
---@class UAbilityTask_WaitAttributeChangeThreshold : UAbilityTask
---@field public OnChange MulticastDelegate
---@field protected ExternalOwner UAbilitySystemComponent
local UAbilityTask_WaitAttributeChangeThreshold = {}

---Wait on attribute change meeting a comparison threshold.
---@param OwningAbility UGameplayAbility
---@param Attribute FGameplayAttribute
---@param ComparisonType integer
---@param ComparisonValue number
---@param bTriggerOnce boolean
---@param OptionalExternalOwner AActor @[opt] 
---@return UAbilityTask_WaitAttributeChangeThreshold
function UAbilityTask_WaitAttributeChangeThreshold.WaitForAttributeChangeThreshold(OwningAbility, Attribute, ComparisonType, ComparisonValue, bTriggerOnce, OptionalExternalOwner) end

