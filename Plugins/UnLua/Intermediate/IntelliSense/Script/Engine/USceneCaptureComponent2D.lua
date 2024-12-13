---Used to capture a 'snapshot' of the scene from a single plane and feed it to a render target.
---@class USceneCaptureComponent2D : USceneCaptureComponent
---@field public ProjectionType integer
---@field public FOVAngle number @Camera field of view (in degrees).
---@field public OrthoWidth number @The desired width (in world units) of the orthographic view (ignored in Perspective mode)
---@field public bAutoCalculateOrthoPlanes boolean @Automatically determine a min/max Near/Far clip plane position depending on OrthoWidth value
---@field public AutoPlaneShift number @Manually adjusts the planes of this camera, maintaining the distance between them. Positive moves out to the farplane, negative towards the near plane
---@field public bUpdateOrthoPlanes boolean @Adjusts the near/far planes and the view origin of the current camera automatically to avoid clipping and light artefacting
---@field public bUseCameraHeightAsViewTarget boolean @If UpdateOrthoPlanes is enabled, this setting will use the cameras current height to compensate the distance to the general view (as a pseudo distance to view target when one isn't present)
---@field public TextureTarget UTextureRenderTarget2D @Output render target of the scene capture that can be read in materials.
---@field public CompositeMode integer @When enabled, the scene capture will composite into the render target instead of overwriting its contents.
---@field public PostProcessSettings FPostProcessSettings
---@field public PostProcessBlendWeight number @Range (0.0, 1.0) where 0 indicates no effect, 1 indicates full effect.
---@field public bOverride_CustomNearClippingPlane boolean
---@field public CustomNearClippingPlane number @Set bOverride_CustomNearClippingPlane to true if you want to use a custom clipping plane instead of GNearClippingPlane.
---@field public bUseCustomProjectionMatrix boolean @Whether a custom projection matrix will be used during rendering. Use with caution. Does not currently affect culling
---@field public CustomProjectionMatrix FMatrix @The custom projection matrix to use
---@field public bUseFauxOrthoViewPos boolean
---@field public bEnableOrthographicTiling boolean @Render the scene in n frames (i.e TileCount) - Ignored in Perspective mode, works only in Orthographic mode when CaptureSource uses SceneColor (not FinalColor) If CaptureSource uses FinalColor, tiling will be ignored and a Warning message will be logged
---@field public NumXTiles integer @Number of X tiles to render. Ignored in Perspective mode, works only in Orthographic mode
---@field public NumYTiles integer @Number of Y tiles to render. Ignored in Perspective mode, works only in Orthographic mode
---@field public bEnableClipPlane boolean @Enables a clip plane while rendering the scene capture which is useful for portals. The global clip plane must be enabled in the renderer project settings for this to work.
---@field public ClipPlaneBase FVector @Base position for the clip plane, can be any position on the plane.
---@field public ClipPlaneNormal FVector @Normal for the plane.
---@field public bRenderInMainRenderer boolean @Render scene capture as additional render passes of the main renderer rather than as an independent renderer. Can only apply to scene depth and device depth modes.
---@field public bCameraCutThisFrame boolean @True if we did a camera cut this frame. Automatically reset to false at every capture. This flag affects various things in the renderer (such as whether to use the occlusion queries from last frame, and motion blur). Similar to UPlayerCameraManager::bGameCameraCutThisFrame.
---@field public bConsiderUnrenderedOpaquePixelAsFullyTranslucent boolean @Whether to only render exponential height fog on opaque pixels which were rendered by the scene capture.
local USceneCaptureComponent2D = {}

---Removes a blendable.
---@param InBlendableObject TScriptInterface_UBlendableInterface_
function USceneCaptureComponent2D:RemoveBlendable(InBlendableObject) end

---Render the scene to the texture target immediately.
---This should not be used if bCaptureEveryFrame is enabled, or the scene capture will render redundantly.
---If r.SceneCapture.CullByDetailMode is set, nothing will happen if DetailMode is higher than r.DetailMode.
function USceneCaptureComponent2D:CaptureScene() end

---Adds an Blendable (implements IBlendableInterface) to the array of Blendables (if it doesn't exist) and update the weight
---@param InBlendableObject TScriptInterface_UBlendableInterface_
---@param InWeight number @[opt] 
function USceneCaptureComponent2D:AddOrUpdateBlendable(InBlendableObject, InWeight) end

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function USceneCaptureComponent2D:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function USceneCaptureComponent2D:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function USceneCaptureComponent2D:AddAssetUserDataOfClass(InUserDataClass) end

