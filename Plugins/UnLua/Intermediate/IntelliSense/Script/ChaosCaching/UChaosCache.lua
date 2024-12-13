---@class UChaosCache : UObject
---@field public RecordedDuration number
---@field public NumRecordedFrames integer
---@field public TrackToParticle TArray<integer> @Maps a track index in the cache to the original particle index specified when recording
---@field public ParticleTracks TArray<FPerParticleCacheData> @Per-particle data, includes transforms, velocities and other per-particle, per-frame data
---@field public ChannelCurveToParticle TArray<integer> @Map a curve index in the cache to the original particle index specified when recording
---@field public ChannelsTracks TMap<string, FRichCurves> @Per-particle data,  continuous per-frame data
---@field public CompressedChannelsTracks TMap<string, FCompressedRichCurves>
---@field public CurveData TMap<string, FRichCurve> @Per component/cache curve data, any continuous data that isn't per-particle can be stored here
---@field public NamedTransformTracks TMap<string, FParticleTransformTrack>
---@field public bCompressChannels boolean
---@field public ChannelsCompressionErrorThreshold number
---@field public ChannelsCompressionSampleRate number
---@field private EventTracks TMap<string, FCacheEventTrack> @Timestamped generic event tracks
---@field private Spawnable FCacheSpawnableTemplate @Spawn template for an actor that can play this cache
---@field private AdapterGuid FGuid @GUID identifier for the adapter that spawned this cache
---@field private Version integer @Version for controlling conditioning of older caches to work with current system. Newly created caches should always be saved as CurrentVersion.
local UChaosCache = {}

