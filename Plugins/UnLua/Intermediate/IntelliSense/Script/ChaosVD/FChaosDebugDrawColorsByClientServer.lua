---Structure holding the settings using to debug draw Particles shape based on whether they are client or server objects (in PIE) Chaos Visual Debugger
---@class FChaosDebugDrawColorsByClientServer
---@field public ServerColor FColor @Color used for server shapes that are not awake or sleeping dynamic
---@field public ServerDynamicColor FColor @Color used for server shapes that are awake dynamic
---@field public ServerSleepingColor FColor @Color used for server shapes that are sleeping dynamics
---@field public ClientColor FColor @Color used for client shapes that are not awake or sleeping dynamic
---@field public ClientDynamicColor FColor @Color used for server shapes that are awake dynamic
---@field public ClientSleepingColor FColor @Color used for client shapes that are sleeping dynamics
local FChaosDebugDrawColorsByClientServer = {}
