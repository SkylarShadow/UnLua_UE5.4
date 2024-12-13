---Physics Prediction Settings
---@class FPhysicsPredictionSettings
---@field public bEnablePhysicsPrediction boolean @Enable networked physics prediction (experimental) Note: If an AActor::PhysicsReplicationMode is set to use Resimulation this will allow physics to cache history which is required by resimulation replication. Note: This can also affect how physics is solved even when not using resimulation.
---@field public bEnablePhysicsResimulation boolean @Forces the PlayerController to sync inputs as used in Physics Prediction. Only enable this if actively using a custom solution that needs this enabled for resimulation. This is automatically enabled when using the recommended NetworkPhysicsComponent on a pawn to handle Rewind / Resimulation.
---@field public ResimulationErrorThreshold number @Distance in centimeters before a state discrepancy triggers a resimulation
---@field public MaxSupportedLatencyPrediction number @Amount of RTT (Round Trip Time) latency for the prediction to support in milliseconds.
local FPhysicsPredictionSettings = {}
