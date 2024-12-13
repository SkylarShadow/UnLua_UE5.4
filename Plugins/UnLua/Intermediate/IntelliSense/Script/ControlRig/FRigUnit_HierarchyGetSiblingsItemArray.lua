---Returns the item's siblings
---@class FRigUnit_HierarchyGetSiblingsItemArray : FRigUnit_HierarchyBase
---@field public Item FRigElementKey
---@field public bIncludeItem boolean
---@field public Siblings TArray<FRigElementKey>
---@field public CachedItem FCachedRigElement @Used to cache the internally used item
---@field public CachedSiblings FRigElementKeyCollection @Used to cache the internally used siblings
local FRigUnit_HierarchyGetSiblingsItemArray = {}
