---Asset containing a collection of global parameters usable by Niagara.
---@class UNiagaraParameterCollection : UObject
---@field protected Namespace string @Namespace for this parameter collection. Is enforced to be unique across all parameter collections.
---@field protected Parameters TArray<FNiagaraVariable>
---@field protected SourceMaterialCollection UMaterialParameterCollection @Optional set of MPC that can drive scalar and vector parameters
---@field protected DefaultInstance UNiagaraParameterCollectionInstance
---@field protected CompileId FGuid @Used to track whenever something of note changes in this parameter collection that might invalidate a compilation downstream of a script/emitter/system.
local UNiagaraParameterCollection = {}

