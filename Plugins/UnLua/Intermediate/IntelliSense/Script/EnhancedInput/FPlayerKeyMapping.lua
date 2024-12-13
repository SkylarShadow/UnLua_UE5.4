---Represents a single key mapping that is set by the player
---@class FPlayerKeyMapping
---@field protected MappingName string @The name of the mapping for this key
---@field protected DisplayName string @Localized display name of this mapping
---@field protected DisplayCategory string @Localized display category of this mapping
---@field protected Slot EPlayerMappableKeySlot @What slot this key is mapped to
---@field protected bIsDirty boolean @True if this key mapping is dirty (i.e. has been changed by the player)
---@field protected DefaultKey FKey @The default key that this mapping was set to in its input mapping context
---@field protected CurrentKey FKey @The key that the player has mapped to
---@field protected HardwareDeviceId FHardwareDeviceIdentifier @An optional Hardware Device specifier for this mapping
---@field protected AssociatedInputAction UInputAction @The input action associated with this player key mapping
local FPlayerKeyMapping = {}