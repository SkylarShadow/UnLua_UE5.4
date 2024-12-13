---Base class for ability tasks that apply root motion
---@class UAbilityTask_ApplyRootMotion_Base : UAbilityTask
---@field protected ForceName string
---@field protected FinishVelocityMode ERootMotionFinishVelocityMode @What to do with character's Velocity when root motion finishes
---@field protected FinishSetVelocity FVector @If FinishVelocityMode mode is "SetVelocity", character velocity is set to this value when root motion finishes
---@field protected FinishClampVelocity number @If FinishVelocityMode mode is "ClampVelocity", character velocity is clamped to this value when root motion finishes
---@field protected MovementComponent UCharacterMovementComponent
local UAbilityTask_ApplyRootMotion_Base = {}

