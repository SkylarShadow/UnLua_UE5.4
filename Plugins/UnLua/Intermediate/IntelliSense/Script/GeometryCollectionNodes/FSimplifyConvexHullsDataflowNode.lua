---@class FSimplifyConvexHullsDataflowNode : FDataflowNode
---@field public Collection FManagedArrayCollection
---@field public OptionalSelectionFilter FDataflowTransformSelection @Optional transform selection to compute leaf hulls on -- if not provided, all leaf hulls will be computed.
---@field public SimplifyMethod EConvexHullSimplifyMethod
---@field public SimplificationAngleThreshold number @Simplified hull should preserve angles larger than this (in degrees).  Used by the AngleTolerance simplification method.
---@field public SimplificationDistanceThreshold number @Simplified hull should stay within this distance of the initial convex hull. Used by the MeshQSlim simplification method.
---@field public MinTargetTriangleCount integer @The minimum number of faces to use for the convex hull. For MeshQSlim simplification, this is a triangle count, which may be further reduced on conversion back to a convex hull.
---@field public bUseExistingVertices boolean @Whether to restrict the simplified hulls to only use vertices from the original hulls.
local FSimplifyConvexHullsDataflowNode = {}
