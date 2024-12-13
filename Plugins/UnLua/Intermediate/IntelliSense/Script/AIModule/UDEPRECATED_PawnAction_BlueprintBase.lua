---@class UDEPRECATED_PawnAction_BlueprintBase : UDEPRECATED_PawnAction
local UDEPRECATED_PawnAction_BlueprintBase = {}

---@param ControlledPawn APawn
---@param DeltaSeconds number
function UDEPRECATED_PawnAction_BlueprintBase:ActionTick(ControlledPawn, DeltaSeconds) end

---Blueprint interface
---@param ControlledPawn APawn
function UDEPRECATED_PawnAction_BlueprintBase:ActionStart(ControlledPawn) end

---@param ControlledPawn APawn
function UDEPRECATED_PawnAction_BlueprintBase:ActionResume(ControlledPawn) end

---@param ControlledPawn APawn
function UDEPRECATED_PawnAction_BlueprintBase:ActionPause(ControlledPawn) end

---@param ControlledPawn APawn
---@param WithResult integer
function UDEPRECATED_PawnAction_BlueprintBase:ActionFinished(ControlledPawn, WithResult) end

