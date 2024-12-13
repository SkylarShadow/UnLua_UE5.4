---@class UDEPRECATED_PawnAction_Move : UDEPRECATED_PawnAction
---@field protected GoalActor AActor
---@field protected GoalLocation FVector
---@field protected AcceptableRadius number
---@field protected FilterClass TSubclassOf<UNavigationQueryFilter> @"None" will result in default filter being used
---@field protected bAllowStrafe boolean
---@field protected bFinishOnOverlap boolean @if set to true (default) will make action succeed when the pawn's collision component overlaps with goal's collision component
---@field protected bUsePathfinding boolean @if set, movement will use path finding
---@field protected bAllowPartialPath boolean @if set, use incomplete path when goal can't be reached
---@field protected bProjectGoalToNavigation boolean @if set, GoalLocation will be projected on navigation before using
---@field protected bUpdatePathToGoal boolean @if set, path to GoalActor will be updated with goal's movement
---@field protected bAbortSubActionOnPathChange boolean @if set, other actions with the same priority will be aborted when path is changed
local UDEPRECATED_PawnAction_Move = {}

