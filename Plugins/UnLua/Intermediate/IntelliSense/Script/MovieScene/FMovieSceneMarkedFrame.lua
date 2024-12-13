---@class FMovieSceneMarkedFrame
---@field public FrameNumber FFrameNumber
---@field public Label string
---@field public Comment string
---@field public Color FLinearColor
---@field public bIsDeterminismFence boolean @When checked, treat this mark as a fence for evaluation purposes. Fences cannot be crossed in a single evaluation, and force the evaluation to be split into 2 separate parts.
local FMovieSceneMarkedFrame = {}
