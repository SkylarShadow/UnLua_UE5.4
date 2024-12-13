---
---@class FAnimNode_BlendSpacePlayer_Standalone : FAnimNode_BlendSpacePlayerBase
---@field private GroupName string @The group name that we synchronize with (NAME_None if it is not part of any group). Note that this is the name of the group used to sync the output of this node - it will not force syncing of animations contained by it. Animations inside this Blend Space have their own options for syncing.
---@field private GroupRole integer @The role this Blend Space can assume within the group (ignored if GroupName is not set). Note that this is the role of the output of this node, not of animations contained by it.
---@field private Method EAnimSyncMethod @How this asset will synchronize with other assets. Note that this determines how the output of this node is used for synchronization, not of animations contained by it.
---@field private bIgnoreForRelevancyTest boolean @If true, "Relevant anim" nodes that look for the highest weighted animation in a state will ignore this node
---@field private X number @The X coordinate to sample in the blendspace
---@field private Y number @The Y coordinate to sample in the blendspace
---@field private PlayRate number @The play rate multiplier. Can be negative, which will cause the animation to play in reverse.
---@field private bLoop boolean @Should the animation loop back to the start when it reaches the end?
---@field private bResetPlayTimeWhenBlendSpaceChanges boolean @Whether we should reset the current play time when the blend space changes
---@field private StartPosition number @The start position in [0, 1] to use when initializing. When looping, play will still jump back to the beginning when reaching the end.
---@field private BlendSpace UBlendSpace @The blendspace asset to play
local FAnimNode_BlendSpacePlayer_Standalone = {}
