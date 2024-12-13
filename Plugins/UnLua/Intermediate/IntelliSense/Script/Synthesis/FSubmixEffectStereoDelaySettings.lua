---@class FSubmixEffectStereoDelaySettings
---@field public DelayMode EStereoDelaySourceEffect @What mode to set the stereo delay effect.
---@field public DelayTimeMsec number @The base amount of delay in the left and right channels of the delay line.
---@field public Feedback number @The amount of audio to feedback into the delay line once the delay has been tapped.
---@field public DelayRatio number @Delay spread for left and right channels. Allows left and right channels to have differential delay amounts. Useful for stereo channel decorrelation.
---@field public WetLevel number @The amount of delay effect to mix with the dry input signal into the effect.
---@field public DryLevel number @The dry level of the effect
---@field public bFilterEnabled boolean @Whether or not to enable filtering
---@field public FilterType EStereoDelayFiltertype @Filter type to feed feedback audio to
---@field public FilterFrequency number @Cutoff frequency of the filter
---@field public FilterQ number @Q of the filter
local FSubmixEffectStereoDelaySettings = {}
