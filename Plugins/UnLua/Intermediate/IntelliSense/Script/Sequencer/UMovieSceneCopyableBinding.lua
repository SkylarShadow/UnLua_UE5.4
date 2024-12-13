---@class UMovieSceneCopyableBinding : UObject
---@field public SpawnableObjectTemplate UObject @Spawnables need to know about their Object Template but we cannot rely on automatic serialization due to the object template belonging to the Movie Scene (it gets serialized as a reference). Instead we manually serialize the object so that we can duplicate it into a new object (which is stored in this variable) but we don't want this exported with the rest of the text as it'll fall back to the same reference issue. Marking this as TextExportTransient solves this.
---@field public Tracks TArray<UMovieSceneTrack> @Tracks are also owned by the owning Movie Sequence. We manually copy the tracks out of a binding when we copy, because the binding stores them as a reference to a privately owned object. We store these copied tracks here, and then restore them upon paste to re-create the tracks with the correct owner.
---@field public Binding FMovieSceneBinding
---@field public Spawnable FMovieSceneSpawnable
---@field public Possessable FMovieScenePossessable
---@field public BoundObjectNames TArray<string>
---@field public FolderPath TArray<string>
---@field public Tags TArray<string>
local UMovieSceneCopyableBinding = {}

