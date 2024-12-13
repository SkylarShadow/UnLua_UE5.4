---Container for properties displayed in Details panel while using USkinWeightsPaintTool
---@class USkinWeightsPaintToolProperties : UBrushBaseProperties
---@field public EditingMode EWeightEditMode @brush vs selection modes
---@field public BrushMode EWeightEditOperation @custom brush modes and falloff types
---@field public ColorMode EWeightColorMode @weight color properties
---@field public ColorRamp TArray<FLinearColor>
---@field public MinColor FLinearColor
---@field public MaxColor FLinearColor
---@field public MirrorAxis integer @weight editing arguments
---@field public MirrorDirection EMirrorDirection
---@field public FloodValue number
---@field public PruneValue number
---@field public BrushConfigAdd FSkinWeightBrushConfig
---@field public BrushConfigReplace FSkinWeightBrushConfig
---@field public BrushConfigMultiply FSkinWeightBrushConfig
---@field public BrushConfigRelax FSkinWeightBrushConfig
local USkinWeightsPaintToolProperties = {}

