---A struct that represents player facing mapping options for an action key mapping.
---Use this to set a unique FName for the mapping option to save it, as well as some FText options
---for use in UI.
---@class FPlayerMappableKeyOptions
---@field public Metadata UObject @Metadata that can used to store any other related items to this key mapping such as icons, ability assets, etc.
---@field public Name string @A unique name for this player mapping to be saved with.
---@field public DisplayName string @The localized display name of this key mapping. Use this when displaying the mappings to a user.
---@field public DisplayCategory string @The category that this player mapping is in
local FPlayerMappableKeyOptions = {}
