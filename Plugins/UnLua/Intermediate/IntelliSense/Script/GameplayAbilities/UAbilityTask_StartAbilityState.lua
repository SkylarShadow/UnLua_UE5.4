---An ability state is simply an ability task that provides a way to handle the ability being interrupted.
---You can use ability states to do state-specific cleanup if the ability ends or was interrupted at a certain point during it's execution.
---An ability state will always result in either 'OnStateEnded' or 'OnStateInterrupted' being called.
---'OnStateEnded' will be called if:
---- The ability itself ends via AGameplayAbility::EndAbility
---- The ability state is manually ended via AGameplayAbility::EndAbilityState
---- Another ability state is started will 'bEndCurrentState' set to true
---'OnStateInterrupted' will be called if:
---- The ability itself is cancelled via AGameplayAbility::CancelAbility
---@class UAbilityTask_StartAbilityState : UAbilityTask
---@field public OnStateEnded MulticastDelegate @Invoked if 'EndAbilityState' is called or if 'EndAbility' is called and this state is active.
---@field public OnStateInterrupted MulticastDelegate @Invoked if the ability was interrupted and this state is active.
local UAbilityTask_StartAbilityState = {}

---Starts a new ability state.
---@param OwningAbility UGameplayAbility
---@param StateName string
---@param bEndCurrentState boolean @[opt] 
---@return UAbilityTask_StartAbilityState
function UAbilityTask_StartAbilityState.StartAbilityState(OwningAbility, StateName, bEndCurrentState) end

