---FloatingPawnMovement is a movement component that provides simple movement for any Pawn class.
---Limits on speed and acceleration are provided, while gravity is not implemented.
---Normally the root component of the owning actor is moved, however another component may be selected (see SetUpdatedComponent()).
---During swept (non-teleporting) movement only collision of UpdatedComponent is considered, attached components will teleport to the end location ignoring collision.
---@class UFloatingPawnMovement : UPawnMovementComponent
---@field public MaxSpeed number @Maximum velocity magnitude allowed for the controlled Pawn.
---@field public Acceleration number @Acceleration applied by input (rate of change of velocity)
---@field public Deceleration number @Deceleration applied when there is no input (rate of change of velocity)
---@field public TurningBoost number @Setting affecting extra force applied when changing direction, making turns have less drift and become more responsive. Velocity magnitude is not allowed to increase, that only happens due to normal acceleration. It may decrease with large direction changes. Larger values apply extra force to reach the target direction more quickly, while a zero value disables any extra turn force.
---@field protected bPositionCorrected boolean @Set to true when a position correction is applied. Used to avoid recalculating velocity when this occurs.
local UFloatingPawnMovement = {}

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UFloatingPawnMovement:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UFloatingPawnMovement:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UFloatingPawnMovement:AddAssetUserDataOfClass(InUserDataClass) end

