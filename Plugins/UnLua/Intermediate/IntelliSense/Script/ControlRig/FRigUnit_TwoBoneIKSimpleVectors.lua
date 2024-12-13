---Solves the two bone IK given positions
---Note: This node operates in world space!
---@class FRigUnit_TwoBoneIKSimpleVectors : FRigUnit_HighlevelBase
---@field public Root FVector @The position of the root of the triangle
---@field public PoleVector FVector @The position of the pole of the triangle
---@field public Effector FVector @The position of the effector
---@field public bEnableStretch boolean @If set to true the stretch feature of the solver will be enabled
---@field public StretchStartRatio number @The ratio where the stretch starts
---@field public StretchMaximumRatio number @The maximum allowed stretch ratio
---@field public BoneALength number @The length of the first bone. If set to 0.0 it will be determined by the hierarchy
---@field public BoneBLength number @The length of the second  bone. If set to 0.0 it will be determined by the hierarchy
---@field public Elbow FVector @The resulting elbow position
local FRigUnit_TwoBoneIKSimpleVectors = {}
