---Slides an existing chain along itself with control over extrapolation.
---@class FRigUnit_SlideChainPerItem : FRigUnit_HighlevelBaseMutable
---@field public Items FRigElementKeyCollection @The items to slide
---@field public SlideAmount number @The amount of sliding. This unit is multiple of the chain length.
---@field public bPropagateToChildren boolean @If set to true all of the global transforms of the children of this bone will be recalculated based on their local transforms. Note: This is computationally more expensive than turning it off.
---@field public WorkData FRigUnit_SlideChain_WorkData
local FRigUnit_SlideChainPerItem = {}
