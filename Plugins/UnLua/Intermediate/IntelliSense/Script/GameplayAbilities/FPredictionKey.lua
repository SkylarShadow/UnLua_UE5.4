---PredictiveConnection
---@class FPredictionKey
---@field public Current integer @The unique ID of this prediction key
---@field public Base integer @If non 0, the original prediction key this was created from (in a dependency chain)
---@field public bIsServerInitiated boolean @True if this was created as a server initiated activation key, used to identify server activations but cannot be used for prediction
local FPredictionKey = {}
