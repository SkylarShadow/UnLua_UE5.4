---Composite (subgraph) expression. Exists purely for organzational purposes.
---Under the hood uses reroute expressions for graph compilation. See below
---to understand how a particular reroute's input / output correlates to
---the inputs / outputs of composites and their pin bases.
---     _________________          _________________
---    |   INPUT BASE    |        |   OUTPUT BASE   |
---    +--------+--------+        +--------+--------+
---    |        |   (>)  |   ->   |  (>)   |        |
---    |        |   (>)  |        |  (>)   |        |
---    |        |   (>)  |        |  (>)   |        |
---    |        |   (>)  |        |  (>)   |        |
---    |        |        |        |        |        |
---    +--------+--------+        +--------+--------+
---    | NODE IN:  NONE  |        | NODE IN:  PINS  |
---    | NODE OUT: PINS  |        | NODE OUT: NONE  |
---    |_________________|        |_________________|
---                  ^                |
---                  |                v
---             ____________________________
---            |         COMPOSITE          |
---            +---------+--------+---------+
---        ->  |    (>)  |        |  (>)    |  ->
---            |    (>)  |        |  (>)    |
---            |    (>)  |        |  (>)    |
---            |    (>)  |        |  (>)    |
---            |         |        |         |
---            +---------+--------+---------+
---            | NODE IN:  TO INPUT BASE    |
---            | NODE OUT: FROM OUTPUT BASE |
---            |____________________________|
---@class UMaterialExpressionComposite : UMaterialExpression
---@field public SubgraphName string
---@field public InputExpressions UMaterialExpressionPinBase
---@field public OutputExpressions UMaterialExpressionPinBase
local UMaterialExpressionComposite = {}

