---@class FTakeRecorderProjectParameters
---@field public RootTakeSaveDir FDirectoryPath @The root of the directory in which to save recorded takes.
---@field public TakeSaveDir string @The name of the directory in which to save recorded takes. Supports any of the following format specifiers that will be substituted when a take is recorded: {day}       - The day of the timestamp for the start of the recording. {month}     - The month of the timestamp for the start of the recording. {year}      - The year of the timestamp for the start of the recording. {hour}      - The hour of the timestamp for the start of the recording. {minute}    - The minute of the timestamp for the start of the recording. {second}    - The second of the timestamp for the start of the recording. {take}      - The take number. {slate}     - The slate string.
---@field public DefaultSlate string @The default name to use for the Slate information
---@field public RecordingClockSource EUpdateClockSource @The clock source to use when recording
---@field public bStartAtCurrentTimecode boolean @If enabled, track sections will start at the current timecode. Otherwise, 0.
---@field public bRecordTimecode boolean @If enabled, timecode will be recorded into each actor track
---@field public bRecordSourcesIntoSubSequences boolean @If enabled, each Source will be recorded into a separate Sequence and embedded in the Root Sequence will link to them via Subscenes track. If disabled, all Sources will be recorded into the Root Sequence, and you will not be able to swap between various takes of specific source using the Sequencer Take ui. This can still be done via copying and pasting between sequences if needed.
---@field public bRecordToPossessable boolean @* If enabled, all recorded actors will be recorded to possessable object bindings in Sequencer. If disabled, all recorded actors will be * recorded to spawnable object bindings in Sequencer. This can be overridden per actor source.
---@field public DefaultTracks TArray<FTakeRecorderTrackSettings> @List of property names for which movie scene tracks will always record.
---@field public bShowNotifications boolean @Whether to show notification windows or not when recording
local FTakeRecorderProjectParameters = {}
