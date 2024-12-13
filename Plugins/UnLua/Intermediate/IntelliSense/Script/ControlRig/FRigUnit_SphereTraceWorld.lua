---Sweeps a sphere against the world and return the first blocking hit using a specific channel
---@class FRigUnit_SphereTraceWorld : FRigUnit
---@field public Start FVector @Start of the trace in rig / global space
---@field public End FVector @End of the trace in rig / global space
---@field public Channel integer @The 'channel' that this trace is in, used to determine which components to hit
---@field public Radius number @Radius of the sphere to use for sweeping / tracing
---@field public bHit boolean @Returns true if there was a hit
---@field public HitLocation FVector @Hit location in rig / global Space
---@field public HitNormal FVector @Hit normal in rig / global Space
---@field public WorkData FRigUnit_SphereTrace_WorkData @Cache / workstate
local FRigUnit_SphereTraceWorld = {}
