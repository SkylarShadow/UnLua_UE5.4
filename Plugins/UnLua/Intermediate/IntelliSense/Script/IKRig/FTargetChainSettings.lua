---@class FTargetChainSettings
---@field public FK FTargetChainFKSettings @All settings for FK retargeting of this chain. FK retargeting runs before the IK pass.
---@field public IK FTargetChainIKSettings @All settings controlling the IK Goal assigned to this chain. The IK pass runs AFTER the FK pass and can be used to fix contacts.
---@field public SpeedPlanting FTargetChainSpeedPlantSettings @All settings associated with planting IK goals based on the speed of the source. Speed planting will pin the IK goal to the location determined by the IK settings above.
local FTargetChainSettings = {}
