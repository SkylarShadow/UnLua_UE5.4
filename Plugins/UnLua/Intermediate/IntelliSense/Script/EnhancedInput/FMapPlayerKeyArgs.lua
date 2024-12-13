---Arguments that can be used when mapping a player key
---@class FMapPlayerKeyArgs
---@field public MappingName string @The name of the mapping for this key. This is either the default mapping name from an Input Action asset, or one that is overridden in the Input Mapping Context.
---@field public Slot EPlayerMappableKeySlot @What slot this key mapping is for
---@field public NewKey FKey @The new Key that this should be mapped to
---@field public HardwareDeviceId string @An OPTIONAL specifier about what kind of hardware this mapping is for.
---@field public ProfileId FGameplayTag @The Key Mapping Profile identifier that this mapping should be set on. If this is empty, then the currently equipped profile will be used.
---@field public bCreateMatchingSlotIfNeeded boolean @If there is not a player mapping already with the same Slot and Hardware Device ID, then create a new mapping for this slot.
---@field public bDeferOnSettingsChangedBroadcast boolean @Defers setting changed delegates until the next frame if set to true.
local FMapPlayerKeyArgs = {}
