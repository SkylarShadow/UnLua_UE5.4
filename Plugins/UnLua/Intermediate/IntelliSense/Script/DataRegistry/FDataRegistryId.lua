---Identifier for a specific DataRegistryItem, provides the user with a Tag or dropdown-based UI for selecting based on the available index info
---@class FDataRegistryId
---@field public RegistryType FDataRegistryType @The type of this item, used to look up the correct registry
---@field public ItemName string @The name of this object, may be a leaf gameplay tag or a raw name depending on the type
local FDataRegistryId = {}
