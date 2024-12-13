---Struct representing the magnitude of a gameplay effect modifier, potentially calculated in numerous different ways
---@class FGameplayEffectModifierMagnitude
---@field protected MagnitudeCalculationType EGameplayEffectMagnitudeCalculation @Type of calculation to perform to derive the magnitude
---@field protected ScalableFloatMagnitude FScalableFloat @Magnitude value represented by a scalable float
---@field protected AttributeBasedMagnitude FAttributeBasedFloat @Magnitude value represented by an attribute-based float       (Coefficient * (PreMultiplyAdditiveValue + [Eval'd Attribute Value According to Policy])) + PostMultiplyAdditiveValue
---@field protected CustomMagnitude FCustomCalculationBasedFloat @Magnitude value represented by a custom calculation class
---@field protected SetByCallerMagnitude FSetByCallerFloat @Magnitude value represented by a SetByCaller magnitude
local FGameplayEffectModifierMagnitude = {}
