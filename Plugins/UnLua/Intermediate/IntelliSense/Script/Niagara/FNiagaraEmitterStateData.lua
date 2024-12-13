---@class FNiagaraEmitterStateData
---@field public InactiveResponse ENiagaraEmitterInactiveResponse @UPROPERTY(EditAnywhere, Category="Emitter State") ENiagaraStatelessEmitterState_SelfSystem LifeCycleMode = ENiagaraStatelessEmitterState_SelfSystem::Self;
---@field public LoopBehavior ENiagaraLoopBehavior
---@field public LoopCount integer
---@field public LoopDuration FNiagaraDistributionRangeFloat
---@field public bRecalculateDurationEachLoop boolean
---@field public LoopDelay FNiagaraDistributionRangeFloat
---@field public bDelayFirstLoopOnly boolean
---@field public bRecalculateDelayEachLoop boolean
local FNiagaraEmitterStateData = {}
