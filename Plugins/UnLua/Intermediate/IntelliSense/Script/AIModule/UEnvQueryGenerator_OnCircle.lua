---@class UEnvQueryGenerator_OnCircle : UEnvQueryGenerator_ProjectedPoints
---@field public CircleRadius FAIDataProviderFloatValue @max distance of path between point and context
---@field public PointOnCircleSpacingMethod EPointOnCircleSpacingMethod @how we are choosing where the points are in the circle
---@field public SpaceBetween FAIDataProviderFloatValue @items will be generated on a circle this much apart
---@field public NumberOfPoints FAIDataProviderIntValue @this many items will be generated on a circle
---@field public ArcDirection FEnvDirection @If you generate items on a piece of circle you define direction of Arc cut here
---@field public ArcAngle FAIDataProviderFloatValue @If you generate items on a piece of circle you define angle of Arc cut here
---@field public AngleRadians number
---@field public CircleCenter TSubclassOf<UEnvQueryContext> @context
---@field public bIgnoreAnyContextActorsWhenGeneratingCircle boolean @ignore tracing into context actors when generating the circle
---@field public CircleCenterZOffset FAIDataProviderFloatValue @context offset
---@field public TraceData FEnvTraceData @horizontal trace for nearest obstacle
---@field public bDefineArc boolean
local UEnvQueryGenerator_OnCircle = {}

