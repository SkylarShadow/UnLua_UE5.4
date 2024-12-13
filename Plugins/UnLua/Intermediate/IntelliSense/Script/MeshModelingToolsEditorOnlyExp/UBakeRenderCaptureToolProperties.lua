---@class UBakeRenderCaptureToolProperties : UInteractiveToolPropertySet
---@field public MapPreview string @The map type to preview
---@field public SamplesPerPixel EBakeTextureSamplesPerPixel @Number of samples per pixel
---@field public TextureSize EBakeTextureResolution @Size of generated textures
---@field public ValidSampleDepthThreshold number @This threshold is used to detect occlusion artefacts (e.g., silhouettes/blotches in the base color) so that texels exhibiting them can be cleaned up i.e., rejected and filled in using the values of nearby valid texels instead. If the threshold is zero, the cleanup step is skipped. If the threshold is too large, texels with artefacts won't be detected and the cleanup step is effectively skipped. If the threshold is too small, texels without artefacts get detected and results will be bad because there won't be enough nearby valid texels from which to infill values. A good starting point is to choose a threshold around the size of the distance (in world space) between the target and source meshes; if the target was generated by VoxWrap then the voxel size estimates this distance.
---@field public bEnableMapPreview boolean
---@field public MapPreviewNamesList TArray<string>
local UBakeRenderCaptureToolProperties = {}

---@return TArray_string_
function UBakeRenderCaptureToolProperties:GetMapPreviewNamesFunc() end

