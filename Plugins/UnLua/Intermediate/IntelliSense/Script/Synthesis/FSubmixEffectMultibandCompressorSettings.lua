---A submix dynamics processor
---@class FSubmixEffectMultibandCompressorSettings
---@field public DynamicsProcessorType ESubmixEffectDynamicsProcessorType @Controls how each band will react to audio above its threshold
---@field public PeakMode ESubmixEffectDynamicsPeakMode @Controls how quickly the bands will react to a signal above its threshold
---@field public LinkMode ESubmixEffectDynamicsChannelLinkMode @Whether to compress all channels equally, and how to evaluate the overall level
---@field public LookAheadMsec number @The amount of time to look ahead of the current audio. Allows for transients to be included in dynamics processing.
---@field public bAnalogMode boolean @Toggles treating the attack and release envelopes as analog-style vs digital-style. Analog will respond a bit more naturally/slower.
---@field public bFourPole boolean @Turning off FourPole mode will use cheaper, shallower 2-pole crossovers
---@field public bBypass boolean @Whether or not to bypass effect
---@field public KeySource ESubmixEffectDynamicsKeySource
---@field public ExternalAudioBus UAudioBus @If set, uses output of provided submix as modulator of input signal for dynamics processor (Uses input signal as default modulator)
---@field public ExternalSubmix USoundSubmix @If set, uses output of provided submix as modulator of input signal for dynamics processor (Uses input signal as default modulator)
---@field public KeyGainDb number @Gain to apply to key signal if external input is supplied
---@field public bKeyAudition boolean @Audition the key modulation signal, bypassing enveloping and processing the input signal.
---@field public Bands TArray<FDynamicsBandSettings> @Each band is a full dynamics processor, affecting at a unique frequency range
local FSubmixEffectMultibandCompressorSettings = {}