---Handles animation of skeletal mesh actors
---@class UMovieSceneSkeletalAnimationTrack : UMovieSceneNameableTrack
---@field public AnimationSections TArray<UMovieSceneSection> @List of all animation sections
---@field public bUseLegacySectionIndexBlend boolean
---@field public RootMotionParams FMovieSceneSkeletalAnimRootMotionTrackParams
---@field public bBlendFirstChildOfRoot boolean @Whether to blend and adjust the first child node with animation instead of the root, this should be true for blending when the root is static, false if the animations have proper root motion
---@field public SwapRootBone ESwapRootBone @If on the root bone transform will be swapped to the specified root
---@field public bShowRootMotionTrail boolean @Whether to show the position of the root for this sections
local UMovieSceneSkeletalAnimationTrack = {}

---@param InValue ESwapRootBone
function UMovieSceneSkeletalAnimationTrack:SetSwapRootBone(InValue) end

---@return ESwapRootBone
function UMovieSceneSkeletalAnimationTrack:GetSwapRootBone() end

