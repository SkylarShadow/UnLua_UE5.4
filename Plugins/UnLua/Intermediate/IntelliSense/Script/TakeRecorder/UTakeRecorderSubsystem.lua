---UTakeRecorderSubsystem
---Subsystem for Take Recorder
---@class UTakeRecorderSubsystem : UEngineSubsystem
---@field public TakeRecorderPreInitialize MulticastDelegate @Called before initialization occurs (ie. when the recording button is pressed and before the countdown starts)
---@field public TakeRecorderStarted MulticastDelegate @Called when take recorder is started
---@field public TakeRecorderStopped MulticastDelegate @Called when take recorder is stopped
---@field public TakeRecorderFinished MulticastDelegate @Called when take recorder has finished
---@field public TakeRecorderCancelled MulticastDelegate @Called when take recorder is cancelled
---@field public TakeRecorderMarkedFrameAdded MulticastDelegate @Called when a marked frame is added to take recorder
local UTakeRecorderSubsystem = {}

