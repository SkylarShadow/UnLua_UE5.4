---Automatically group pieces of a fractured Collection into a specified number of clusters
---@class FAutoClusterDataflowNode : FDataflowNode
---@field public ClusterSizeMethod EClusterSizeMethodEnum @How to choose the size of the clusters to create
---@field public ClusterSites integer @Use a Voronoi diagram with this many Voronoi sites as a guide for deciding cluster boundaries
---@field public ClusterFraction number @Choose the number of Voronoi sites used for clustering as a fraction of the number of child bones to process
---@field public SiteSize number @Choose the Edge-Size of the cube used to groups bones under a cluster (in cm).
---@field public ClusterGridWidth integer @Choose the number of cluster sites to distribute along the X axis
---@field public ClusterGridDepth integer @Choose the number of cluster sites to distribute along the Y axis
---@field public ClusterGridHeight integer @Choose the number of cluster sites to distribute along the Z axis
---@field public DriftIterations integer @For a grid distribution, optionally iteratively recenter the grid points to the center of the cluster geometry (technically: applying K-Means iterations) to balance the shape and distribution of the clusters
---@field public MinimumSize number @If a cluster has volume less than this value (in cm) cubed, then the auto-cluster process will attempt to merge it into a neighboring cluster.
---@field public bPreferConvexity boolean @Whether to favor clusters that have a convex shape. (Note: Does not support ByGrid clustering.)
---@field public ConcavityTolerance number @If > 0, cube root of maximum concave volume to add per cluster (ignoring concavity of individual parts)
---@field public AutoCluster boolean @If true, bones will only be added to the same cluster if they are physically connected (either directly, or via other bones in the same cluster)
---@field public EnforceSiteParameters boolean @If true, make sure the site parameters are matched as close as possible ( bEnforceConnectivity can make the number of site larger than the requested input may produce without it )
---@field public AvoidIsolated boolean @If true, prevent the creation of clusters with only a single child. Either by merging into a neighboring cluster, or not creating the cluster.
---@field public Collection FManagedArrayCollection @Fractured GeometryCollection to cluster
---@field public TransformSelection FDataflowTransformSelection @Bone selection for the clustering
local FAutoClusterDataflowNode = {}