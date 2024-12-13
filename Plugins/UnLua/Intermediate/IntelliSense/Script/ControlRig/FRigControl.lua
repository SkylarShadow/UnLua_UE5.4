---@class FRigControl : FRigElement
---@field public ControlType ERigControlType
---@field public DisplayName string
---@field public ParentName string
---@field public ParentIndex integer
---@field public SpaceName string
---@field public SpaceIndex integer
---@field public OffsetTransform FTransform @Used to offset a control in global space. This can be useful to offset a float control by rotating it or translating it.
---@field public InitialValue FRigControlValue @The value that a control is reset to during begin play or when the control rig is instantiated.
---@field public Value FRigControlValue @The current value of the control.
---@field public PrimaryAxis ERigControlAxis @the primary axis to use for float controls
---@field public bIsCurve boolean @If Created from a Curve  Container
---@field public bAnimatable boolean @If the control is animatable in sequencer
---@field public bLimitTranslation boolean @True if the control has to obey translation limits.
---@field public bLimitRotation boolean @True if the control has to obey rotation limits.
---@field public bLimitScale boolean @True if the control has to obey scale limits.
---@field public bDrawLimits boolean @True if the limits should be drawn in debug.
---@field public MinimumValue FRigControlValue @The minimum limit of the control's value
---@field public MaximumValue FRigControlValue @The maximum limit of the control's value
---@field public bGizmoEnabled boolean @Set to true if the gizmo is enabled in 3d
---@field public bGizmoVisible boolean @Set to true if the gizmo is currently visible in 3d
---@field public GizmoName string @This is optional UI setting - this doesn't mean this is always used, but it is optional for manipulation layer to use this
---@field public GizmoTransform FTransform
---@field public GizmoColor FLinearColor
---@field public Dependents TArray<integer> @dependent list - direct dependent for child or anything that needs to update due to this
---@field public bIsTransientControl boolean @If the control is transient and only visible in the control rig editor
---@field public ControlEnum UEnum @If the control is transient and only visible in the control rig editor
local FRigControl = {}