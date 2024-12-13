---The data needed by the runtime to simulate sprites.
---@class FGPUSpriteEmitterInfo
---@field public RequiredModule UParticleModuleRequired @The required module. Needed for now, but should be divorced from the runtime.
---@field public SpawnModule UParticleModuleSpawn @The spawn module. Needed for now, but should be divorced from the runtime.
---@field public SpawnPerUnitModule UParticleModuleSpawnPerUnit @The spawn-per-unit module.
---@field public SpawnModules TArray<UParticleModule> @List of spawn modules that must be evaluated at runtime.
---@field public LocalVectorField FGPUSpriteLocalVectorFieldInfo @Local vector field info.
---@field public VectorFieldScale FFloatDistribution @Per-particle vector field scale.
---@field public DragCoefficient FFloatDistribution @Per-particle drag coefficient.
---@field public PointAttractorStrength FFloatDistribution @Point attractor strength over time.
---@field public Resilience FFloatDistribution @Damping factor applied to particle collisions.
---@field public ConstantAcceleration FVector @Constant acceleration to apply to particles.
---@field public PointAttractorPosition FVector @Point attractor position.
---@field public PointAttractorRadiusSq number @Point attractor radius, squared.
---@field public OrbitOffsetBase FVector @Amount by which to offset particles when they are spawned.
---@field public OrbitOffsetRange FVector
---@field public InvMaxSize FVector2D @One over the maximum size of a sprite particle.
---@field public InvRotationRateScale number @The inverse scale to apply to rotation rate.
---@field public MaxLifetime number @The maximum lifetime of particles in this emitter.
---@field public MaxParticleCount integer @The maximum number of particles expected for this emitter.
---@field public ScreenAlignment integer @The method for aligning the particle based on the camera.
---@field public LockAxisFlag integer @The method for locking the particles to a particular axis.
---@field public bEnableCollision boolean @If true, collisions are enabled for this emitter.
---@field public CollisionMode integer
---@field public bUseVelocityForMotionBlur boolean @If true, use velocity to approximate motion blur
---@field public bRemoveHMDRoll boolean @If true, removes the HMD view roll (e.g. in VR)
---@field public MinFacingCameraBlendDistance number @The distance at which PSA_FacingCameraDistanceBlend    is fully PSA_Square
---@field public MaxFacingCameraBlendDistance number @The distance at which PSA_FacingCameraDistanceBlend    is fully PSA_FacingCameraPosition
---@field public DynamicColor FRawDistributionVector @Dynamic color scale from the ColorOverLife module.
---@field public DynamicAlpha FRawDistributionFloat @Dynamic alpha scale from the ColorOverLife module.
---@field public DynamicColorScale FRawDistributionVector @Dynamic color scale from the ColorScaleOverLife module.
---@field public DynamicAlphaScale FRawDistributionFloat @Dynamic alpha scale from the ColorScaleOverLife module.
local FGPUSpriteEmitterInfo = {}