---Sequence evaluator node that can be used with constant folding
---@class FAnimNode_SequenceEvaluator : FAnimNode_SequenceEvaluatorBase
---@field private GroupName string @The group name that we synchronize with (NAME_None if it is not part of any group).
---@field private GroupRole integer @The role this node can assume within the group (ignored if GroupName is not set)
---@field private Method EAnimSyncMethod @How this node will synchronize with other animations.
---@field private bIgnoreForRelevancyTest boolean @If true, "Relevant anim" nodes that look for the highest weighted animation in a state will ignore this node
---@field private Sequence UAnimSequenceBase @The animation sequence asset to evaluate
---@field private ExplicitTime number @The time at which to evaluate the associated sequence
---@field private bUseExplicitFrame boolean @Whether to use ExplicitFrame (true) or ExplicitTime (false) when evaluating the associated sequence
---@field private ExplicitFrame integer @The frame at which to evaluate the associated sequence
---@field private bShouldLoop boolean @This only works if bTeleportToExplicitTime is false OR this node is set to use SyncGroup
---@field private bTeleportToExplicitTime boolean @If true, teleport to explicit time, does NOT advance time (does not trigger notifies, does not extract Root Motion, etc.)       If false, will advance time (will trigger notifies, extract root motion if applicable, etc.)       Note: using a sync group forces advancing time regardless of what this option is set to.
---@field private ReinitializationBehavior integer @What to do when SequenceEvaluator is reinitialized
---@field private StartPosition number @The start up position, it only applies when ReinitializationBehavior == StartPosition. Only used when bTeleportToExplicitTime is false.
local FAnimNode_SequenceEvaluator = {}
