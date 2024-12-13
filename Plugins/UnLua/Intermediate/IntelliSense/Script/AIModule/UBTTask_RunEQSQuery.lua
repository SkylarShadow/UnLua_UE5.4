---Run Environment Query System Query task node.
---Runs the specified environment query when executed.
---@class UBTTask_RunEQSQuery : UBTTask_BlackboardBase
---@field public QueryTemplate UEnvQuery
---@field public QueryParams TArray<FEnvNamedValue>
---@field public QueryConfig TArray<FAIDynamicParam>
---@field public RunMode integer
---@field public EQSQueryBlackboardKey FBlackboardKeySelector
---@field public bUseBBKey boolean
---@field public EQSRequest FEQSParametrizedQueryExecutionRequest
---@field public bUpdateBBOnFail boolean
local UBTTask_RunEQSQuery = {}

