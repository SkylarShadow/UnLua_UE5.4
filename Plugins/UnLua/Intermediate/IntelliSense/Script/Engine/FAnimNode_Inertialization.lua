---@class FAnimNode_Inertialization : FAnimNode_Base
---@field public Source FPoseLink
---@field private DefaultBlendProfile UBlendProfile @Optional default blend profile to use when no blend profile is supplied with the inertialization request
---@field private FilteredCurves TArray<string> @List of curves that should not use inertial blending. These curves will instantly change when inertialization begins.
---@field private FilteredBones TArray<FBoneReference> @List of bones that should not use inertial blending. These bones will change instantly when the animation switches.
---@field private bResetOnBecomingRelevant boolean @Clear any active blends if we just became relevant, to avoid carrying over undesired blends.
---@field private bForwardRequestsThroughSkippedCachedPoseNodes boolean @When enabled this option will forward inertialization requests through any downstream UseCachedPose nodes which have had their update skipped (e.g. because they have already been updated in another location). This can be useful in the case where the same cached pose is used in multiple places, and having an inertialization request that goes with it caught in only one of those places would create popping.
---@field private RequestQueue TArray<FInertializationRequest> @Pending inertialization requests
---@field private InertializationRequestAnimInstance UObject @Anim Instance for the current inertialization request
local FAnimNode_Inertialization = {}
