---Structure representing an animated color parameter and it's associated animation curve.
---@class FColorMaterialParameterInfoAndCurves
---@field public ParameterInfo FMaterialParameterInfo @The name of the color parameter which is being animated.
---@field public RedCurve FMovieSceneFloatChannel @The curve which contains the animation data for the red component of the color parameter.
---@field public GreenCurve FMovieSceneFloatChannel @The curve which contains the animation data for the green component of the color parameter.
---@field public BlueCurve FMovieSceneFloatChannel @The curve which contains the animation data for the blue component of the color parameter.
---@field public AlphaCurve FMovieSceneFloatChannel @The curve which contains the animation data for the alpha component of the color parameter.
---@field public ParameterLayerName string @Name of parameter layer, if applicable
---@field public ParameterAssetName string @Name of parameter asset, if applicable
local FColorMaterialParameterInfoAndCurves = {}
