---Ability task to simply play a montage. Many games will want to make a modified version of this task that looks for game-specific events
---@class UAbilityTask_PlayMontageAndWait : UAbilityTask
---@field public OnCompleted MulticastDelegate
---@field public OnBlendOut MulticastDelegate
---@field public OnInterrupted MulticastDelegate
---@field public OnCancelled MulticastDelegate
---@field protected MontageToPlay UAnimMontage
---@field protected Rate number
---@field protected StartSection string
---@field protected AnimRootMotionTranslationScale number
---@field protected StartTimeSeconds number
---@field protected bStopWhenAbilityEnds boolean
---@field protected bAllowInterruptAfterBlendOut boolean
local UAbilityTask_PlayMontageAndWait = {}

function UAbilityTask_PlayMontageAndWait:OnMontageInterrupted() end

---@param Montage UAnimMontage
---@param bInterrupted boolean
function UAbilityTask_PlayMontageAndWait:OnMontageEnded(Montage, bInterrupted) end

---@param Montage UAnimMontage
---@param bInterrupted boolean
function UAbilityTask_PlayMontageAndWait:OnMontageBlendingOut(Montage, bInterrupted) end

---Callback function for when the owning Gameplay Ability is cancelled
function UAbilityTask_PlayMontageAndWait:OnGameplayAbilityCancelled() end

---Start playing an animation montage on the avatar actor and wait for it to finish
---If StopWhenAbilityEnds is true, this montage will be aborted if the ability ends normally. It is always stopped when the ability is explicitly cancelled.
---On normal execution, OnBlendOut is called when the montage is blending out, and OnCompleted when it is completely done playing
---OnInterrupted is called if another montage overwrites this, and OnCancelled is called if the ability or task is cancelled
---@param OwningAbility UGameplayAbility
---@param TaskInstanceName string
---@param MontageToPlay UAnimMontage
---@param Rate number @[opt] 
---@param StartSection string @[opt] 
---@param bStopWhenAbilityEnds boolean @[opt] 
---@param AnimRootMotionTranslationScale number @[opt] 
---@param StartTimeSeconds number @[opt] 
---@param bAllowInterruptAfterBlendOut boolean @[opt] 
---@return UAbilityTask_PlayMontageAndWait
function UAbilityTask_PlayMontageAndWait.CreatePlayMontageAndWaitProxy(OwningAbility, TaskInstanceName, MontageToPlay, Rate, StartSection, bStopWhenAbilityEnds, AnimRootMotionTranslationScale, StartTimeSeconds, bAllowInterruptAfterBlendOut) end

