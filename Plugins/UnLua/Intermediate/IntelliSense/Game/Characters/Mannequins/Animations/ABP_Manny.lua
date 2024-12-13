---@class ABP_Manny_C : UAnimInstance
---@field public UberGraphFrame FPointerToUberGraphFrame
---@field public __AnimBlueprintMutables FAnimBlueprintGeneratedMutableData
---@field public AnimBlueprintExtension_PropertyAccess FAnimSubsystemInstance
---@field public AnimBlueprintExtension_Base FAnimSubsystemInstance
---@field public AnimGraphNode_Root FAnimNode_Root
---@field public AnimGraphNode_TransitionResult_7 FAnimNode_TransitionResult
---@field public AnimGraphNode_TransitionResult_6 FAnimNode_TransitionResult
---@field public AnimGraphNode_BlendSpacePlayer FAnimNode_BlendSpacePlayer
---@field public AnimGraphNode_StateResult_5 FAnimNode_StateResult
---@field public AnimGraphNode_SequencePlayer_3 FAnimNode_SequencePlayer
---@field public AnimGraphNode_StateResult_4 FAnimNode_StateResult
---@field public AnimGraphNode_StateMachine_1 FAnimNode_StateMachine
---@field public AnimGraphNode_SaveCachedPose FAnimNode_SaveCachedPose
---@field public AnimGraphNode_TransitionResult_5 FAnimNode_TransitionResult
---@field public AnimGraphNode_TransitionResult_4 FAnimNode_TransitionResult
---@field public AnimGraphNode_TransitionResult_3 FAnimNode_TransitionResult
---@field public AnimGraphNode_TransitionResult_2 FAnimNode_TransitionResult
---@field public AnimGraphNode_TransitionResult_1 FAnimNode_TransitionResult
---@field public AnimGraphNode_TransitionResult FAnimNode_TransitionResult
---@field public AnimGraphNode_ApplyAdditive FAnimNode_ApplyAdditive
---@field public AnimGraphNode_UseCachedPose_1 FAnimNode_UseCachedPose
---@field public AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field public AnimGraphNode_StateResult_3 FAnimNode_StateResult
---@field public AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field public AnimGraphNode_StateResult_2 FAnimNode_StateResult
---@field public AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field public AnimGraphNode_StateResult_1 FAnimNode_StateResult
---@field public AnimGraphNode_UseCachedPose FAnimNode_UseCachedPose
---@field public AnimGraphNode_StateResult FAnimNode_StateResult
---@field public AnimGraphNode_StateMachine FAnimNode_StateMachine
---@field public AnimGraphNode_Slot FAnimNode_Slot
---@field public AnimGraphNode_ControlRig FAnimNode_ControlRig
---@field public __CustomProperty_ShouldDoIKTrace_385011E94C94F6DE70691192D3E0622C boolean
---@field public Character ACharacter
---@field public MovementComponent UCharacterMovementComponent
---@field public Velocity FVector
---@field public GroundSpeed number
---@field public ShouldMove boolean
---@field public IsFalling boolean
local ABP_Manny_C = {}

---@param AnimGraph FPoseLink @[out] 
function ABP_Manny_C:AnimGraph(AnimGraph) end

function ABP_Manny_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_Manny_AnimGraphNode_TransitionResult_305F37BB4A5AD886760B8E99A5C561E1() end

---Executed when the Animation is updated
---@param DeltaTimeX number
function ABP_Manny_C:BlueprintUpdateAnimation(DeltaTimeX) end

---Executed when the Animation is initialized
function ABP_Manny_C:BlueprintInitializeAnimation() end

