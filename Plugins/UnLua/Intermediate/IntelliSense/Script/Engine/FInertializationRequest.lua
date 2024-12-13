---@class FInertializationRequest
---@field public Duration number @Blend duration of the inertialization request.
---@field public BlendProfile UBlendProfile @Blend profile to control per-joint blend times.
---@field public bUseBlendMode boolean @If to use the provided blend mode.
---@field public BlendMode EAlphaBlendOption @Blend mode to use.
---@field public CustomBlendCurve UCurveFloat @Custom blend curve to use when use of the blend mode is active.
---@field public DescriptionString string @Description of the request
---@field public NodeId integer @Node id from which this request was made.
---@field public AnimInstance UObject @Anim instance from which this request was made.
local FInertializationRequest = {}
