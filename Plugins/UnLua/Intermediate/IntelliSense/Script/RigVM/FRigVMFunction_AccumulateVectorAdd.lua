---Adds a vector over time over and over again
---@class FRigVMFunction_AccumulateVectorAdd : FRigVMFunction_AccumulateBase
---@field public Increment FVector
---@field public InitialValue FVector
---@field public bIntegrateDeltaTime boolean
---@field public Result FVector
---@field public AccumulatedValue FVector
---@field public bIsInitialized boolean
local FRigVMFunction_AccumulateVectorAdd = {}
