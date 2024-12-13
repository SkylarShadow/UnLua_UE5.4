---@class FChaosBreakEvent
---@field public Component UPrimitiveComponent @primitive component involved in the break event
---@field public Location FVector @World location of the break
---@field public Velocity FVector @Linear Velocity of the breaking particle
---@field public AngularVelocity FVector @Angular Velocity of the breaking particle
---@field public Extents FVector @Extents of the bounding box
---@field public Mass number @Mass of the breaking particle
---@field public Index integer @Index of the geometry collection bone if positive
---@field public bFromCrumble boolean @Whether the break event originated from a crumble event
local FChaosBreakEvent = {}
