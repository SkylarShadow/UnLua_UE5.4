---@class UIKRigFBIKSolver : UIKRigSolver
---@field public RootBone string @All bones above this bone in the hierarchy will be completely ignored by the solver. Typically this is set to the top-most skinned bone in the Skeletal Mesh (ie Pelvis, Hips etc), NOT the actual root of the entire skeleton. If you want to use the solver on a single chain of bones, and NOT translate the chain, ensure that "PinRoot" is checked on to disable the root from translating to reach the effector goals.
---@field public Iterations integer @High iteration counts can help solve complex joint configurations with competing constraints, but will increase runtime cost. Default is 20.
---@field public SubIterations integer @Iterations used for sub-chains defined by the Chain Depth of the effectors. These are solved BEFORE the main iteration pass. Default is 0.
---@field public MassMultiplier number @A global mass multiplier; higher values will make the joints more stiff, but require more iterations. Typical range is 0.0 to 10.0.
---@field public bAllowStretch boolean @If true, joints will translate to reach the effectors; causing bones to lengthen if necessary. Good for cartoon effects. Default is false.
---@field public RootBehavior EPBIKRootBehavior @(Default is PrePull) Set the behavior of the solver root. Pre Pull: translates and rotates the root (and all children) by the average motion of the stretched effectors to help achieve faster convergence when reaching far. Pin to Input: locks the translation and rotation of the root bone to the input pose. Overrides any bone settings applied to the root. Good for partial-body solves. Free: treats the root bone like any other and allows it to move freely or according to any bone settings applied to it.
---@field public PrePullRootSettings FRootPrePullSettings @Settings only applicable when Root Behavior is set to "PrePull". Use these values to adjust the gross movement and orientation of the entire skeleton.
---@field public PullChainAlpha number @A global multiplier for all Pull Chain Alpha values on all effectors. Range is 0.0 to 1.0. Default is 1.0.
---@field public MaxAngle number @Maximum angle that a joint can be rotated per constraint iteration. Lower this value if the solve is diverging. Range is 0.0 to 180.0. Default is 30.
---@field public OverRelaxation number @Pushes constraints beyond their normal amount to speed up convergence. Increasing this may speed up convergence, but at the cost of stability. Range is 1.0 - 2.0. Default is 1.3.
---@field public Effectors TArray<UIKRig_FBIKEffector>
---@field public BoneSettings TArray<UIKRig_FBIKBoneSettings>
local UIKRigFBIKSolver = {}

