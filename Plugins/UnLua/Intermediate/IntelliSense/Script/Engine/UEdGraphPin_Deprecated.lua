---@class UEdGraphPin_Deprecated : UObject
---@field public PinName string @Name of this pin
---@field public PinFriendlyName string @Used as the display name if set
---@field public PinToolTip string @The tool-tip describing this pin's purpose
---@field public Direction integer @Direction of flow of this pin (input or output)
---@field public PinType FEdGraphPinType @The type of information carried on this pin
---@field public DefaultValue string @Default value for this pin (used if the pin has no connections), stored as a string
---@field public AutogeneratedDefaultValue string @Initial default value (the autogenerated value, to identify if the user has modified the value), stored as a string
---@field public DefaultObject UObject @If the default value for this pin should be an object, we store a pointer to it
---@field public DefaultTextValue string @If the default value for this pin should be an FText, it is stored here.
---@field public LinkedTo TArray<UEdGraphPin_Deprecated> @Set of pins that we are linked to
---@field public SubPins TArray<UEdGraphPin_Deprecated> @The pins created when a pin is split and hidden
---@field public ParentPin UEdGraphPin_Deprecated @The pin that was split and generated this pin
---@field public ReferencePassThroughConnection UEdGraphPin_Deprecated @Pin that this pin uses for passing through reference connection
---@field public bHidden boolean @If true, this connector is currently hidden.
---@field public bNotConnectable boolean @If true, this connector is unconnectable, and present only to allow the editing of the default text.
---@field public bDefaultValueIsReadOnly boolean @If true, the default value of this connector is fixed and cannot be modified by the user (it's visible for reference only)
---@field public bDefaultValueIsIgnored boolean @If true, the default value on this pin is ignored and should not be set
---@field public bAdvancedView boolean @If true, the pin may be hidden by user
---@field public bDisplayAsMutableRef boolean @If true, the pin is displayed as ref
---@field public PersistentGuid FGuid @Pin name could be changed, so whenever possible it's good to have a persistent GUID identifying Pin to reconstruct Node seamlessly
local UEdGraphPin_Deprecated = {}

