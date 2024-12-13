---A Material is an asset which can be applied to a mesh to control the visual look of the scene.
---When light from the scene hits the surface, the shading model of the material is used to calculate how that light interacts with the surface.
---Warning: Creating new materials directly increases shader compile times!  Consider creating a Material Instance off of an existing material instead.
---@class UMaterial : UMaterialInterface
---@field public PhysMaterial UPhysicalMaterial @Physical material to use for this graphics material. Used for sounds, effects etc.
---@field public PhysMaterialMask UPhysicalMaterialMask @Physical material mask to use for this graphics material. Used for sounds, effects etc.
---@field public PhysicalMaterialMap UPhysicalMaterial @Physical material mask map to use for this graphics material. Used for sounds, effects etc.
---@field public RenderTracePhysicalMaterialOutputs TArray<UPhysicalMaterial>
---@field public MaterialDomain integer @The domain that the material's attributes will be evaluated in. Certain pieces of material functionality are only valid in certain domains, for example vertex normal is only valid on a surface.
---@field public BlendMode integer @Determines how the material's color is blended with background colors.
---@field public DecalBlendMode integer
---@field public MaterialDecalResponse integer @Defines how the material reacts on DBuffer decals (Affects look, performance and texture/sample usage). Non DBuffer Decals can be disabled on the primitive (e.g. static mesh)
---@field public NaniteOverrideMaterial FMaterialOverrideNanite @An override material which will be used instead of this one when rendering with Nanite.
---@field public DisplacementScaling FDisplacementScaling
---@field private ShadingModel integer @Determines how inputs are combined to create the material's final color.
---@field public bCastDynamicShadowAsMasked boolean @Whether the material should cast shadows as masked even though it has a translucent blend mode.
---@field private ShadingModels FMaterialShadingModelField
---@field private UsedShadingModels string @These are the shading models present in this material. Note that all these shading models might not be used in all feature levels and quality levels.
---@field public OpacityMaskClipValue number @If BlendMode is BLEND_Masked, the surface is not rendered where OpacityMask < OpacityMaskClipValue. If BlendMode is BLEND_Translucent, BLEND_Additive, or BLEND_Modulate, and "Output Depth and Velocity" is enabled, the object velocity is not rendered where Opacity < OpacityMaskClipValue.
---@field public bEnableResponsiveAA boolean @Indicates that the material should be rendered using responsive anti-aliasing. Improves sharpness of small moving particles such as sparks. Only use for small moving features because it will cause aliasing of the background.
---@field public bScreenSpaceReflections boolean @SSR on translucency
---@field public bContactShadows boolean @Contact shadows on translucency
---@field public TwoSided boolean @Indicates that the material should be rendered without backface culling and the normal should be flipped for backfaces.
---@field public bIsThinSurface boolean @Indicates that the material should be rendered as a thin surface (i.e., without inner volume). Only used by Substrate materials. Enabling ThinSurface will disable subsurface profiles.
---@field public DitheredLODTransition boolean @Whether meshes rendered with the material should support dithered LOD transitions.
---@field public DitherOpacityMask boolean @Dither opacity mask. When combined with Temporal AA this can be used as a form of limited translucency which supports all lighting features.
---@field public bAllowNegativeEmissiveColor boolean @Whether the material should allow outputting negative emissive color values.  Only allowed on unlit materials.
---@field public bHasPixelAnimation boolean @Whether the opaque material has any pixel animations happening, that isn't included in the geometric velocities. This allows to disable renderer's heuristics that assumes animation is fully described with motion vector, such as TSR's anti-flickering heuristic.
---@field public bEnableTessellation boolean @Whether tessellation is enabled on the material. NOTE: Required for displacement to work.
---@field public TranslucencyPass integer @Specifies the separate pass in which to render translucency. This can be used to avoid artifacts caused by certain post processing effects.
---@field public TranslucencyLightingMode integer @Sets the lighting mode that will be used on this material if it is translucent.
---@field public bEnableMobileSeparateTranslucency boolean @Indicates that the translucent material should not be affected by bloom or DOF. (Note: Depth testing is not available)
---@field public NumCustomizedUVs integer @Number of customized UV inputs to display.  Unconnected customized UV inputs will just pass through the vertex UVs.
---@field public TranslucencyDirectionalLightingIntensity number @Useful for artificially increasing the influence of the normal on the lighting result for translucency. A value larger than 1 increases the influence of the normal, a value smaller than 1 makes the lighting more ambient.
---@field public TranslucentShadowDensityScale number @Scale used to make translucent shadows more or less opaque than the material's actual opacity.
---@field public TranslucentSelfShadowDensityScale number @Scale used to make translucent self-shadowing more or less opaque than the material's shadow on other objects. This is only used when the object is casting a volumetric translucent shadow.
---@field public TranslucentSelfShadowSecondDensityScale number @Used to make a second self shadow gradient, to add interesting shading in the shadow of the first.
---@field public TranslucentSelfShadowSecondOpacity number @Controls the strength of the second self shadow gradient.
---@field public TranslucentBackscatteringExponent number @Controls how diffuse the material's backscattering is when using the MSM_Subsurface shading model. Larger exponents give a less diffuse look (smaller, brighter backscattering highlight). This is only used when the object is casting a volumetric translucent shadow from a directional light.
---@field public TranslucentMultipleScatteringExtinction FLinearColor @Colored extinction factor used to approximate multiple scattering in dense volumes. This is only used when the object is casting a volumetric translucent shadow.
---@field public TranslucentShadowStartOffset number @Local space distance to bias the translucent shadow.  Positive values move the shadow away from the light.
---@field public bDisableDepthTest boolean @Whether to draw on top of opaque pixels even if behind them. This only has meaning for translucency.
---@field public bWriteOnlyAlpha boolean @Whether the transluency pass should write its alpha, and only the alpha, into the framebuffer
---@field public bGenerateSphericalParticleNormals boolean @Whether to generate spherical normals for particles that use this material.
---@field public bTangentSpaceNormal boolean @Whether the material takes a tangent space normal or a world space normal as input. (TangentSpace requires extra instructions but is often more convenient).
---@field public bUseEmissiveForDynamicAreaLighting boolean @If enabled, the material's emissive colour is injected into the LightPropagationVolume
---@field public bUsedAsSpecialEngineMaterial boolean @This is a special usage flag that allows a material to be assignable to any primitive type. This is useful for materials used by code to implement certain viewmodes, for example the default material or lighting only material. The cost is that nearly 20x more shaders will be compiled for the material than the average material, which will greatly increase shader compile time and memory usage. This flag should only be enabled when absolutely necessary, and is purposefully not exposed to the UI to prevent abuse.
---@field public bUsedWithSkeletalMesh boolean @Indicates that the material and its instances can be used with skeletal meshes. This will result in the shaders required to support skeletal meshes being compiled which will increase shader compile time and memory usage.
---@field public bUsedWithEditorCompositing boolean @Indicates that the material and its instances can be used with editor compositing This will result in the shaders required to support editor compositing being compiled which will increase shader compile time and memory usage.
---@field public bUsedWithParticleSprites boolean @Indicates that the material and its instances can be used with particle sprites This will result in the shaders required to support particle sprites being compiled which will increase shader compile time and memory usage.
---@field public bUsedWithBeamTrails boolean @Indicates that the material and its instances can be used with beam trails This will result in the shaders required to support beam trails being compiled which will increase shader compile time and memory usage.
---@field public bUsedWithMeshParticles boolean @Indicates that the material and its instances can be used with mesh particles This will result in the shaders required to support mesh particles being compiled which will increase shader compile time and memory usage.
---@field public bUsedWithNiagaraSprites boolean @Indicates that the material and its instances can be used with Niagara sprites (meshes and ribbons, respectively) This will result in the shaders required to support Niagara sprites being compiled which will increase shader compile time and memory usage.
---@field public bUsedWithNiagaraRibbons boolean
---@field public bUsedWithNiagaraMeshParticles boolean
---@field public bUsedWithGeometryCache boolean
---@field public bUsedWithStaticLighting boolean @Indicates that the material and its instances can be used with static lighting This will result in the shaders required to support static lighting being compiled which will increase shader compile time and memory usage.
---@field public bUsedWithMorphTargets boolean @Indicates that the material and its instances can be used with morph targets This will result in the shaders required to support morph targets being compiled which will increase shader compile time and memory usage.
---@field public bUsedWithSplineMeshes boolean @Indicates that the material and its instances can be used with spline meshes This will result in the shaders required to support spline meshes being compiled which will increase shader compile time and memory usage.
---@field public bUsedWithInstancedStaticMeshes boolean @Indicates that the material and its instances can be used with instanced static meshes This will result in the shaders required to support instanced static meshes being compiled which will increase shader compile time and memory usage.
---@field public bUsedWithGeometryCollections boolean @Indicates that the material and its instances can be use with geometry collections This will result in the shaders required to support geometry collections being compiled which will increase shader compile time and memory usage.
---@field public bUsesDistortion boolean @Indicates that the material and its instances can be used with distortion This will result in the shaders required to support distortion being compiled which will increase shader compile time and memory usage.
---@field public bRootNodeOverridesDefaultDistortion boolean @Indicates that the material do not use the material physically based refraction (e.g. IOR from reflectivity F0), but overrides it for artistic purposes.
---@field public bUsedWithClothing boolean @Indicates that the material and its instances can be used with clothing This will result in the shaders required to support clothing being compiled which will increase shader compile time and memory usage.
---@field public bUsedWithWater boolean @Indicates that the material and its instances can be use with water This will result in the shaders required to support water meshes being compiled which will increase shader compile time and memory usage.
---@field public bUsedWithHairStrands boolean @Indicates that the material and its instances can be use with hair strands This will result in the shaders required to support hair strands geometries being compiled which will increase shader compile time and memory usage.
---@field public bUsedWithLidarPointCloud boolean @Indicates that the material and its instances can be use with LiDAR Point Clouds This will result in the shaders required to support LiDAR Point Cloud geometries being compiled which will increase shader compile time and memory usage.
---@field public bUsedWithVirtualHeightfieldMesh boolean @Indicates that the material and its instances can be used with Virtual Heightfield Mesh. This will result in the shaders required to support Virtual Heightfield Mesh geometries being compiled which will increase shader compile time and memory usage.
---@field public bUsedWithNanite boolean @Indicates that the material and its instances can be used with Nanite meshes. This will result in the shaders required to support Nanite geometries being compiled which will increase shader compile time and memory usage.
---@field public bUsedWithVolumetricCloud boolean @Indicates that the material and its instances with volumetric cloud. Without that flag, it can only be used on volumetric fog. This will result in the shaders required to support Volumetric Cloud rendering being compiled which will increase shader compile time and memory usage.
---@field public bUsedWithHeterogeneousVolumes boolean @Indicates that the material and its instances with heterogeneous volumes. Without that flag, it can only be used on volumetric fog. This will result in the shaders required to support Heterogeneous Volumes rendering being compiled which will increase shader compile time and memory usage.
---@field public bAutomaticallySetUsageInEditor boolean @Whether to automatically set usage flags based on what the material is applied to in the editor. It can be useful to disable this on a base material with many instances, where adding another usage flag accidentally (eg bUsedWithSkeletalMeshes) can add a lot of shader permutations.
---@field public bFullyRough boolean @Forces the material to be completely rough. Saves a number of instructions and one sampler.
---@field public FloatPrecisionMode integer @How to use full (highp) precision in the pixel shader. highp is slower than the default (mediump) but can be used to work around precision-related rendering errors. Use 'Full-precision for MaterialExpressions only' if you still want to keep the precision of the halfs in .ush/.usf This setting has no effect on older mobile devices that do not support high precision.
---@field public bUseLightmapDirectionality boolean @Use lightmap directionality and per pixel normals. If disabled, lighting from lightmaps will be flat but cheaper.
---@field public bMobileEnableHighQualityBRDF boolean @Use the high quality brdf functions on mobile to get better visual effects but adds GPU cost.
---@field public bUseAlphaToCoverage boolean @Use alpha to coverage for masked material on mobile, make sure MSAA is enabled as well.
---@field public bForwardRenderUsePreintegratedGFForSimpleIBL boolean @Forward (including mobile) renderer: use preintegrated GF lut for simple IBL, but will use one more sampler.
---@field public bUseHQForwardReflections boolean @* Forward renderer: enables multiple parallax-corrected reflection captures that blend together.
---@field public bForwardBlendsSkyLightCubemaps boolean @* Enables blending of sky light cubemap textures. When disabled, the secondary cubemap is only visible when the blend factor is 1.
---@field public bUsePlanarForwardReflections boolean @Enables planar reflection when using the forward renderer or mobile. Enabling this setting reduces the number of samplers available to the material as one more sampler will be used for the planar reflection.
---@field public bNormalCurvatureToRoughness boolean @Reduce roughness based on screen space normal changes.
---@field public AllowTranslucentCustomDepthWrites boolean @Allows a translucent material to be used with custom depth writing by compiling additional shaders.
---@field public bAllowFrontLayerTranslucency boolean @Allows a translucent material to be used with Front Layer Translucency by compiling additional shaders. Useful for controlling what should be included in Front Layer Translucency.
---@field public Wireframe boolean @Enables a wireframe view of the mesh the material is applied to.
---@field public ShadingRate integer @Select what shading rate to apply, on platforms that support variable rate shading. Non-1x1 rates will reduce the rasterization fidelity for the material; they will not super-sample the material. This can save GPU performance on materials where reduced fidelity is acceptable.
---@field public bAllowVariableRateShading boolean @Allows the use of variable rate shading when evaluating this material. This will only apply to the base/translucency pass.
---@field public EditorX integer
---@field public EditorY integer
---@field public EditorPitch integer
---@field public EditorYaw integer
---@field public bCanMaskedBeAssumedOpaque boolean @true if this Material can be assumed Opaque when set to masked.
---@field public bIsPreviewMaterial boolean @true if Material is the preview material used in the material editor.
---@field public bIsFunctionPreviewMaterial boolean @true if Material is the function preview material used in the material instance editor.
---@field public bUseMaterialAttributes boolean @when true, the material attributes pin is used instead of the regular pins.
---@field public bEnableExecWire boolean
---@field public bEnableNewHLSLGenerator boolean
---@field public bCastRayTracedShadows boolean @when true, the material casts ray tracing shadows.
---@field public bUseTranslucencyVertexFog boolean @When true, translucent materials are fogged. Defaults to true.
---@field public bApplyCloudFogging boolean @When true, translucent materials receive cloud contribution as part of the fog evaluation, per vertex or per pixel according to the other selected options. This is a rough approximation but can help in some cases. Defaults to false. Fog is applied on clouds, so Apply Fogging must be true to use this feature.
---@field public bIsSky boolean @Unlit and Opaque materials can be used as sky material on a sky dome mesh. When IsSky is true, these meshes will not receive any contribution from the aerial perspective. Height and Volumetric fog effects will still be applied.
---@field public bComputeFogPerPixel boolean @When true, translucent materials have fog computed for every pixel, which costs more but fixes artifacts due to low tessellation.
---@field public bOutputTranslucentVelocity boolean @When true, translucent materials will output motion vectors and write to depth buffer in velocity pass.
---@field public bAllowDevelopmentShaderCompile boolean @If true the compilation environment will be changed to remove the global COMPILE_SHADERS_FOR_DEVELOPMENT flag.
---@field public bIsMaterialEditorStatsMaterial boolean @true if this is a special material used for stats by the material editor.
---@field public BlendableLocation integer @Where the node is inserted in the (post processing) graph, only used if domain is PostProcess
---@field public BlendableOutputAlpha boolean @If this is enabled, the blendable will output alpha
---@field public bUsedWithNeuralNetworks boolean @Indicates that the material and its instances can be used with neural network engine. This will result in the shaders required to support neural network engine being compiled which will increase shader compile time and memory usage. In addition, an additional pass will run before the postprocess pass for neural network engine, which will increase the rendering cost due to buffer copy and inference.
---@field public bEnableStencilTest boolean @Selectively execute post process material only for pixels that pass the stencil test against the Custom Depth/Stencil buffer. Pixels that fail the stencil test are filled with the previous post process material output or scene color.
---@field public StencilCompare integer
---@field public StencilRefValue integer
---@field public NeuralProfileId integer @Set by reference object cannot be modified.
---@field public RefractionMethod integer @Controls how the Refraction input is interpreted and how the refraction offset into scene color is computed for this material.
---@field public RefractionCoverageMode integer @Controls whether refraction takes into account the material surface coverage, or not.
---@field public BlendablePriority integer @If multiple nodes with the same  type are inserted at the same point, this defined order and if they get combined, only used if domain is PostProcess
---@field public bIsBlendable boolean @Allows blendability to be turned off, only used if domain is PostProcess
---@field public PreshaderGap integer @If non-zero, overrides r.Material.PreshaderGapInterval for this material.  Workaround for a platform specific register overflow bug.
---@field public UsageFlagWarnings integer @true if we have printed a warning about material usage for a given usage flag.
---@field public RefractionDepthBias number @This is the refraction depth bias, larger values offset distortion to prevent closer objects from rendering into the distorted surface at acute viewing angles but increases the disconnect between surface and where the refraction starts.
---@field public MaxWorldPositionOffsetDisplacement number @Specifies the max world position offset of the material. Use this value to resolve issues with culling and self-occlusion caused by World Position Offset, and/or to restrict how much offset is permitted (i.e. values are clamped on each axis). NOTE: A value of 0.0 effectively means "no maximum", and will not clamp the offsets, however it will also not extend culling bounds.
---@field public bAlwaysEvaluateWorldPositionOffset boolean @Forces World Position Offset to always be evaluated for this material, even if the primitive it's applied to has disabled it via "Evaluate World Position Offset" or "World Position Offset Disable Distance".
---@field public StateId FGuid @Guid that uniquely identifies this material. Any changes to the state of the material that do not appear separately in the shadermap DDC keys must cause this guid to be regenerated! For example, a modification to the Expressions array. Code changes that cause the guid to be regenerated on load should be avoided, as that requires a resave of the content to stop recompiling every load.
---@field private ReferencedTextureGuids TArray<FGuid>
local UMaterial = {}

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UMaterial:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UMaterial:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UMaterial:AddAssetUserDataOfClass(InUserDataClass) end

