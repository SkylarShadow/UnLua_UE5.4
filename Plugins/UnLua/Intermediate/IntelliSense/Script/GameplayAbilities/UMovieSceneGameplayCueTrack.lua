---Implements a movie scene track that triggers gameplay cues
---@class UMovieSceneGameplayCueTrack : UMovieSceneNameableTrack
---@field private Sections TArray<UMovieSceneSection> @The track's sections.
local UMovieSceneGameplayCueTrack = {}

---Override the default function for invoking Gameplay Cues from sequencer tracks
---@param InGameplayCueTrackHandler Delegate
function UMovieSceneGameplayCueTrack.SetSequencerTrackHandler(InGameplayCueTrackHandler) end

