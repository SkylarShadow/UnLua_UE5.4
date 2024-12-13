---@class UMaterialExpressionSubstrateVerticalLayering : UMaterialExpressionSubstrateBSDF
---@field public Top FExpressionInput @Substrate material layer on top of the Base material layer
---@field public Base FExpressionInput @Substrate material layer below the Top material layer
---@field public Thickness FExpressionInput @Thickness of the Top material layer
---@field public bUseParameterBlending boolean @Merge Top and Base into a single material by mixing their inputs rather than their evaluation. This makes lighting evaluation cheaper (Default: off)
local UMaterialExpressionSubstrateVerticalLayering = {}

