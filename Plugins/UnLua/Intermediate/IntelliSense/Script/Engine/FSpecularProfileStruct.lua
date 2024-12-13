---struct with all the settings we want in USpecularProfile, separate to make it easer to pass this data around in the engine.
---@class FSpecularProfileStruct
---@field public Format ESpecularProfileFormat @Define the texture used as a specular profile
---@field public ViewColor FRuntimeCurveLinearColor @Define the view facing color
---@field public LightColor FRuntimeCurveLinearColor @Define the light facing color
---@field public Texture UTexture2D @Define the texture used as a specular profile
local FSpecularProfileStruct = {}
