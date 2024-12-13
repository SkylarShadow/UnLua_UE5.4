---Blend list node; has many children
---@class FAnimNode_BlendListBase : FAnimNode_Base
---@field protected BlendPose TArray<FPoseLink>
---@field private BlendTime TArray<number>
---@field private TransitionType EBlendListTransitionType
---@field private BlendType EAlphaBlendOption
---@field protected bResetChildOnActivation boolean @This reinitializes the re-activated child if the child's weight was zero.
---@field private CustomBlendCurve UCurveFloat
---@field private BlendProfile UBlendProfile
local FAnimNode_BlendListBase = {}
