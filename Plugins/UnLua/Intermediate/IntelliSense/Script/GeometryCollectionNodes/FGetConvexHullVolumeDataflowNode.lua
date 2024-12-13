---Get the sum of volumes of the convex hulls on the selected nodes
---@class FGetConvexHullVolumeDataflowNode : FDataflowNode
---@field public Collection FManagedArrayCollection
---@field public TransformSelection FDataflowTransformSelection @The transforms to consider
---@field public Volume number @Sum of convex hull volumes
---@field public bSumChildrenForClustersWithoutHulls boolean @For any cluster transform that has no convex hulls, whether to fall back to the convex hulls of the cluster's children. Otherwise, the cluster will not add to the total volume sum.
---@field public bVolumeOfUnion boolean @Whether to take the volume of the union of selected hulls, rather than the sum of each hull volume separately. This is more expensive but more accurate when hulls overlap.
local FGetConvexHullVolumeDataflowNode = {}
