---Defines settings for UV behavior for a UV channel on ribbons.
---@class FNiagaraRibbonUVSettings
---@field public DistributionMode ENiagaraRibbonUVDistributionMode @Specifies how ribbon UVs are distributed along the length of a ribbon.
---@field public LeadingEdgeMode ENiagaraRibbonUVEdgeMode @Specifies how UVs transition into life at the leading edge of the ribbon.
---@field public TrailingEdgeMode ENiagaraRibbonUVEdgeMode @Specifies how UVs transition out of life at the trailing edge of the ribbon.
---@field public bEnablePerParticleUOverride boolean @Enables overriding the U component with values read from the particles. When enabled, edge behavior and distribution are ignored.
---@field public bEnablePerParticleVRangeOverride boolean @Enables overriding the range of the V component with values read from the particles.
---@field public TilingLength number @Specifies the length in world units to use when tiling UVs across the ribbon when using one of the tiled distribution modes.
---@field public Offset FVector2D @Specifies an additional offset which is applied to the UV range
---@field public Scale FVector2D @Specifies an additional scaler which is applied to the UV range.
local FNiagaraRibbonUVSettings = {}
