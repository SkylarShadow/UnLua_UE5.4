---@class UNiagaraSpriteRendererProperties : UNiagaraRendererProperties
---@field public Material UMaterialInterface @The material used to render the particle. Note that it must have the Use with Niagara Sprites flag checked.
---@field public MICMaterial UMaterialInstanceConstant
---@field public MaterialUserParamBinding FNiagaraUserParameterBinding @Use the UMaterialInterface bound to this user variable if it is set to a valid value. If this is bound to a valid value and Material is also set, UserParamBinding wins.
---@field public SourceMode ENiagaraRendererSourceDataMode @Whether or not to draw a single element for the Emitter or to draw the particles.
---@field public Alignment ENiagaraSpriteAlignment @Imagine the particle texture having an arrow pointing up, these modes define how the particle aligns that texture to other particle attributes.
---@field public FacingMode ENiagaraSpriteFacingMode @Determines how the particle billboard orients itself relative to the camera.
---@field public SortMode ENiagaraSortMode @Determines how we sort the particles prior to rendering.
---@field public MacroUVRadius number @World space radius that UVs generated with the ParticleMacroUV material node will tile based on.
---@field public PivotInUVSpace FVector2D @Determines the location of the pivot point of this particle. It follows Unreal's UV space, which has the upper left of the image at 0,0 and bottom right at 1,1. The middle is at 0.5, 0.5. NOTE: This value is ignored if "Pivot Offset Binding" is bound to a valid attribute
---@field public SubImageSize FVector2D @When using SubImage lookups for particles, this variable contains the number of columns in X and the number of rows in Y.
---@field public bSubImageBlend boolean @If true, blends the sub-image UV lookup with its next adjacent member using the fractional part of the SubImageIndex float value as the linear interpolation factor.
---@field public bRemoveHMDRollInVR boolean @If true, removes the HMD view roll (e.g. in VR)
---@field public bSortOnlyWhenTranslucent boolean @If true, the particles are only sorted when using a translucent material.
---@field public bEnableCameraDistanceCulling boolean @Enables frustum culling of individual sprites
---@field public bCastShadows boolean @When disabled the renderer will not cast shadows. The component controls if shadows are enabled, this flag allows you to disable the renderer casting shadows.
---@field public SortPrecision ENiagaraRendererSortPrecision @Sort precision to use when sorting is active.
---@field public GpuTranslucentLatency ENiagaraRendererGpuTranslucentLatency @Gpu simulations run at different points in the frame depending on what features are used, i.e. depth buffer, distance fields, etc. Opaque materials will run latent when these features are used. Translucent materials can choose if they want to use this frames or the previous frames data to match opaque draws.
---@field public PixelCoverageMode ENiagaraRendererPixelCoverageMode @This setting controls what happens when a sprite becomes less than a pixel in size. Disabling will apply nothing and can result in flickering issues, especially with Temporal Super Resolution. Automatic will enable the appropriate settings when the material blend mode is some form of translucency, project setting must also be enabled. When coverage is less than a pixel, we also calculate a percentage of coverage, and then darken or reduce opacity to visually compensate. The different enabled settings allow you to control how the coverage amount is applied to your particle color.  If particle color is not connected to your material the compensation will not be applied.
---@field public PixelCoverageBlend number @When pixel coverage is enabled this allows you to control the blend of the pixel coverage color adjustment. i.e. 1.0 = full, 0.5 = 50/50 blend, 0.0 = none
---@field public MinFacingCameraBlendDistance number @When FacingMode is FacingCameraDistanceBlend, the distance at which the sprite is fully facing the camera plane.
---@field public MaxFacingCameraBlendDistance number @When FacingMode is FacingCameraDistanceBlend, the distance at which the sprite is fully facing the camera position
---@field public MinCameraDistance number
---@field public MaxCameraDistance number
---@field public RendererVisibility integer @If a render visibility tag is present, particles whose tag matches this value will be visible in this renderer.
---@field public PositionBinding FNiagaraVariableAttributeBinding @Which attribute should we use for position when generating sprites?
---@field public ColorBinding FNiagaraVariableAttributeBinding @Which attribute should we use for color when generating sprites?
---@field public VelocityBinding FNiagaraVariableAttributeBinding @Which attribute should we use for velocity when generating sprites?
---@field public SpriteRotationBinding FNiagaraVariableAttributeBinding @Which attribute should we use for sprite rotation (in degrees) when generating sprites?
---@field public SpriteSizeBinding FNiagaraVariableAttributeBinding @Which attribute should we use for sprite size when generating sprites?
---@field public SpriteFacingBinding FNiagaraVariableAttributeBinding @Which attribute should we use for sprite facing when generating sprites?
---@field public SpriteAlignmentBinding FNiagaraVariableAttributeBinding @Which attribute should we use for sprite alignment when generating sprites?
---@field public SubImageIndexBinding FNiagaraVariableAttributeBinding @Which attribute should we use for sprite sub-image indexing when generating sprites?
---@field public DynamicMaterialBinding FNiagaraVariableAttributeBinding @Which attribute should we use for dynamic material parameters when generating sprites?
---@field public DynamicMaterial1Binding FNiagaraVariableAttributeBinding @Which attribute should we use for dynamic material parameters when generating sprites?
---@field public DynamicMaterial2Binding FNiagaraVariableAttributeBinding @Which attribute should we use for dynamic material parameters when generating sprites?
---@field public DynamicMaterial3Binding FNiagaraVariableAttributeBinding @Which attribute should we use for dynamic material parameters when generating sprites?
---@field public CameraOffsetBinding FNiagaraVariableAttributeBinding @Which attribute should we use for camera offset when generating sprites?
---@field public UVScaleBinding FNiagaraVariableAttributeBinding @Which attribute should we use for UV scale when generating sprites?
---@field public PivotOffsetBinding FNiagaraVariableAttributeBinding @Which attribute should we use for pivot offset? (NOTE: Values are expected to be in UV space).
---@field public MaterialRandomBinding FNiagaraVariableAttributeBinding @Which attribute should we use for material randoms when generating sprites?
---@field public CustomSortingBinding FNiagaraVariableAttributeBinding @Which attribute should we use for custom sorting? Defaults to Particles.NormalizedAge.
---@field public NormalizedAgeBinding FNiagaraVariableAttributeBinding @Which attribute should we use for Normalized Age?
---@field public RendererVisibilityTagBinding FNiagaraVariableAttributeBinding @Which attribute should we use for RendererVisibilityTag?
---@field public MaterialParameters FNiagaraRendererMaterialParameters @If this array has entries, we will create a MaterialInstanceDynamic per Emitter instance from Material and set the Material parameters using the Niagara simulation variables listed.
---@field public PrevPositionBinding FNiagaraVariableAttributeBinding @The following bindings are only needed for accurate motion vectors
---@field public PrevVelocityBinding FNiagaraVariableAttributeBinding
---@field public PrevSpriteRotationBinding FNiagaraVariableAttributeBinding
---@field public PrevSpriteSizeBinding FNiagaraVariableAttributeBinding
---@field public PrevSpriteFacingBinding FNiagaraVariableAttributeBinding
---@field public PrevSpriteAlignmentBinding FNiagaraVariableAttributeBinding
---@field public PrevCameraOffsetBinding FNiagaraVariableAttributeBinding
---@field public PrevPivotOffsetBinding FNiagaraVariableAttributeBinding
---@field public bUseMaterialCutoutTexture boolean @Use the cutout texture from the material opacity mask, or if none exist, from the material opacity.
---@field public CutoutTexture UTexture2D @Texture to generate bounding geometry from.
---@field public BoundingMode integer @More bounding vertices results in reduced overdraw, but adds more triangle overhead. The eight vertex mode is best used when the SubUV texture has a lot of space to cut out that is not captured by the four vertex version, and when the particles using the texture will be few and large.
---@field public OpacitySourceMode integer
---@field public AlphaThreshold number @Alpha channel values larger than the threshold are considered occupied and will be contained in the bounding geometry. Raising this threshold slightly can reduce overdraw in particles using this animation asset.
---@field public MaterialParamValidMask integer
local UNiagaraSpriteRendererProperties = {}
