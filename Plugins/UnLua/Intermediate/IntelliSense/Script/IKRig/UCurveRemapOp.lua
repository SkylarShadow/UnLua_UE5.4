---@class UCurveRemapOp : URetargetOpBase
---@field public CurvesToRemap TArray<FCurveRemapPair> @Add pairs of Source/Target curve names to remap. While retargeting, the animation from the source curves will be redirected to the curves on the target skeletal meshes. Can be used to drive, blendshapes or other downstream systems. NOTE: By default the IK Retargeter will automatically copy all equivalently named curves from the source to the target. Remapping with this op is only necessary when the target curve name(s) are different.
---@field public bCopyAllSourceCurves boolean @This setting only applies to all curves when exporting retargeted animations. True: all source curves are copied to the target animation sequence asset. False: only remapped curves are left on the target animation sequence asset.
local UCurveRemapOp = {}

