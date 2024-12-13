---Simulates a time value - and outputs loop information
---@class FRigVMFunction_TimeLoop : FRigVMFunction_SimBase
---@field public Speed number
---@field public Duration number @the duration of a single loop in seconds
---@field public Normalize boolean @if set to true the output relative and flipflop will be normalized over the duration.
---@field public Absolute number @the overall time in seconds
---@field public Relative number @the relative time in seconds (within the loop)
---@field public FlipFlop number @the relative time in seconds (within the loop), going from 0 to duration and then back from duration to 0, or 0 to 1 and 1 to 0 if Normalize is turned on
---@field public Even boolean @true if the iteration of the loop is even
---@field public AccumulatedAbsolute number
---@field public AccumulatedRelative number
---@field public NumIterations integer
---@field public bIsInitialized boolean
local FRigVMFunction_TimeLoop = {}
