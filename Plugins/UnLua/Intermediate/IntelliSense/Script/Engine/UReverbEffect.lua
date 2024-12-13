---@class UReverbEffect : UObject
---@field public bBypassEarlyReflections boolean @Bypasses early reflections
---@field public ReflectionsDelay number @Reflections Delay - 0.0 < 0.007 < 0.3 Seconds - the time between the listener receiving the direct path sound and the first reflection
---@field public GainHF number @Reverb Gain High Frequency - 0.0 < 0.89 < 1.0 - attenuates the high frequency reflected sound
---@field public ReflectionsGain number @Reflections Gain - 0.0 < 0.05 < 3.16 - controls the amount of initial reflections
---@field public bBypassLateReflections boolean @Bypasses late reflections.
---@field public LateDelay number @Late Reverb Delay - 0.0 < 0.011 < 0.1 Seconds - time difference between late reverb and first reflections
---@field public DecayTime number @Decay Time - 0.1 < 1.49 < 20.0 Seconds - larger is more reverb
---@field public Density number @Density - 0.0 < 1.0 < 1.0 - Coloration of the late reverb - lower value is more grainy
---@field public Diffusion number @Diffusion - 0.0 < 1.0 < 1.0 - Echo density in the reverberation decay - lower is more grainy
---@field public AirAbsorptionGainHF number @Air Absorption - 0.0 < 0.994 < 1.0 - lower value means more absorption
---@field public DecayHFRatio number @Decay High Frequency Ratio - 0.1 < 0.83 < 2.0 - how much quicker or slower the high frequencies decay relative to the lower frequencies.
---@field public LateGain number @Late Reverb Gain - 0.0 < 1.26 < 10.0 - gain of the late reverb
---@field public Gain number @Reverb Gain - 0.0 < 0.32 < 1.0 - overall reverb gain - master volume control
---@field public RoomRolloffFactor number
---@field public bChanged boolean @Transient property used to trigger real-time updates of the reverb for real-time editor previewing
local UReverbEffect = {}

