---@class UMotionTrailTool : UMultiSelectionTool
---@field public TransformProxy UTransformProxy @Support for gizmo. Since the points aren't individual components, we don't actually use UTransformProxy for the transform forwarding- we just use it for the callbacks.
---@field public TransformGizmo UCombinedTransformGizmo
---@field protected LeftClickBehavior USingleClickInputBehavior
---@field protected RightClickBehavior USingleClickInputBehavior
local UMotionTrailTool = {}

