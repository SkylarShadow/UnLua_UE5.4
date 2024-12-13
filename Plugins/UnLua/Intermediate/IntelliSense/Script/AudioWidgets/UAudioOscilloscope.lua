---An oscilloscope UMG widget.
---Supports displaying waveforms from incoming audio samples.
---@class UAudioOscilloscope : UWidget
---@field public OscilloscopeStyle FAudioOscilloscopePanelStyle @The oscilloscope panel style
---@field public AudioBus UAudioBus @The audio bus used to obtain audio samples for the oscilloscope
---@field public TimeWindowMs number @The time window in milliseconds.
---@field public AnalysisPeriodMs number @The analysis period in milliseconds.
---@field public bShowTimeGrid boolean @Show/Hide the time grid.
---@field public TimeGridLabelsUnit EXAxisLabelsUnit @Define the time grid labels unit.
---@field public bShowAmplitudeGrid boolean @Show/Hide the amplitude grid.
---@field public bShowAmplitudeLabels boolean @Show/Hide the amplitude labels.
---@field public AmplitudeGridLabelsUnit EYAxisLabelsUnit @Define the amplitude grid labels unit.
---@field public bShowTriggerThresholdLine boolean @Show/Hide the trigger threshold line.
---@field public TriggerThreshold number @The trigger threshold position in the Y axis.
---@field public PanelLayoutType EAudioPanelLayoutType @Show/Hide advanced panel layout.
local UAudioOscilloscope = {}

---Stops the oscilloscope processing.
function UAudioOscilloscope:StopProcessing() end

---Starts the oscilloscope processing.
function UAudioOscilloscope:StartProcessing() end

---@return TArray_number_
function UAudioOscilloscope:GetOscilloscopeAudioSamples__DelegateSignature() end

