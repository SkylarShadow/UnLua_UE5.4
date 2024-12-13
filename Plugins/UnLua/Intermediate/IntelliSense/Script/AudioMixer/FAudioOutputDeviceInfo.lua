---Platform audio output device info, in a Blueprint-readable format
---@class FAudioOutputDeviceInfo
---@field public Name string @The name of the audio device
---@field public DeviceId string @ID of the device.
---@field public NumChannels integer @The number of channels supported by the audio device
---@field public SampleRate integer @The sample rate of the audio device
---@field public Format EAudioMixerStreamDataFormatType @The data format of the audio stream
---@field public OutputChannelArray TArray<EAudioMixerChannelType> @The output channel array of the audio device
---@field public bIsSystemDefault boolean @Whether or not this device is the system default
---@field public bIsCurrentDevice boolean @Whether or not this device is the device currently in use
local FAudioOutputDeviceInfo = {}