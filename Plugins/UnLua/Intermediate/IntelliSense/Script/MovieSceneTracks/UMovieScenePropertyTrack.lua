---Base class for tracks that animate an object property
---@class UMovieScenePropertyTrack : UMovieSceneNameableTrack
---@field public UniqueTrackName string @Unique name for this track to afford multiple tracks on a given object (i.e. for array properties)
---@field private SectionToKey UMovieSceneSection @Section we should Key
---@field protected PropertyBinding FMovieScenePropertyBinding
---@field protected Sections TArray<UMovieSceneSection> @All the sections in this list
local UMovieScenePropertyTrack = {}

