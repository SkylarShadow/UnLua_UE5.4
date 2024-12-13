---NavMovementComponent defines base functionality for MovementComponents that move any 'agent' that may be involved in AI pathfinding.
---@class UNavMovementComponent : UMovementComponent
---@field public NavAgentProps FNavAgentProperties @Properties that define how the component can move.
---@field protected FixedPathBrakingDistance number @Braking distance override used with acceleration driven path following (bUseAccelerationForPaths)
---@field protected bUpdateNavAgentWithOwnersCollision boolean @If set to true NavAgentProps' radius and height will be updated with Owner's collision capsule size
---@field protected bUseAccelerationForPaths boolean @If set, pathfollowing will control character movement via acceleration values. If false, it will set velocities directly.
---@field protected bUseFixedBrakingDistanceForPaths boolean @If set, FixedPathBrakingDistance will be used for path following deceleration
---@field public MovementState FMovementProperties @Expresses runtime state of character's movement. Put all temporal changes to movement properties here
---@field private PathFollowingComp UObject @object implementing IPathFollowingAgentInterface. Is private to control access to it.     @@see SetPathFollowingAgent, GetPathFollowingAgent
local UNavMovementComponent = {}

---Stops movement immediately (reset velocity) but keeps following current path
function UNavMovementComponent:StopMovementKeepPathing() end

---Stops applying further movement (usually zeros acceleration).
function UNavMovementComponent:StopActiveMovement() end

---Returns true if currently swimming (moving through a fluid volume)
---@return boolean
function UNavMovementComponent:IsSwimming() end

---Returns true if currently moving on the ground (e.g. walking or driving)
---@return boolean
function UNavMovementComponent:IsMovingOnGround() end

---Returns true if currently flying (moving through a non-fluid volume without resting on the ground)
---@return boolean
function UNavMovementComponent:IsFlying() end

---Returns true if currently falling (not flying, in a non-fluid volume, and not on the ground)
---@return boolean
function UNavMovementComponent:IsFalling() end

---Returns true if currently crouching
---@return boolean
function UNavMovementComponent:IsCrouching() end

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UNavMovementComponent:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UNavMovementComponent:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UNavMovementComponent:AddAssetUserDataOfClass(InUserDataClass) end

