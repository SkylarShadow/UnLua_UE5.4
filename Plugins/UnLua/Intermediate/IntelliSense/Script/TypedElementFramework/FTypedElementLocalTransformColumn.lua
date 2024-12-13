---Column that stores a local transform.
---@class FTypedElementLocalTransformColumn : FTypedElementDataStorageColumn
---@field public Transform FTransform @Transform is not being intialized to avoid spending time on initialization when the Transfrom will be updated the first and following ticks after it's creation. If this isn't initialized at the correct time, then the sync from source or the true initialization need to be moved to an earlier phase or group.
local FTypedElementLocalTransformColumn = {}
