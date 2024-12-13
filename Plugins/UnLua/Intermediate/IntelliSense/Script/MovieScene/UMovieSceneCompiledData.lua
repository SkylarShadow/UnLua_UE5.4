---Used for serialization only
---@class UMovieSceneCompiledData : UObject
---@field private EvaluationTemplate FMovieSceneEvaluationTemplate @352 Bytes
---@field private Hierarchy FMovieSceneSequenceHierarchy @352 Bytes
---@field private EntityComponentField FMovieSceneEntityComponentField @272 Bytes
---@field private TrackTemplateField FMovieSceneEvaluationField @64 Bytes
---@field private DeterminismFences TArray<FFrameTime> @16 Bytes
---@field private CompiledSignature FGuid @16 bytes
---@field private CompilerVersion FGuid @16 Bytes
---@field private AccumulatedMask FMovieSceneSequenceCompilerMaskStruct @1 Byte
---@field private AllocatedMask FMovieSceneSequenceCompilerMaskStruct @1 Byte
---@field private AccumulatedFlags EMovieSceneSequenceFlags @1 Byte
local UMovieSceneCompiledData = {}

