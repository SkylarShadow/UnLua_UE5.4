---@class FRigControlSettings
---@field public AnimationType ERigControlAnimationType
---@field public ControlType ERigControlType
---@field public DisplayName string
---@field public PrimaryAxis ERigControlAxis @the primary axis to use for float controls
---@field public bIsCurve boolean @If Created from a Curve  Container
---@field public LimitEnabled TArray<FRigControlLimitEnabled> @True if the control has limits.
---@field public bDrawLimits boolean @True if the limits should be drawn in debug. For this to be enabled you need to have at least one min and max limit turned on.
---@field public MinimumValue FRigControlValue @The minimum limit of the control's value
---@field public MaximumValue FRigControlValue @The maximum limit of the control's value
---@field public bShapeVisible boolean @Set to true if the shape is currently visible in 3d
---@field public ShapeVisibility ERigControlVisibility @Defines how the shape visibility should be changed
---@field public ShapeName string @This is optional UI setting - this doesn't mean this is always used, but it is optional for manipulation layer to use this
---@field public ShapeColor FLinearColor
---@field public bIsTransientControl boolean @If the control is transient and only visible in the control rig editor
---@field public ControlEnum UEnum @If the control is integer it can use this enum to choose values
---@field public Customization FRigControlElementCustomization @The User interface customization used for a control This will be used as the default content for the space picker and other widgets
---@field public DrivenControls TArray<FRigElementKey> @The list of driven controls for this proxy control.
---@field public bGroupWithParentControl boolean @If set to true the animation channel will be grouped with the parent control in sequencer
---@field public bRestrictSpaceSwitching boolean @Allow to space switch only to the available spaces
---@field public FilteredChannels TArray<ERigControlTransformChannel> @Filtered Visible Transform channels. If this is empty everything is visible
---@field public PreferredRotationOrder EEulerRotationOrder @The euler rotation order this control prefers for animation, if we aren't using default UE rotator
---@field public bUsePreferredRotationOrder boolean @Whether to use a specified rotation order or just use the default FRotator order and conversion functions
local FRigControlSettings = {}