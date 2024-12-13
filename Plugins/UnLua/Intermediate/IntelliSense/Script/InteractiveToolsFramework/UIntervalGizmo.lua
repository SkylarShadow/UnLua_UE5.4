---@class UIntervalGizmo : UInteractiveGizmo
---@field public StateTarget UGizmoTransformChangeStateTarget @State target is shared across gizmos, and created internally during SetActiveTarget()
---@field protected TransformProxy UTransformProxy @The gizmo tracks the location and orientation of the transform in this TransformProxy.
---@field protected ActiveComponents TArray<UPrimitiveComponent> @list of current-active child components
---@field protected ActiveGizmos TArray<UInteractiveGizmo> @list of currently-active child gizmos
---@field protected AxisYSource UGizmoComponentAxisSource @Y-axis source is shared across Gizmos, and created internally during SetActiveTarget()
---@field protected AxisZSource UGizmoComponentAxisSource @Z-axis source is shared across Gizmos, and created internally during SetActiveTarget()
local UIntervalGizmo = {}

