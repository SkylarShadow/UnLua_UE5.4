---@class FCreateLeafConvexHullsDataflowNode : FDataflowNode
---@field public Collection FManagedArrayCollection
---@field public OptionalSelectionFilter FDataflowTransformSelection @Optional transform selection to compute leaf hulls on -- if not provided, all leaf hulls will be computed.
---@field public GenerateMethod EGenerateConvexMethod @How convex hulls are generated -- computed from geometry, imported from external collision shapes, or an intersection of both options.
---@field public IntersectIfComputedIsSmallerByFactor number @If GenerateMethod is Intersect, only actually intersect when the volume of the Computed Hull is less than this fraction of the volume of the External Hull(s).
---@field public MinExternalVolumeToIntersect number @If GenerateMethod is Intersect, only actually intersect if the volume of the External Hull(s) exceed this threshold.
---@field public bComputeIntersectionsBeforeHull boolean @Whether to compute the intersection before computing convex hulls. Typically should be enabled.
---@field public SimplificationDistanceThreshold number @Computed convex hulls are simplified to keep points spaced at least this far apart (except where needed to keep the hull from collapsing to zero volume).
---@field public ConvexDecompositionSettings FDataflowConvexDecompositionSettings
local FCreateLeafConvexHullsDataflowNode = {}
