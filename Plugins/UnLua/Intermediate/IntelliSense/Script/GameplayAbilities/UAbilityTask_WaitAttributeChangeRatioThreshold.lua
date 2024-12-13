---Waits for the ratio between two attributes to match a threshold
---@class UAbilityTask_WaitAttributeChangeRatioThreshold : UAbilityTask
---@field public OnChange MulticastDelegate
---@field protected ExternalOwner UAbilitySystemComponent
local UAbilityTask_WaitAttributeChangeRatioThreshold = {}

---Wait on attribute ratio change meeting a comparison threshold.
---@param OwningAbility UGameplayAbility
---@param AttributeNumerator FGameplayAttribute
---@param AttributeDenominator FGameplayAttribute
---@param ComparisonType integer
---@param ComparisonValue number
---@param bTriggerOnce boolean
---@param OptionalExternalOwner AActor @[opt] 
---@return UAbilityTask_WaitAttributeChangeRatioThreshold
function UAbilityTask_WaitAttributeChangeRatioThreshold.WaitForAttributeChangeRatioThreshold(OwningAbility, AttributeNumerator, AttributeDenominator, ComparisonType, ComparisonValue, bTriggerOnce, OptionalExternalOwner) end

