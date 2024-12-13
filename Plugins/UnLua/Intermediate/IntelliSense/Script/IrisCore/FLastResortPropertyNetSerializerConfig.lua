---Any property that doesn't have any other option will end up using this.
---As the name suggests it's a last resort.
---- Cannot support delta compression in a meaningful way.
---- Must allocate memory to store quantized state.
---@class FLastResortPropertyNetSerializerConfig : FNetSerializerConfig
---@field public Property Unknown
---@field public MaxAllowedObjectReferences integer @Value used to sanity check incoming data so that we do not over-allocate dynamic memory
local FLastResortPropertyNetSerializerConfig = {}
