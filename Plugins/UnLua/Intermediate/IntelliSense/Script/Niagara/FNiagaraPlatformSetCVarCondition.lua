---Imposes a condition that a CVar must contain a set value or range of values for a platform set to be enabled.
---@class FNiagaraPlatformSetCVarCondition
---@field public CVarName string @The name of the CVar we're testing the value of.
---@field public PassResponse ENiagaraCVarConditionResponse @If this CVar condition passes, how should this affect the state of the Platform Set?
---@field public FailResponse ENiagaraCVarConditionResponse @If this CVar condition fails, how should this affect the state of the Platform Set?
---@field public Value boolean @The value this CVar must contain for this platform set to be enabled.
---@field public MinInt integer @If the value of the CVar is less than this minimum then the PlatformSet will not be enabled.
---@field public MaxInt integer @If the value of the CVar is greater than this maximum then the PlatformSet will not be enabled.
---@field public MinFloat number @If the value of the CVar is less than this minimum then the PlatformSet will not be enabled.
---@field public MaxFloat number @If the value of the CVar is greater than this maximum then the PlatformSet will not be enabled.
---@field public bUseMinInt boolean @True if we should apply the minimum restriction for int CVars.
---@field public bUseMaxInt boolean @True if we should apply the maximum restriction for int CVars.
---@field public bUseMinFloat boolean @True if we should apply the minimum restriction for float CVars.
---@field public bUseMaxFloat boolean @True if we should apply the maximum restriction for float CVars.
local FNiagaraPlatformSetCVarCondition = {}
