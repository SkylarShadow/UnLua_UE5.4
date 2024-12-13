---@class USynthComponent : USceneComponent
---@field public bAutoDestroy boolean @Auto destroy this component on completion
---@field public bStopWhenOwnerDestroyed boolean @Stop sound when owner is destroyed
---@field public bAllowSpatialization boolean @Is this audio component allowed to be spatialized?
---@field public bOverrideAttenuation boolean @Should the Attenuation Settings asset be used (false) or should the properties set directly on the component be used for attenuation properties
---@field public bEnableBusSends boolean @Whether or not to enable sending this audio's output to buses.
---@field public bEnableBaseSubmix boolean @If enabled, sound will route to the Master Submix by default or to the Base Submix if defined. If disabled, sound will route ONLY to the Submix Sends and/or Bus Sends
---@field public bEnableSubmixSends boolean @Whether or not to enable Submix Sends other than the Base Submix.
---@field public AttenuationSettings USoundAttenuation @If bOverrideSettings is false, the asset to use to determine attenuation properties for sounds generated by this component
---@field public AttenuationOverrides FSoundAttenuationSettings @If bOverrideSettings is true, the attenuation properties to use for sounds generated by this component
---@field public ConcurrencySet TSet<USoundConcurrency> @What sound concurrency to use for sounds generated by this audio component
---@field public ModulationRouting FSoundModulationDefaultRoutingSettings
---@field public SoundClass USoundClass @Sound class this sound belongs to
---@field public SourceEffectChain USoundEffectSourcePresetChain @The source effect chain to use for this sound.
---@field public SoundSubmix USoundSubmixBase @Submix this sound belongs to
---@field public SoundSubmixSends TArray<FSoundSubmixSendInfo> @An array of submix sends. Audio from this sound will send a portion of its audio to these effects.
---@field public BusSends TArray<FSoundSourceBusSendInfo> @This sound will send its audio output to this list of buses if there are bus instances playing after source effects are processed.
---@field public PreEffectBusSends TArray<FSoundSourceBusSendInfo> @This sound will send its audio output to this list of buses if there are bus instances playing before source effects are processed.
---@field public bIsUISound boolean @Whether or not this sound plays when the game is paused in the UI
---@field public bIsPreviewSound boolean @Whether or not this synth is playing as a preview sound
---@field public EnvelopeFollowerAttackTime integer @The attack time in milliseconds for the envelope follower. Delegate callbacks can be registered to get the envelope value of sounds played with this audio component. Only used in audio mixer.
---@field public EnvelopeFollowerReleaseTime integer @The release time in milliseconds for the envelope follower. Delegate callbacks can be registered to get the envelope value of sounds played with this audio component. Only used in audio mixer.
---@field public OnAudioEnvelopeValue MulticastDelegate
---@field private Synth USynthSound
---@field private AudioComponent UAudioComponent
local USynthComponent = {}

---Stops the synth generating audio.
function USynthComponent:Stop() end

---Starts the synth generating audio.
function USynthComponent:Start() end

---Set a new volume multiplier
---@param VolumeMultiplier number
function USynthComponent:SetVolumeMultiplier(VolumeMultiplier) end

---Sets how much audio the sound should send to the given submix.
---@param Submix USoundSubmixBase
---@param SendLevel number
function USynthComponent:SetSubmixSend(Submix, SendLevel) end

---Sets how much audio the sound should send to the given SourceBus (pre effect).
---@param SoundSourceBus USoundSourceBus
---@param SourceBusSendLevel number
function USynthComponent:SetSourceBusSendPreEffect(SoundSourceBus, SourceBusSendLevel) end

---Sets how much audio the sound should send to the given SourceBus (post effect).
---@param SoundSourceBus USoundSourceBus
---@param SourceBusSendLevel number
function USynthComponent:SetSourceBusSendPostEffect(SoundSourceBus, SourceBusSendLevel) end

---Sets whether or not the synth component outputs its audio to any source or audio buses.
---@param bInOutputToBusOnly boolean
function USynthComponent:SetOutputToBusOnly(bInOutputToBusOnly) end

---Sets the routing for one of the given Synth component's Modulation Destinations.
---@param Modulators TSet_USoundModulatorBase_
---@param Destination EModulationDestination
---@param RoutingMethod EModulationRouting @[opt] 
function USynthComponent:SetModulationRouting(Modulators, Destination, RoutingMethod) end

---Sets lowpass filter frequency of the audio component.
---@param InLowPassFilterFrequency number
function USynthComponent:SetLowPassFilterFrequency(InLowPassFilterFrequency) end

---Sets whether or not the low pass filter is enabled on the audio component.
---@param InLowPassFilterEnabled boolean
function USynthComponent:SetLowPassFilterEnabled(InLowPassFilterEnabled) end

---Sets how much audio the sound should send to the given AudioBus (pre effect).
---@param AudioBus UAudioBus
---@param AudioBusSendLevel number
function USynthComponent:SetAudioBusSendPreEffect(AudioBus, AudioBusSendLevel) end

---Sets how much audio the sound should send to the given AudioBus (post effect).
---@param AudioBus UAudioBus
---@param AudioBusSendLevel number
function USynthComponent:SetAudioBusSendPostEffect(AudioBus, AudioBusSendLevel) end

---Returns true if this component is currently playing.
---@return boolean
function USynthComponent:IsPlaying() end

---Gets the set of currently active modulators for a given Modulation Destination.
---@param Destination EModulationDestination
---@return TSet_USoundModulatorBase_
function USynthComponent:GetModulators(Destination) end

---This function allows designers to call a delayed Stop on an Audio Component instance while applying a
---volume curve over time. Parameters allow designers to indicate the duration of the fade and the curve shape.
---@param FadeOutDuration number
---@param FadeVolumeLevel number
---@param FadeCurve EAudioFaderCurve @[opt] 
function USynthComponent:FadeOut(FadeOutDuration, FadeVolumeLevel, FadeCurve) end

---This function allows designers to call Play on an Audio Component instance while applying a volume curve over time.
---Parameters allow designers to indicate the duration of the fade, the curve shape, and the start time if seeking into the sound.
---@param FadeInDuration number
---@param FadeVolumeLevel number @[opt] 
---@param StartTime number @[opt] 
---@param FadeCurve EAudioFaderCurve @[opt] 
function USynthComponent:FadeIn(FadeInDuration, FadeVolumeLevel, StartTime, FadeCurve) end

---This function allows designers to trigger an adjustment to the sound instance’s playback Volume with options for smoothly applying a curve over time.
---@param AdjustVolumeDuration number
---@param AdjustVolumeLevel number
---@param FadeCurve EAudioFaderCurve @[opt] 
function USynthComponent:AdjustVolume(AdjustVolumeDuration, AdjustVolumeLevel, FadeCurve) end

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function USynthComponent:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function USynthComponent:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function USynthComponent:AddAssetUserDataOfClass(InUserDataClass) end

