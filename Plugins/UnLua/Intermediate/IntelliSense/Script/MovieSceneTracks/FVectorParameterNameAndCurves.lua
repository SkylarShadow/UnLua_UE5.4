---Structure representing an animated vector parameter and it's associated animation curve.
---@class FVectorParameterNameAndCurves
---@field public ParameterName string @The name of the vector parameter which is being animated.
---@field public XCurve FMovieSceneFloatChannel @The curve which contains the animation data for the x component of the vector parameter.
---@field public YCurve FMovieSceneFloatChannel @The curve which contains the animation data for the y component of the vector parameter.
---@field public ZCurve FMovieSceneFloatChannel @The curve which contains the animation data for the z component of the vector parameter.
local FVectorParameterNameAndCurves = {}
