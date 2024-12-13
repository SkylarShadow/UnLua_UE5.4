---@class UBlueprintEditorLibrary : UBlueprintFunctionLibrary
local UBlueprintEditorLibrary = {}

---Replace any old operator nodes (float + float, vector + float, int + vector, etc)
---with the newer Promotable Operator version of the node. Preserve any connections the
---original node had to the newer version of the node.
---@param Blueprint UBlueprint
function UBlueprintEditorLibrary.UpgradeOperatorNodes(Blueprint) end

---Sets "Instance Editable" to true/false on a Blueprint variable
---@param Blueprint UBlueprint
---@param VariableName string
---@param bInstanceEditable boolean
function UBlueprintEditorLibrary.SetBlueprintVariableInstanceEditable(Blueprint, VariableName, bInstanceEditable) end

---Sets "Expose To Cinematics" to true/false on a Blueprint variable
---@param Blueprint UBlueprint
---@param VariableName string
---@param bExposeToCinematics boolean
function UBlueprintEditorLibrary.SetBlueprintVariableExposeToCinematics(Blueprint, VariableName, bExposeToCinematics) end

---Sets "Expose On Spawn" to true/false on a Blueprint variable
---@param Blueprint UBlueprint
---@param VariableName string
---@param bExposeOnSpawn boolean
function UBlueprintEditorLibrary.SetBlueprintVariableExposeOnSpawn(Blueprint, VariableName, bExposeOnSpawn) end

---Replace any references of variables with the OldVarName to references of those with the NewVarName if possible
---@param Blueprint UBlueprint
---@param OldVarName string
---@param NewVarName string
function UBlueprintEditorLibrary.ReplaceVariableReferences(Blueprint, OldVarName, NewVarName) end

---Attempts to reparent the given blueprint to the new chosen parent class.
---@param Blueprint UBlueprint
---@param NewParentClass TSubclassOf_UObject_
function UBlueprintEditorLibrary.ReparentBlueprint(Blueprint, NewParentClass) end

---Attempts to rename the given graph with a new name
---@param Graph UEdGraph
---@param NewNameStr string @[opt] 
function UBlueprintEditorLibrary.RenameGraph(Graph, NewNameStr) end

---Deletes any unused blueprint created variables the given blueprint.
---An Unused variable is any BP variable that is not referenced in any
---blueprint graphs
---@param Blueprint UBlueprint
---@return integer
function UBlueprintEditorLibrary.RemoveUnusedVariables(Blueprint) end

---Remove any nodes in this blueprint that have no connections made to them.
---@param Blueprint UBlueprint
function UBlueprintEditorLibrary.RemoveUnusedNodes(Blueprint) end

---Removes the given graph from the blueprint if possible
---@param Blueprint UBlueprint
---@param Graph UEdGraph
function UBlueprintEditorLibrary.RemoveGraph(Blueprint, Graph) end

---Deletes the function of the given name on this blueprint. Does NOT replace function call sites.
---@param Blueprint UBlueprint
---@param FuncName string
function UBlueprintEditorLibrary.RemoveFunctionGraph(Blueprint, FuncName) end

---Attempt to refresh any open blueprint editors for the given asset
---@param BP UBlueprint
function UBlueprintEditorLibrary.RefreshOpenEditorsForBlueprint(BP) end

---Refresh any open blueprint editors
function UBlueprintEditorLibrary.RefreshAllOpenBlueprintEditors() end

---Casts the provided Object to a Blueprint - the root asset type of a blueprint asset. Note
---that the blueprint asset itself is editor only and not present in cooked assets.
---@param Object UObject
---@return UBlueprint
function UBlueprintEditorLibrary.GetBlueprintAsset(Object) end

---Gets the class generated when this blueprint is compiled
---@param BlueprintObj UBlueprint
---@return TSubclassOf_UObject_
function UBlueprintEditorLibrary.GeneratedClass(BlueprintObj) end

---Finds the graph with the given name on the blueprint. Null if it doesn't have one.
---@param Blueprint UBlueprint
---@param GraphName string
---@return UEdGraph
function UBlueprintEditorLibrary.FindGraph(Blueprint, GraphName) end

---Finds the event graph of the given blueprint. Null if it doesn't have one. This will only return
---the primary event graph of the blueprint (the graph named "EventGraph").
---@param Blueprint UBlueprint
---@return UEdGraph
function UBlueprintEditorLibrary.FindEventGraph(Blueprint) end

---Compiles the given blueprint.
---@param Blueprint UBlueprint
function UBlueprintEditorLibrary.CompileBlueprint(Blueprint) end

---Adds a function to the given blueprint
---@param Blueprint UBlueprint
---@param FuncName string @[opt] 
---@return UEdGraph
function UBlueprintEditorLibrary.AddFunctionGraph(Blueprint, FuncName) end

