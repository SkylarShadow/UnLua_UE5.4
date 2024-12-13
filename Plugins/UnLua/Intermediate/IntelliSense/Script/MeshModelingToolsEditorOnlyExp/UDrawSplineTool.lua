---@class UDrawSplineTool : UInteractiveTool
---@field protected Settings UDrawSplineToolProperties
---@field protected ClickOrDragBehavior USingleClickOrDragInputBehavior
---@field protected PlaneMechanic UConstructionPlaneMechanic
---@field protected PreviewRootActor APreviewGeometryActor @PreviewRootActor either holds WorkingSpline inside it directly, or has some preview actor attached to it (so that the preview actor is hidden from outliner, like APreviewGeometryActor is).
---@field protected PreviewActor AActor @The preview actor may be a duplicate of some target blueprint actor so that we can see the effects of the drawn spline immediately
---@field protected PreviousTargetActor AActor @Used to restore visibility of previous actor when switching to a different one
local UDrawSplineTool = {}

