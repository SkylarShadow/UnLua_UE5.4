---Move to a location, ignoring clipping, over a given length of time. Ends when the TargetLocation is reached.
---This will RESET your character's current movement mode! If you wish to maintain PHYS_Flying or PHYS_Custom, you must
---reset it on completion.!
---@class UAbilityTask_MoveToLocation : UAbilityTask
---@field public OnTargetLocationReached MulticastDelegate
---@field protected StartLocation FVector
---@field protected TargetLocation FVector @FVector
---@field protected DurationOfMovement number
---@field protected LerpCurve UCurveFloat
---@field protected LerpCurveVector UCurveVector
local UAbilityTask_MoveToLocation = {}

---Move to the specified location, using the vector curve (range 0 - 1) if specified, otherwise the float curve (range 0 - 1) or fallback to linear interpolation
---@param OwningAbility UGameplayAbility
---@param TaskInstanceName string
---@param Location FVector
---@param Duration number
---@param OptionalInterpolationCurve UCurveFloat
---@param OptionalVectorInterpolationCurve UCurveVector
---@return UAbilityTask_MoveToLocation
function UAbilityTask_MoveToLocation.MoveToLocation(OwningAbility, TaskInstanceName, Location, Duration, OptionalInterpolationCurve, OptionalVectorInterpolationCurve) end

