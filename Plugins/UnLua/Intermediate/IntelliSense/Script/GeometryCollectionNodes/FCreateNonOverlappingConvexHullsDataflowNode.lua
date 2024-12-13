---Generates convex hull representation for the bones for simulation
---@class FCreateNonOverlappingConvexHullsDataflowNode : FDataflowNode
---@field public Collection FManagedArrayCollection
---@field public CanExceedFraction number @Fraction (of geometry volume) by which a cluster's convex hull volume can exceed the actual geometry volume before instead using the hulls of the children.  0 means the convex volume cannot exceed the geometry volume; 1 means the convex volume is allowed to be 100% larger (2x) the geometry volume.
---@field public SimplificationDistanceThreshold number @Computed convex hulls are simplified to keep points spaced at least this far apart (except where needed to keep the hull from collapsing to zero volume)
---@field public OverlapRemovalMethod EConvexOverlapRemovalMethodEnum @Whether and in what cases to automatically cut away overlapping parts of the convex hulls, to avoid the simulation 'popping' to fix the overlaps
---@field public OverlapRemovalShrinkPercent number @Overlap removal will be computed as if convex hulls were this percentage smaller (in range 0-100)
---@field public CanRemoveFraction number @Fraction of the convex hulls for a cluster that we can remove before using the hulls of the children
local FCreateNonOverlappingConvexHullsDataflowNode = {}
