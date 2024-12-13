---@class FSumVectorFieldDataflowNode : FDataflowNode
---@field public FieldFloat TArray<number>
---@field public FieldFloatRemap TArray<integer>
---@field public FieldVectorLeft TArray<FVector>
---@field public FieldRemapLeft TArray<integer>
---@field public FieldVectorRight TArray<FVector>
---@field public FieldRemapRight TArray<integer>
---@field public Magnitude number
---@field public Operation EDataflowVectorFieldOperationType
---@field public bSwapVectorInputs boolean
---@field public FieldVectorResult TArray<FVector>
---@field public FieldRemap TArray<integer>
local FSumVectorFieldDataflowNode = {}