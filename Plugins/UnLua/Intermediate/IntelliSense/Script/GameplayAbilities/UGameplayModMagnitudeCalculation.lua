---Class used to perform custom gameplay effect modifier calculations, either via blueprint or native code
---@class UGameplayModMagnitudeCalculation : UGameplayEffectCalculation
---@field protected bAllowNonNetAuthorityDependencyRegistration boolean @Whether the calculation allows non-net authorities to register the external dependency multi-cast delegate or not; Effectively whether clients are allowed to perform the custom calculation themselves or not                      that are utilizing network dormancy and may want to trust the client to update non-gameplay critical attributes client-side without                      causing a network dormancy flush. Usage of this flag is *NOT* compatible with attribute capture within the calculation and will trigger                      an ensure if used in tandem. Clients are incapable of performing custom calculations that require attribute captures. In general,                      if your game is not using network dormancy, this should always remain disabled.                      timing issues. As an example, binding to a delegate on a GameState is potentially unreliable, as the client reference to that actor may not be                      available during registration.
local UGameplayModMagnitudeCalculation = {}

---Gets the captured magnitude value for the given Attribute
---For this to work correctly, the Attribute needs to be added to the Relevant Attributes to Capture array
---@param EffectSpec FGameplayEffectSpec
---@param Attribute FGameplayAttribute
---@param SourceTags FGameplayTagContainer
---@param TargetTags FGameplayTagContainer
---@return number
function UGameplayModMagnitudeCalculation:K2_GetCapturedAttributeMagnitude(EffectSpec, Attribute, SourceTags, TargetTags) end

---Returns the target spec tags from a Gameplay Effect Spec
---Useful for Modifier Magnitude Calculations
---@param EffectSpec FGameplayEffectSpec
---@return FGameplayTagContainer
function UGameplayModMagnitudeCalculation:GetTargetSpecTags(EffectSpec) end

---Copies and returns the target aggregated tags from a Gameplay Effect Spec
---@param EffectSpec FGameplayEffectSpec
---@return FGameplayTagContainer
function UGameplayModMagnitudeCalculation:GetTargetAggregatedTags(EffectSpec) end

---Returns the target actor tags from a Gameplay Effect Spec
---Useful for Modifier Magnitude Calculations
---@param EffectSpec FGameplayEffectSpec
---@return FGameplayTagContainer
function UGameplayModMagnitudeCalculation:GetTargetActorTags(EffectSpec) end

---Returns the source spec tags from a Gameplay Effect Spec
---@param EffectSpec FGameplayEffectSpec
---@return FGameplayTagContainer
function UGameplayModMagnitudeCalculation:GetSourceSpecTags(EffectSpec) end

---Copies and returns the source aggregated tags from a Gameplay Effect Spec
---@param EffectSpec FGameplayEffectSpec
---@return FGameplayTagContainer
function UGameplayModMagnitudeCalculation:GetSourceAggregatedTags(EffectSpec) end

---Returns the source actor tags from a Gameplay Effect Spec
---@param EffectSpec FGameplayEffectSpec
---@return FGameplayTagContainer
function UGameplayModMagnitudeCalculation:GetSourceActorTags(EffectSpec) end

---Extracts the Set by Caller Magnitude from a Gameplay Effect Spec
---@param EffectSpec FGameplayEffectSpec
---@param Tag FGameplayTag
---@return number
function UGameplayModMagnitudeCalculation:GetSetByCallerMagnitudeByTag(EffectSpec, Tag) end

---Extracts the Set by Caller Magnitude from a Gameplay Effect Spec
---@param EffectSpec FGameplayEffectSpec
---@param MagnitudeName string
---@return number
function UGameplayModMagnitudeCalculation:GetSetByCallerMagnitudeByName(EffectSpec, MagnitudeName) end

---Calculate the base magnitude of the gameplay effect modifier, given the specified spec. Note that the owning spec def can still modify this base value
---with a coeffecient and pre/post multiply adds. see FCustomCalculationBasedFloat::CalculateMagnitude for details.
---@param Spec FGameplayEffectSpec
---@return number
function UGameplayModMagnitudeCalculation:CalculateBaseMagnitude(Spec) end

