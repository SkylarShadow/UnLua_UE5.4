---Extrudes boundary edges.
---@class UPolyEditExtrudeEdgeActivity : UInteractiveToolActivity
---@field public Settings UPolyEditExtrudeEdgeActivityProperties
---@field protected ActivityContext UPolyEditActivityContext
---@field protected ExtrudeFrameProxy UTransformProxy @Support for gizmos.
---@field protected ExtrudeFrameGizmo UCombinedTransformGizmo
---@field protected SingleDirectionProxy UTransformProxy
---@field protected SingleDirectionGizmo UCombinedTransformGizmo
---@field protected PreviewGeometry UPreviewGeometry @Used for drawing the boundaries of the new faces to make them look similar to the rest of the mesh.
local UPolyEditExtrudeEdgeActivity = {}

