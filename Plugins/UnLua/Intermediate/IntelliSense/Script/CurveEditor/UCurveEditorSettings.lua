---Serializable options for curve editor.
---@class UCurveEditorSettings : UObject
---@field protected bAutoFrameCurveEditor boolean
---@field protected bShowBars boolean
---@field protected FrameInputPadding integer @Number of pixels to add as padding in the input axis when framing curve keys
---@field protected FrameOutputPadding integer @Number of pixels to add as padding in the output axis when framing curve keys
---@field protected bShowBufferedCurves boolean
---@field protected bShowCurveEditorCurveToolTips boolean
---@field protected TangentVisibility ECurveEditorTangentVisibility
---@field protected ZoomPosition ECurveEditorZoomPosition
---@field protected bSnapTimeToSelection boolean
---@field protected SelectionColor FLinearColor
---@field protected CustomColors TArray<FCustomColorForChannel>
---@field protected ParentSpaceCustomColor FLinearColor
---@field protected WorldSpaceCustomColor FLinearColor
---@field protected ControlSpaceCustomColors TArray<FCustomColorForSpaceSwitch>
---@field protected TreeViewWidth number
local UCurveEditorSettings = {}

