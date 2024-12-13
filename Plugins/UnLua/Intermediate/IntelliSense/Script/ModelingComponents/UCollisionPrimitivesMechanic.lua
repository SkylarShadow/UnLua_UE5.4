---@class UCollisionPrimitivesMechanic : UInteractionMechanic
---@field protected PreviewGeometry UPreviewGeometry @Used for displaying Primitives/segments
---@field protected DrawnPrimitiveEdges ULineSetComponent
---@field protected TranslateTransformProxy UTransformProxy @Support for gizmos. Since the primitives aren't individual components, we don't actually use UTransformProxy for the transform forwarding- we just use it for the callbacks.
---@field protected SphereTransformProxy UTransformProxy
---@field protected BoxTransformProxy UTransformProxy
---@field protected CapsuleTransformProxy UTransformProxy
---@field protected FullTransformProxy UTransformProxy
---@field protected CurrentActiveProxy UTransformProxy
---@field protected TranslateTransformGizmo UCombinedTransformGizmo
---@field protected SphereTransformGizmo UCombinedTransformGizmo
---@field protected BoxTransformGizmo UCombinedTransformGizmo
---@field protected CapsuleTransformGizmo UCombinedTransformGizmo
---@field protected FullTransformGizmo UCombinedTransformGizmo
---@field protected MarqueeMechanic URectangleMarqueeMechanic @Support for selection
local UCollisionPrimitivesMechanic = {}

