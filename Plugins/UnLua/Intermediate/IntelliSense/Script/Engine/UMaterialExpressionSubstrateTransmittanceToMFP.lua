---@class UMaterialExpressionSubstrateTransmittanceToMFP : UMaterialExpressionSubstrateUtilityBase
---@field public TransmittanceColor FExpressionInput @The colored transmittance for a view perpendicular to the surface. The transmittance for other view orientations will automatically be deduced according to surface thickness.
---@field public Thickness FExpressionInput @The desired thickness in centimeter. Another use case example: this node output called thickness can be modulated before it is plugged in a slab node, this can be used to achieve simple scattering/transmittance variation of the same material.
local UMaterialExpressionSubstrateTransmittanceToMFP = {}

