---FNode
---             Base class for node based evaluation within the Dataflow graph.
---Note : Do NOT create mutable variables in the classes derived from FDataflowNode. The state
---       is stored on the FContext. The Evaluate is const to allow support for multithreaded
---       evaluation.
---@class FDataflowNode
---@field public bActive boolean
local FDataflowNode = {}
