---Creates an item array based on the direct or recursive children
---of a provided parent item. Returns an empty array for an invalid parent item.
---@class FRigUnit_CollectionChildrenArray : FRigUnit_CollectionBase
---@field public Parent FRigElementKey
---@field public bIncludeParent boolean
---@field public bRecursive boolean
---@field public TypeToSearch ERigElementType
---@field public Items TArray<FRigElementKey>
local FRigUnit_CollectionChildrenArray = {}
