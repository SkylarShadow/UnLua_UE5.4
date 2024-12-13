---This struct contains only the key data, this is only used to pass animation data from translators to factories
---@class FInterchangeCurveKey
---@field public InterpMode EInterchangeCurveInterpMode @Interpolation mode between this key and the next
---@field public TangentMode EInterchangeCurveTangentMode @Mode for tangents at this key
---@field public TangentWeightMode EInterchangeCurveTangentWeightMode @If either tangent at this key is 'weighted'
---@field public Time number @Time at this key
---@field public Value number @Value at this key
---@field public ArriveTangent number @If RCIM_Cubic, the arriving tangent at this key
---@field public ArriveTangentWeight number @If RCTWM_WeightedArrive or RCTWM_WeightedBoth, the weight of the left tangent
---@field public LeaveTangent number @If RCIM_Cubic, the leaving tangent at this key
---@field public LeaveTangentWeight number @If RCTWM_WeightedLeave or RCTWM_WeightedBoth, the weight of the right tangent
local FInterchangeCurveKey = {}