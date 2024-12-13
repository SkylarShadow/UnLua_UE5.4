---@class UAnimSeqExportOption : UObject
---@field public bExportTransforms boolean @If enabled, export the transforms from the animation
---@field public bExportMorphTargets boolean @If enabled, export the morph targets from the animation
---@field public bExportAttributeCurves boolean @If enabled, export the attribute curves from the animation
---@field public bExportMaterialCurves boolean @If enabled, export the material curves from the animation
---@field public bRecordInWorldSpace boolean @If enabled we record in World Space otherwise we record from 0,0,0
---@field public bEvaluateAllSkeletalMeshComponents boolean @If true we evaluate all other skeletal mesh components under the same actor, this may be needed for example, to get physics to get baked
---@field public Interpolation EAnimInterpolationType @This defines how values between keys are calculated for transforms
---@field public CurveInterpolation integer @This defines how values between keys are calculated for curves
---@field public IncludeAnimationNames TArray<string> @Include only the animation bones/curves that match this list
---@field public ExcludeAnimationNames TArray<string> @Exclude all animation bones/curves that match this list
---@field public WarmUpFrames FFrameNumber @Number of Display Rate frames to evaluate before doing the export. It will evaluate after any Delay. This will use frames before the start frame. Use it if there is some post anim BP effects you want to run before export start time.
---@field public DelayBeforeStart FFrameNumber @Number of Display Rate frames to delay at the same frame before doing the export. It will evalaute first, then any warm up, then the export. Use it if there is some post anim BP effects you want to ran repeatedly at the start.
---@field public bTransactRecording boolean @Whether or not to transact the animation sequence data recording
local UAnimSeqExportOption = {}

