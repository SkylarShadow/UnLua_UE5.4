---Structure holding the settings using to debug draw contact data on the Chaos Visual Debugger
---@class FChaosVDContactDebugDrawSettings
---@field public DepthPriority integer @The depth priority used for while drawing contact data. Can be World or Foreground (with this one the shapes will be drawn on top of the geometry and be always visible)
---@field public ContactCircleRadius number @The radius of the debug draw circle used to represent a contact point
---@field public ContactNormalScale number @The scale value to be applied to the normal vector of a contact used to change its size to make it easier to see
local FChaosVDContactDebugDrawSettings = {}
