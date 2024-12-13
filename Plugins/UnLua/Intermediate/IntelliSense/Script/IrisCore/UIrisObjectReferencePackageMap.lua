---Custom packagemap implementation used to be able to capture UObject* references from external serialization.
---Any object references written when using this packagemap will be added to the References array and serialized as an index.
---When reading using this packagemap references will be read as an index and resolved by picking the corresponding entry from the provided array containing the references.
---@class UIrisObjectReferencePackageMap : UPackageMap
local UIrisObjectReferencePackageMap = {}

