---@class UArchVisCharMovementComponent : UCharacterMovementComponent
---@field public RotationalAcceleration FRotator @Controls how fast the character's turn rate accelerates when rotating and looking up/down
---@field public RotationalDeceleration FRotator @Controls how fast the character's turn rate decelerates to 0 when user stops turning
---@field public MaxRotationalVelocity FRotator @Fastest possible turn rate
---@field public MinPitch number @Controls how far down you can look
---@field public MaxPitch number @Controls how far up you can look
---@field public WalkingFriction number @Controls walking deceleration.
---@field public WalkingSpeed number @How fast the character can walk.
---@field public WalkingAcceleration number @How fast the character accelerates.
local UArchVisCharMovementComponent = {}

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UArchVisCharMovementComponent:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UArchVisCharMovementComponent:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UArchVisCharMovementComponent:AddAssetUserDataOfClass(InUserDataClass) end

