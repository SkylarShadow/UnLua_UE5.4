---Structure representing an animated transform parameter and it's associated animation curve.
---@class FTransformParameterNameAndCurves
---@field public ParameterName string @The name of the transform  parameter which is being animated.
---@field public Translation FMovieSceneFloatChannel @Translation curves
---@field public Rotation FMovieSceneFloatChannel @Rotation curves
---@field public Scale FMovieSceneFloatChannel @Scale curves
local FTransformParameterNameAndCurves = {}
