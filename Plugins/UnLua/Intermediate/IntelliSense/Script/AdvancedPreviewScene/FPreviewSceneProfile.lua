---Preview scene profile settings structure.
---@class FPreviewSceneProfile
---@field public ProfileName string @Name to identify the profile
---@field public bSharedProfile boolean @Whether or not this profile should be stored in the Project ini file
---@field public bUseSkyLighting boolean @Whether or not image based lighting is enabled for the environment cube map
---@field public DirectionalLightIntensity number @Manually set the directional light intensity (0.0 - 20.0)
---@field public DirectionalLightColor FLinearColor @Manually set the directional light colour
---@field public SkyLightIntensity number @Manually set the sky light intensity (0.0 - 20.0)
---@field public bRotateLightingRig boolean @Toggle rotating of the sky and directional lighting, press K and drag for manual rotating of Sky and L for Directional lighting
---@field public bShowEnvironment boolean @Toggle visibility of the environment sphere
---@field public bShowFloor boolean @Toggle visibility of the floor mesh
---@field public EnvironmentColor FLinearColor @The environment color, used if Show Environment is false.
---@field public EnvironmentIntensity number @The environment intensity (0.0 - 20.0), used if Show Environment is false.
---@field public EnvironmentCubeMap TSoftObjectPtr<UTextureCube> @Sets environment cube map used for sky lighting and reflections
---@field public EnvironmentCubeMapPath string @Storing path to environment cube to prevent it from getting cooked
---@field public bPostProcessingEnabled boolean @Whether or not the Post Processing should influence the scene
---@field public PostProcessingSettings FPostProcessSettings @Manual set post processing settings
---@field public LightingRigRotation number @Current rotation value of the sky in degrees (0 - 360)
---@field public RotationSpeed number @Speed at which the sky rotates when rotating is toggled
---@field public DirectionalLightRotation FRotator @Rotation for directional light
local FPreviewSceneProfile = {}
