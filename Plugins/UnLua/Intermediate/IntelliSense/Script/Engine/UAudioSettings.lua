---Audio settings.
---@class UAudioSettings : UDeveloperSettings
---@field public DefaultSoundClassName FSoftObjectPath @The SoundClass assigned to newly created sounds
---@field public DefaultMediaSoundClassName FSoftObjectPath @The SoundClass assigned to media player assets
---@field public DefaultSoundConcurrencyName FSoftObjectPath @The SoundConcurrency assigned to newly created sounds
---@field public DefaultBaseSoundMix FSoftObjectPath @The SoundMix to use as base when no other system has specified a Base SoundMix
---@field public VoiPSoundClass FSoftObjectPath @Sound class to be used for the VOIP audio component
---@field public MasterSubmix FSoftObjectPath @The default submix through which all sounds are routed to. The root submix that outputs to audio hardware.
---@field public BaseDefaultSubmix FSoftObjectPath @The default submix to use for implicit submix sends (i.e. if the base submix send is null or if a submix parent is null)
---@field public ReverbSubmix FSoftObjectPath @The submix through which all sounds set to use reverb are routed
---@field public EQSubmix FSoftObjectPath @The submix through which all sounds set to use legacy EQ system are routed
---@field public VoiPSampleRate EVoiceSampleRate @Sample rate used for voice over IP. VOIP audio is resampled to the application's sample rate on the receiver side.
---@field public DefaultAudioCompressionType EDefaultAudioCompressionType @Default audio compression type to use for audio assets.
---@field public DefaultCompressionQuality integer @The default compression quality (e.g. for new SoundWaves)
---@field public MaximumConcurrentStreams integer @How many streaming sounds can be played at the same time (if more are played they will be sorted by priority)
---@field public GlobalMinPitchScale number @The value to use to clamp the min pitch scale
---@field public GlobalMaxPitchScale number @The value to use to clamp the max pitch scale
---@field public QualityLevels TArray<FAudioQualitySettings>
---@field public bAllowPlayWhenSilent boolean @Allows sounds to play at 0 volume.
---@field public bDisableMasterEQ boolean @Disables master EQ effect in the audio DSP graph.
---@field public bAllowCenterChannel3DPanning boolean @Enables the surround sound spatialization calculations to include the center channel.
---@field public NumStoppingSources integer @The max number of sources to reserve for "stopping" sounds. A "stopping" sound applies a fast fade in the DSP render to prevent discontinuities when stopping sources.
---@field public PanningMethod EPanningMethod @The method to use when doing non-binaural or object-based panning.
---@field public MonoChannelUpmixMethod EMonoChannelUpmixMethod @The upmixing method for mono sound sources. Defines how mono channels are up-mixed to stereo channels.
---@field public DialogueFilenameFormat string @The format string to use when generating the filename for contexts within dialogue waves. This must generate unique names for your project. Available format markers:   * {DialogueGuid} - The GUID of the dialogue wave. Guaranteed to be unique and stable against asset renames.   * {DialogueHash} - The hash of the dialogue wave. Not guaranteed to be unique or stable against asset renames, however may be unique enough if combined with the dialogue name.   * {DialogueName} - The name of the dialogue wave. Not guaranteed to be unique or stable against asset renames, however may be unique enough if combined with the dialogue hash.   * {ContextId}    - The ID of the context. Guaranteed to be unique within its dialogue wave. Not guaranteed to be stable against changes to the context.   * {ContextIndex} - The index of the context within its parent dialogue wave. Guaranteed to be unique within its dialogue wave. Not guaranteed to be stable against contexts being removed.
---@field public DebugSounds TArray<FSoundDebugEntry> @Sounds only packaged in non-shipped builds for debugging.
---@field public DefaultAudioBuses TArray<FDefaultAudioBusSettings> @Array of AudioBuses that are automatically initialized when the AudioEngine is initialized
---@field private DefaultSoundClass USoundClass
---@field private DefaultMediaSoundClass USoundClass
---@field private DefaultSoundConcurrency USoundConcurrency
local UAudioSettings = {}

