---@class FNiagaraSimCacheDataBuffersLayout
---@field public LayoutName string
---@field public SimTarget ENiagaraSimTarget
---@field public Variables TArray<FNiagaraSimCacheVariable>
---@field public FloatCount integer
---@field public HalfCount integer
---@field public Int32Count integer
---@field public bLocalSpace boolean
---@field public bAllowInterpolation boolean
---@field public bAllowVelocityExtrapolation boolean
---@field public RebaseVariableNames TArray<string>
---@field public InterpVariableNames TArray<string>
---@field public ComponentVelocity integer
local FNiagaraSimCacheDataBuffersLayout = {}