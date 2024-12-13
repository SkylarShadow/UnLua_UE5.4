---Zero-centered 3D Fractal noise in 1, 2, 3 or 4 channels, created by summing several
---octaves of 3D Perlin noise, increasing the frequency and decreasing the amplitude at each octave.
---@class UMaterialExpressionMaterialXFractal3D : UMaterialExpression
---@field public Position FExpressionInput @The name of a vector3-type node specifying the 3D position at which the noise is evaluated. By default the vector is in local space
---@field public Amplitude FExpressionInput @Defaults to 'ConstAmplitude' if not specified
---@field public ConstAmplitude number @only used if Amplitude is not hooked up
---@field public Octaves FExpressionInput @Defaults to 'ConstOctaves' if not specified
---@field public ConstOctaves integer @only used if Octaves is not hooked up
---@field public Lacunarity FExpressionInput @Defaults to 'ConstLacunarity' if not specified
---@field public ConstLacunarity number @only used if Lacunarity is not hooked up
---@field public Diminish FExpressionInput @Defaults to 'ConstDiminish' if not specified
---@field public ConstDiminish number @only used if Diminish is not hooked up
---@field public Scale number @can also be done with a multiply on the Position
---@field public bTurbulence boolean @How multiple frequencies are getting combined
---@field public Levels integer @1 = fast but little detail, .. larger numbers cost more performance
---@field public OutputMin number
---@field public OutputMax number
local UMaterialExpressionMaterialXFractal3D = {}

