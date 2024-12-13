---Editor data for stateless emitters
---Generates runtime data to be consumed by the game
---@class UNiagaraStatelessEmitter : UObject
---@field protected UniqueEmitterName string
---@field protected EmitterTemplateClass TSubclassOf<UObject>
---@field protected bDeterministic boolean
---@field protected RandomSeed integer
---@field protected FixedBounds FBox
---@field protected EmitterState FNiagaraEmitterStateData
---@field protected SpawnInfos TArray<FNiagaraStatelessSpawnInfo>
---@field protected Modules TArray<UNiagaraStatelessModule>
---@field protected RendererProperties TArray<UNiagaraRendererProperties>
---@field protected Platforms FNiagaraPlatformSet
---@field protected ParticleDataSetCompiledData FNiagaraDataSetCompiledData
---@field protected ComponentOffsets TArray<integer>
local UNiagaraStatelessEmitter = {}

