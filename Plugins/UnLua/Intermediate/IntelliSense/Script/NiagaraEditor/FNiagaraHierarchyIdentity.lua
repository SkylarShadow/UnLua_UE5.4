---@class FNiagaraHierarchyIdentity
---@field public Guids TArray<FGuid> @An array of guids that have to be satisfied in order to match.
---@field public Names TArray<string> @Optionally, an array of names can be specified in place of guids. If guids & names are present, guids have to be satisfied first, then names.
local FNiagaraHierarchyIdentity = {}
