---Implements a section in sub-sequence tracks.
---@class UMovieSceneSubSection : UMovieSceneSection
---@field public Parameters FMovieSceneSectionParameters
---@field private NetworkMask integer
---@field protected SubSequence UMovieSceneSequence @Movie scene being played by this section
local UMovieSceneSubSection = {}

---Sets the sequence played by this section.
---@param Sequence UMovieSceneSequence
function UMovieSceneSubSection:SetSequence(Sequence) end

---Get the sequence that is assigned to this section.
---@return UMovieSceneSequence
function UMovieSceneSubSection:GetSequence() end

