---Structure to encapsulate magnitudes that are calculated via custom calculation
---@class FCustomCalculationBasedFloat
---@field public CalculationClassMagnitude TSubclassOf<UGameplayModMagnitudeCalculation>
---@field public Coefficient FScalableFloat @Coefficient to the custom calculation
---@field public PreMultiplyAdditiveValue FScalableFloat @Additive value to the attribute calculation, added in before the coefficient applies
---@field public PostMultiplyAdditiveValue FScalableFloat @Additive value to the attribute calculation, added in after the coefficient applies
---@field public FinalLookupCurve FCurveTableRowHandle @If a curve table entry is specified, the OUTPUT of this custom class magnitude (including the pre and post additive values) lookup into the curve instead of using the attribute directly.
local FCustomCalculationBasedFloat = {}
