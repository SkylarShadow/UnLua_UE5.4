---@class FMovieSceneNiagaraCacheParams : FMovieSceneBaseCacheParams
---@field public CacheParameters FNiagaraSimCacheCreateParameters
---@field public SimCache UNiagaraSimCache @The sim cache this section plays and records into
---@field public bLockCacheToReadOnly boolean @If true then the section properties might still be changed (so the section itself is not locked), but the cache cannot be rerecorded to prevent accidentally overriding the data within
---@field public bOverrideQualityLevel boolean
---@field public RecordQualityLevel EPerQualityLevels @If set, then the engine scalability setting will be overriden with this value when recording a new cache for this track
---@field public CacheReplayPlayMode ENiagaraSimCacheSectionPlayMode @What should the effect do when the track has no cache data to display
---@field public SectionStretchMode ENiagaraSimCacheSectionStretchMode @What should the effect do when the cache section is stretched?
local FMovieSceneNiagaraCacheParams = {}
