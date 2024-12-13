---@class FMovieSceneByteChannel : FMovieSceneChannel
---@field private Times TArray<FFrameNumber>
---@field private DefaultValue integer
---@field private bHasDefaultValue boolean
---@field private Values TArray<integer>
---@field private Enum UEnum
---@field private KeyHandles FMovieSceneKeyHandleMap @This needs to be a UPROPERTY so it gets saved into editor transactions but transient so it doesn't get saved into assets.
local FMovieSceneByteChannel = {}
