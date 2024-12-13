---Frame snapshot information for a level sequence
---@class FLevelSequencePlayerSnapshot
---@field public RootName string
---@field public RootTime FQualifiedFrameTime
---@field public SourceTime FQualifiedFrameTime
---@field public CurrentShotName string
---@field public CurrentShotLocalTime FQualifiedFrameTime
---@field public CurrentShotSourceTime FQualifiedFrameTime
---@field public SourceTimecode string
---@field public CameraComponent TSoftObjectPtr<UCameraComponent>
---@field public ActiveShot ULevelSequence
---@field public ShotID FMovieSceneSequenceID
local FLevelSequencePlayerSnapshot = {}
