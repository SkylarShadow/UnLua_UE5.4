---Outliner information on a specific system instance.
---@class FNiagaraOutlinerSystemInstanceData
---@field public ComponentName string @Name of the component object for this instance, if there is one.
---@field public LWCTile FVector3f
---@field public Emitters TArray<FNiagaraOutlinerEmitterInstanceData>
---@field public ActualExecutionState ENiagaraExecutionState
---@field public RequestedExecutionState ENiagaraExecutionState
---@field public ScalabilityState FNiagaraScalabilityState
---@field public bPendingKill boolean
---@field public bUsingCullProxy boolean
---@field public PoolMethod ENCPoolMethod
---@field public AverageTime FNiagaraOutlinerTimingData
---@field public MaxTime FNiagaraOutlinerTimingData
---@field public TickGroup integer
---@field public GpuTickStage integer
---@field public bIsSolo boolean
---@field public bRequiresGlobalDistanceField boolean
---@field public bRequiresDepthBuffer boolean
---@field public bRequiresEarlyViewData boolean
---@field public bRequiresViewUniformBuffer boolean
---@field public bRequiresRayTracingScene boolean
local FNiagaraOutlinerSystemInstanceData = {}
