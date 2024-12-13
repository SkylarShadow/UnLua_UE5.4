---StereoLayer Extensions Function Library
---@class UStereoLayerFunctionLibrary : UBlueprintFunctionLibrary
local UStereoLayerFunctionLibrary = {}

---Show the splash screen and override the VR display
function UStereoLayerFunctionLibrary.ShowSplashScreen() end

---Set splash screen attributes
---@param Texture UTexture
---@param Scale FVector2D @[opt] 
---@param Offset FVector @[opt] 
---@param bShowLoadingMovie boolean @[opt] 
---@param bShowOnSet boolean @[opt] 
function UStereoLayerFunctionLibrary.SetSplashScreen(Texture, Scale, Offset, bShowLoadingMovie, bShowOnSet) end

---Hide the splash screen and return to normal display.
function UStereoLayerFunctionLibrary.HideSplashScreen() end

---@param InAutoShowEnabled boolean
function UStereoLayerFunctionLibrary.EnableAutoLoadingSplashScreen(InAutoShowEnabled) end

