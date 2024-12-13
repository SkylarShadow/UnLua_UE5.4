---SetRotation is used to set a single rotation on hierarchy.
---@class FRigUnit_SetRotation : FRigUnitMutable
---@field public Item FRigElementKey @The item to set the rotation for
---@field public Space ERigVMTransformSpace @Defines if the rotation should be set in local or global space
---@field public bInitial boolean @Defines if the transform should be set as current (false) or initial (true). Initial transforms for bones and other elements in the hierarchy represent the reference pose's value.
---@field public Value FQuat @The new rotation of the given item
---@field public Weight number @Defines how much the change will be applied
---@field public bPropagateToChildren boolean @If set to true children of affected items in the hierarchy will follow the transform change - otherwise only the parent will move.
---@field public CachedIndex FCachedRigElement @Used to cache the internally used index
local FRigUnit_SetRotation = {}
