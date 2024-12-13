---AbilityAsync is a base class for ability-specific BlueprintAsyncActions.
---These are similar to ability tasks, but they can be executed from any blueprint like an actor and are not tied to a specific ability lifespan.
---By default these actions are only kept alive by the blueprint graph that spawns them and will eventually be destroyed if the graph instance is deleted or spawns a replacement.
---EndAction should be called when a one-time action has succeeded or failed, but for longer-lived actions with multiple triggers it can be called from blueprints.
---@class UAbilityAsync : UCancellableAsyncAction
local UAbilityAsync = {}

---Explicitly end the action, will disable any callbacks and allow action to be destroyed
function UAbilityAsync:EndAction() end

