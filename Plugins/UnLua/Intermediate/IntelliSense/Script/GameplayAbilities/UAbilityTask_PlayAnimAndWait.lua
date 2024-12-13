---@class UAbilityTask_PlayAnimAndWait : UAbilityTask
---@field public OnCompleted MulticastDelegate
---@field public OnBlendOut MulticastDelegate
---@field public OnBlendIn MulticastDelegate
---@field public OnInterrupted MulticastDelegate
---@field public OnCancelled MulticastDelegate
---@field protected AnimSequenceToPlay UAnimSequence
local UAbilityTask_PlayAnimAndWait = {}

function UAbilityTask_PlayAnimAndWait:OnMontageInterrupted() end

---@param Montage UAnimMontage
---@param bInterrupted boolean
function UAbilityTask_PlayAnimAndWait:OnMontageEnded(Montage, bInterrupted) end

---@param Montage UAnimMontage
---@param bInterrupted boolean
function UAbilityTask_PlayAnimAndWait:OnMontageBlendingOut(Montage, bInterrupted) end

---@param Montage UAnimMontage
function UAbilityTask_PlayAnimAndWait:OnMontageBlendedIn(Montage) end

---Start playing an animation montage on the avatar actor and wait for it to finish
---If StopWhenAbilityEnds is true, this montage will be aborted if the ability ends normally. It is always stopped when the ability is explicitly cancelled.
---On normal execution, OnBlendOut is called when the montage is blending out, and OnCompleted when it is completely done playing
---OnInterrupted is called if another montage overwrites this, and OnCancelled is called if the ability or task is cancelled
---@param OwningAbility UGameplayAbility
---@param TaskInstanceName string
---@param AnimSequence UAnimSequence
---@param SlotName string @[opt] 
---@param BlendInTime number @[opt] 
---@param BlendOutTime number @[opt] 
---@param InPlayRate number @[opt] 
---@param StartTimeSeconds number @[opt] 
---@param bStopWhenAbilityEnds boolean @[opt] 
---@param AnimRootMotionTranslationScale number @[opt] 
---@return UAbilityTask_PlayAnimAndWait
function UAbilityTask_PlayAnimAndWait.CreatePlayAnimAndWaitProxy(OwningAbility, TaskInstanceName, AnimSequence, SlotName, BlendInTime, BlendOutTime, InPlayRate, StartTimeSeconds, bStopWhenAbilityEnds, AnimRootMotionTranslationScale) end

