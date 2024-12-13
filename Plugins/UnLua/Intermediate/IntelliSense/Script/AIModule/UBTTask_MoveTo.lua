---Move To task node.
---Moves the AI pawn toward the specified Actor or Location blackboard entry using the navigation system.
---@class UBTTask_MoveTo : UBTTask_BlackboardBase
---@field public AcceptableRadius number @fixed distance added to threshold between AI and goal location in destination reach test
---@field public FilterClass TSubclassOf<UNavigationQueryFilter> @"None" will result in default filter being used
---@field public ObservedBlackboardValueTolerance number @if task is expected to react to changes to location represented by BB key     this property can be used to tweak sensitivity of the mechanism. Value is     recommended to be less than AcceptableRadius
---@field public bObserveBlackboardValue boolean @if move goal in BB changes the move will be redirected to new location
---@field public bAllowStrafe boolean
---@field public bAllowPartialPath boolean @if set, use incomplete path when goal can't be reached
---@field public bTrackMovingGoal boolean @if set, path to goal actor will update itself when actor moves
---@field public bRequireNavigableEndLocation boolean @if set, the goal location will need to be navigable
---@field public bProjectGoalLocation boolean @if set, goal location will be projected on navigation data (navmesh) before using
---@field public bReachTestIncludesAgentRadius boolean @if set, radius of AI's capsule will be added to threshold between AI and goal location in destination reach test
---@field public bReachTestIncludesGoalRadius boolean @if set, radius of goal's capsule will be added to threshold between AI and goal location in destination reach test
---@field public bStopOnOverlap boolean @DEPRECATED, please use combination of bReachTestIncludes*Radius instead
---@field public bStopOnOverlapNeedsUpdate boolean
local UBTTask_MoveTo = {}

