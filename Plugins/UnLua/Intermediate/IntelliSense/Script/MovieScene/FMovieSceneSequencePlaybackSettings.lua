---Settings for the level sequence player actor.
---@class FMovieSceneSequencePlaybackSettings
---@field public bAutoPlay boolean @Auto-play the sequence when created
---@field public LoopCount FMovieSceneSequenceLoopCount @Number of times to loop playback. -1 for infinite, else the number of times to loop before stopping
---@field public TickInterval FMovieSceneSequenceTickInterval @Overridable tick interval for this sequence to update at. When not overridden, the owning actor or component's tick interval will be used
---@field public PlayRate number @The rate at which to playback the animation
---@field public StartTime number @Start playback at the specified offset from the start of the sequence's playback range
---@field public bRandomStartTime boolean @Start playback at a random time
---@field public bDisableMovementInput boolean @Disable Input from player during play
---@field public bDisableLookAtInput boolean @Disable LookAt Input from player during play
---@field public bHidePlayer boolean @Hide Player Pawn during play
---@field public bHideHud boolean @Hide HUD during play
---@field public bDisableCameraCuts boolean @Disable camera cuts
---@field public FinishCompletionStateOverride EMovieSceneCompletionModeOverride @If set to something other than none, when a sequence ends, the completion mode of any track sections still active will be overridden       * by the chosen value, either keep state or restore state. Otherwise, completion mode will be determined by each track section.       * Note that any track sections that finish before the end of a sequence will have their completion mode determined by the section settings rather than this override.
---@field public bPauseAtEnd boolean @Pause the sequence when playback reaches the end rather than stopping it
---@field public bInheritTickIntervalFromOwner boolean @When checked, a custom tick interval can be provided to define how often to update this sequence
---@field public bDynamicWeighting boolean @Whether to enable dynamic weighting on this player or not
local FMovieSceneSequencePlaybackSettings = {}
