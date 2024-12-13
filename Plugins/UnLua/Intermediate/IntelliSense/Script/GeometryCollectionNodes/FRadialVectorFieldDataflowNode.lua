---RadialVector Field Dataflow node
---@class FRadialVectorFieldDataflowNode : FDataflowNode
---@field public SamplePositions TArray<FVector3f>
---@field public SampleIndices FDataflowVertexSelection
---@field public Magnitude number
---@field public Position FVector
---@field public FieldVectorResult TArray<FVector>
---@field public FieldRemap TArray<integer>
---@field public NumSamplePositions integer
local FRadialVectorFieldDataflowNode = {}