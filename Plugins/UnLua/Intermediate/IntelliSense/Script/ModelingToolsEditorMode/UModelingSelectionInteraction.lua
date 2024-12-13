---UModelingSelectionInteraction provides element-level selection behavior (ie mesh triangles/edges/vertices)
---via the UGeometrySelectionManager. The Interaction doesn't actually know about the meshes or interact
---with them at all, it simply "operates" the SelectionManager based on user input.
---In addition to handling selection/deselection behaviors based on user input, the UModelingSelectionInteraction
---also creates a Gizmo for the active selection if it is transformable, and forwards gizmo transformations
---to the SelectionManager.
---Currently some desired Selection-related interactions require a slightly convoluted path through the code,
---because (for example) we want the standard UE editor gizmo to have "click precedence" over our selection
---click behaviors. However we will get the input event first, so we need to be able to check if the gizmo is
---hit via a callback function provided by the EdMode owning the ToolsContext this Interaction will be registered in.
---Similarly we need to be able to filter out hits if a closer visible object is hit, because there is
---no higher-level Behavior that will do that for us. (This may be improved in future, if more of the existing
---Editor interaction behaviors are re-implemented as InputBehaviors)
---@class UModelingSelectionInteraction : UObject
---@field protected ClickOrDragBehavior USingleClickOrDragInputBehavior @click-to-select behavior, various drag behaviors
---@field protected HoverBehavior UMouseHoverBehavior @mouse hover behavior
---@field protected BehaviorSet UInputBehaviorSet @set of all behaviors, will be passed up to UInputRouter
---@field protected SelectionManager UGeometrySelectionManager
---@field protected TransformProxy UTransformProxy
---@field protected TransformGizmo UCombinedTransformGizmo
---@field protected DragAlignmentInteraction UDragAlignmentInteraction
---@field protected DragAlignmentToggleBehavior UKeyAsModifierInputBehavior
---@field protected RectangleMarqueeInteraction URectangleMarqueeInteraction
---@field protected PathSelectionInteraction UPathSelectionInteraction
local UModelingSelectionInteraction = {}
