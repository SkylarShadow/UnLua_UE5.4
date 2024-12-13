---Standard properties of the Edit Pivot operation
---@class UEditPivotToolProperties : UInteractiveToolPropertySet
---@field public bApplyToAllLODs boolean @If checked, the baked transform will be applied to all available LODs. Has no effect on selections without LODs.
---@field public bEnableSnapDragging boolean @When enabled, click-drag to reposition the Pivot
---@field public RotationMode EEditPivotSnapDragRotationMode @When Snap-Dragging, align source and target normals
local UEditPivotToolProperties = {}

