---Update the proximity (contact) graph for the bones in a Collection
---@class FProximityDataflowNode : FDataflowNode
---@field public ProximityMethod EProximityMethodEnum @Which method to use to decide whether a given piece of geometry is in proximity with another
---@field public DistanceThreshold number @If hull-based proximity detection is enabled, amount to expand hulls when searching for overlapping neighbors
---@field public ContactThreshold number @If greater than zero, proximity will be additionally filtered by a 'contact' threshold, in cm, to exclude grazing / corner proximity
---@field public FilterContactMethod EProximityContactFilteringMethodEnum @How to use the Contact Threshold (if > 0) to filter out unwanted small or corner contacts from the proximity graph. If contact threshold is zero, no filtering is applied.
---@field public bUseAsConnectionGraph boolean @Whether to automatically transform the proximity graph into a connection graph to be used for simulation
---@field public ContactAreaMethod EConnectionContactAreaMethodEnum @The method used to compute contact areas for simulation purposes (only when 'Use As Connection Graph' is enabled)
---@field public bRecomputeConvexHulls boolean @Whether to compute new convex hulls for proximity, or use the pre-existing hulls on the Collection, when using convex hulls to determine proximity
---@field public Collection FManagedArrayCollection @GeometryCollection to update the proximity graph on
local FProximityDataflowNode = {}