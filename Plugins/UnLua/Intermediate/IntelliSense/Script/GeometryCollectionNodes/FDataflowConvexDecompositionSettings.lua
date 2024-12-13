---@class FDataflowConvexDecompositionSettings
---@field public MinSizeToDecompose number @If greater than zero, the minimum geometry size (cube root of volume) to consider for convex decomposition
---@field public MaxGeoToHullVolumeRatioToDecompose number @If the geo volume / hull volume ratio is greater than this, do not consider convex decomposition
---@field public ErrorTolerance number @Stop splitting when hulls have error less than this (expressed in cm; will be cubed for volumetric error). Note: ErrorTolerance must be > 0 or MaxHullsPerGeometry > 1, or decomposition will not be performed.
---@field public MaxHullsPerGeometry integer @If greater than zero, maximum number of convex hulls to use in each convex decomposition. Note: ErrorTolerance must be > 0 or MaxHullsPerGeometry > 1, or decomposition will not be performed.
---@field public MinThicknessTolerance number @Optionally specify a minimum thickness (in cm) for convex parts; parts below this thickness will always be merged away. Overrides NumOutputHulls and ErrorTolerance when needed.
---@field public NumAdditionalSplits integer @Control the search effort spent per convex decomposition: larger values will require more computation but may find better convex decompositions
local FDataflowConvexDecompositionSettings = {}
