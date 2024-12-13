---Wrapper struct to represent a global data registry, represented as an FName internally and implicitly convertible back and forth.
---This exists so the blueprint API can understand it's not a normal FName.
---@class FDataRegistryType
---@field protected Name string @The FName representing this type
local FDataRegistryType = {}
