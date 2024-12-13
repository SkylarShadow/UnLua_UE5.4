---Things to remember:
---* Actions are created paused
---@class UDEPRECATED_PawnAction : UObject
---@field private Instigator UObject @indicates an object that caused this action. Used for mass removal of actions     by specific object
---@field protected BrainComp UBrainComponent @
---@field protected bAllowNewSameClassInstance boolean @if this is FALSE and we're trying to push a new instance of a given class,     but the top of the stack is already an instance of that class ignore the attempted push
---@field protected bReplaceActiveSameClassInstance boolean @if this is TRUE, when we try to push a new instance of an action who has the     same class as the action on the top of the stack, pop the one on the stack, and push the new one     NOTE: This trumps bAllowNewClassInstance (e.g. if this is true and bAllowNewClassInstance     is false the active instance will still be replaced)
---@field protected bShouldPauseMovement boolean @this is a temporary solution to allow having movement action running in background while there's     another action on top doing its thing     @@note should go away once AI resource locking comes on-line
---@field protected bAlwaysNotifyOnFinished boolean @if set, action will call OnFinished notify even when ending as FailedToStart
local UDEPRECATED_PawnAction = {}

---Blueprint interface
---@return integer
function UDEPRECATED_PawnAction:GetActionPriority() end

---@param WithResult integer
function UDEPRECATED_PawnAction:Finish(WithResult) end

---@param WorldContextObject UObject
---@param ActionClass TSubclassOf_UDEPRECATED_PawnAction_
---@return UDEPRECATED_PawnAction
function UDEPRECATED_PawnAction.CreateActionInstance(WorldContextObject, ActionClass) end

