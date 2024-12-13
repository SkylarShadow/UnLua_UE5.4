---Generates a random float between a min and a max
---@class FRigVMFunction_RandomFloat : FRigVMFunction_MathBase
---@field public Seed integer
---@field public Minimum number
---@field public Maximum number
---@field public Duration number @The duration at which the number won't change. Use 0 for a different number every time. A negative number (for ex: -1) results in an infinite duration.
---@field public Result number
---@field public LastResult number
---@field public LastSeed integer
---@field public BaseSeed integer
---@field public TimeLeft number
local FRigVMFunction_RandomFloat = {}