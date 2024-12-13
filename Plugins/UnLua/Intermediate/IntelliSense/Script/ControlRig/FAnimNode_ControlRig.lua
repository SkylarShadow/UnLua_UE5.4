---Animation node that allows animation ControlRig output to be used in an animation graph
---@class FAnimNode_ControlRig : FAnimNode_ControlRigBase
---@field private ControlRigClass TSubclassOf<UControlRig> @The class to use for the rig.
---@field private DefaultControlRigClass TSubclassOf<UControlRig> @The default class to use for the rig. This is needed only if the Control Rig Class is exposed as a pin.
---@field private ControlRig UControlRig @Cached ControlRig
---@field private ControlRigPerClass TMap<TSubclassOf<UObject>, UControlRig> @Cached ControlRigs per class
---@field private Alpha number @alpha value handler
---@field private AlphaInputType EAnimAlphaInputType
---@field private bAlphaBoolEnabled boolean
---@field private bSetRefPoseFromSkeleton boolean @Override the initial transforms with those taken from the mesh component
---@field private AlphaScaleBias FInputScaleBias
---@field private AlphaBoolBlend FInputAlphaBoolBlend
---@field private AlphaCurveName string
---@field private AlphaScaleBiasClamp FInputScaleBiasClamp
---@field private InputMapping TMap<string, string> @we only save mapping, we have to query control rig when runtime to ensure type and everything is still valid or not
---@field private OutputMapping TMap<string, string>
---@field private LODThreshold integer @* Max LOD that this node is allowed to run * For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index) * when the component LOD becomes 3, it will stop update/evaluate * currently transition would be issue and that has to be re-visited
local FAnimNode_ControlRig = {}