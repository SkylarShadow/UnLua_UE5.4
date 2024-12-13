---@class UIKRig_FBIKEffector : UObject
---@field public GoalName string @The Goal that is driving this effector's transform.
---@field public BoneName string @The bone that this effector will pull on.
---@field public ChainDepth integer @Range 0-inf (default is 0). Explicitly set the number of bones up the hierarchy to consider part of this effector's 'chain'. The "chain" of bones is used to apply Preferred Angles, Pull Chain Alpha and Chain "Sub Solves". If left at 0, the solver will attempt to determine the root of the chain by searching up the hierarchy until it finds a branch or another effector, whichever it finds first.
---@field public StrengthAlpha number @Range 0-1 (default is 1.0). The strength of the effector when pulling the bone towards it's target location. At 0.0, the effector does not pull at all, but the bones between the effector and the root will still slightly resist motion from other effectors. This can thus act as a "stabilizer" for parts of the body that you do not want to behave in a pure FK fashion.
---@field public PullChainAlpha number @Range 0-1 (default is 1.0). When enabled (greater than 0.0), the solver internally partitions the skeleton into 'chains' which extend from the effector up the hierarchy by "Chain Depth". If Chain Depth is 0, the chain root is set to the nearest fork in the skeleton. These chains are pre-rotated and translated, as a whole, towards the effector targets. This can improve the results for sparse bone chains, and significantly improve convergence on dense bone chains. But it may cause undesirable results in highly constrained bone chains (like robot arms).
---@field public PinRotation number @Range 0-1 (default is 1.0). Blends the effector bone rotation between the rotation of the effector transform (1.0) and the rotation of the input bone (0.0).
---@field public IndexInSolver integer
local UIKRig_FBIKEffector = {}

