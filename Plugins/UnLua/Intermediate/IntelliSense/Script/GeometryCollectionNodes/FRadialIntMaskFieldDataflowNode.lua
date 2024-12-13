---RadialIntMask Field Dataflow node
---@class FRadialIntMaskFieldDataflowNode : FDataflowNode
---@field public SamplePositions TArray<FVector3f>
---@field public SampleIndices FDataflowVertexSelection
---@field public Sphere FSphere
---@field public Translation FVector
---@field public InteriorValue integer
---@field public ExteriorValue integer
---@field public SetMaskConditionType EDataflowSetMaskConditionType
---@field public FieldIntResult TArray<integer>
---@field public FieldRemap TArray<integer>
---@field public NumSamplePositions integer
local FRadialIntMaskFieldDataflowNode = {}