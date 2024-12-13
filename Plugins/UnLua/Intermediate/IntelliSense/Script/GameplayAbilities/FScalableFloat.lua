---Generic numerical value in the form Value * Curve[Level]
---@class FScalableFloat
---@field public Value number @Raw value, is multiplied by curve
---@field public Curve FCurveTableRowHandle @Curve that is evaluated at a specific level. If found, it is multipled by Value
---@field public RegistryType FDataRegistryType @Name of Data Registry containing curve to use. If set the RowName inside Curve is used as the item name
local FScalableFloat = {}
