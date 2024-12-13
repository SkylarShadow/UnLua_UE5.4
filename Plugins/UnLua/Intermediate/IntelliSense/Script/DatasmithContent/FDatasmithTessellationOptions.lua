---@class FDatasmithTessellationOptions
---@field public ChordTolerance number @Maximum distance between any generated triangle and the original surface. Smaller values make more triangles.
---@field public MaxEdgeLength number @Maximum length of any edge in the generated triangles. Smaller values make more triangles.
---@field public NormalTolerance number @Maximum angle between adjacent triangles. Smaller values make more triangles.
---@field public StitchingTechnique EDatasmithCADStitchingTechnique @Stitching technique applied on model before tessellation. Sewing could impact number of objects.
local FDatasmithTessellationOptions = {}
