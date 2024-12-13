---RadialFalloff Field Dataflow node
---@class FRadialFalloffFieldDataflowNode : FDataflowNode
---@field public SamplePositions TArray<FVector3f>
---@field public SampleIndices FDataflowVertexSelection
---@field public Sphere FSphere
---@field public Translation FVector
---@field public Magnitude number
---@field public MinRange number
---@field public MaxRange number
---@field public Default number
---@field public FalloffType EDataflowFieldFalloffType
---@field public FieldFloatResult TArray<number>
---@field public FieldRemap TArray<integer>
---@field public FieldSelectionMask FDataflowVertexSelection
---@field public NumSamplePositions integer
local FRadialFalloffFieldDataflowNode = {}