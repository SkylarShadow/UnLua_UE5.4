---@class FRetargetGlobalSettings
---@field public bEnableRoot boolean @When false, the motion of the Retarget Root bone is not copied from the source. Useful for debugging issues with the root settings. Note: the retargeting order is: Root > FK > IK > Post
---@field public bEnableFK boolean @When false, limbs are not copied via FK. Useful for debugging limb issues suspected to be caused by FK chain settings. Note: the retargeting order is: Root > FK > IK > Post
---@field public bEnableIK boolean @When false, IK is not applied as part of retargeter. Useful for debugging limb issues suspected to be caused by IK. Note: the retargeting order is: Root > FK > IK > Post
---@field public bEnablePost boolean @When false, Post operations are not applied as part of retargeter. Useful for debugging issues suspected to be caused by the post phase. Note: the retargeting order is: Root > FK > IK > Post
---@field public bWarping boolean @Enable IK Warping. These options allow for global modifications to all IK Goals that have "Affected by IK Warping" turned on (the default). "Affected by IK Warping" can be found in the IK settings of a retarget chain.
---@field public DirectionSource EWarpingDirectionSource @Defines the source used to determine the forward direction as the character animates in world space. Default is "Goals". This method uses various positions on the character to create a "best fit" global rotation that approximates the facing direction of the character over time. This global rotation is used to define the forward and sideways directions used when warping goals along those axes. The options are: Goals: uses the positions of the IK goals to approximate the facing direction. This is best used on characters with a vertical spine, like bipeds. Chain: uses the positions of the bones in a retarget chain to approximate the facing direction. This is best when used with the spine chain for characters with a horizontal spine, like quadrupeds. Root Bone: uses the rotation of the root bone of the skeleton. This is most robust, but character must have correct root motion with yaw rotation in movement direction.
---@field public ForwardDirection EBasicAxis @The world space axis that represents the forward facing direction for your character. By default, in Unreal, this is +Y.
---@field public DirectionChain string @When using the "Chain" option as a Direction Source, this defines the chain to use to determine the facing direction of the character. Typically this would be the chain that contains the Spine bones.
---@field public WarpForwards number @Range 0 to Inf. Default 1. Warps IK goal positions in the forward direction. Useful for stride warping. Values below 1 will create smaller, squashed strides. Values greater than 1 will create stretched, longer strides.
---@field public SidewaysOffset number @Range -+Inf. Default is 0. A static offset in world units to move the IK goals perpendicular to the forward direction. Values less than zero will move the goals towards the center-line of the character. Values greater than zero push the goals outwards.
---@field public WarpSplay number @Range 0 to +Inf. Default is 1.0f. Values below 1 pull all the goals towards the average of all the goals (towards each other). Values greater than 1 push the goals apart.
local FRetargetGlobalSettings = {}