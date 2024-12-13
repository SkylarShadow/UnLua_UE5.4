---@class UMaterialExpressionDesaturation : UMaterialExpression
---@field public Input FExpressionInput @Outputs: Lerp(Input,dot(Input,LuminanceFactors)),Fraction)
---@field public Fraction FExpressionInput
---@field public LuminanceFactors FLinearColor
local UMaterialExpressionDesaturation = {}

