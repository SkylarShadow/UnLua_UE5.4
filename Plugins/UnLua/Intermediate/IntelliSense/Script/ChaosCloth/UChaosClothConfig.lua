---Holds initial, asset level config for clothing actors. // Hiding categories that will be used in the future
---@class UChaosClothConfig : UClothConfigCommon
---@field public MassMode EClothMassMode @How cloth particle mass is determined -    Uniform Mass: Every particle's mass will be set to the value specified in the UniformMass setting. Mostly to avoid as it can cause some serious issues with irregular tessellations. -    Total Mass: The total mass is distributed equally over all the particles. Useful when referencing a specific garment size and feel. -    Density: A constant mass density is used. Density is usually the preferred way of setting mass since it allows matching real life materials' density values.
---@field public UniformMass number @The value used when the Mass Mode is set to Uniform Mass.
---@field public TotalMass number @The value used when Mass Mode is set to TotalMass.
---@field public Density number @The value used when Mass Mode is set to Density. Melton Wool: 0.7 Heavy leather: 0.6 Polyurethane: 0.5 Denim: 0.4 Light leather: 0.3 Cotton: 0.2 Silk: 0.1
---@field public MinPerParticleMass number @This is a lower bound to cloth particle masses.
---@field public EdgeStiffnessWeighted FChaosClothWeightedValue @The Stiffness of segments constraints. Increase the iteration count for stiffer materials. If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Edge Stiffness" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them. Otherwise only the Low value is meaningful and sufficient to enable this constraint.
---@field public BendingStiffnessWeighted FChaosClothWeightedValue @The Stiffness of cross segments and bending elements constraints. Increase the iteration count for stiffer materials. If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Bend Stiffness" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them. Otherwise only the Low value is meaningful and sufficient to enable this constraint.
---@field public bUseBendingElements boolean @Enable the more accurate bending element constraints instead of the faster cross-edge spring constraints used for controlling bending stiffness.
---@field public BucklingRatio number @Once the element has bent such that it's folded more than this ratio from its rest angle ("buckled"), switch to using Buckling Stiffness instead of Bending Stiffness. When Buckling Ratio = 0, the Buckling Stiffness will never be used. When BucklingRatio = 1, the Buckling Stiffness will be used as soon as its bent past its rest configuration.
---@field public BucklingStiffnessWeighted FChaosClothWeightedValue @Bending will use this stiffness instead of Bending Stiffness once the cloth has buckled, i.e., bent beyond a certain angle. Typically, Buckling Stiffness is set to be less than Bending Stiffness. Buckling Ratio determines the switch point between using Bending Stiffness and Buckling Stiffness. If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Buckling Stiffness" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them. Otherwise only the Low value is meaningful and sufficient to enable this constraint.
---@field public AreaStiffnessWeighted FChaosClothWeightedValue @The stiffness of the surface area preservation constraints. Increase the iteration count for stiffer materials. If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Bend Stiffness" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them. Otherwise only the Low value is meaningful and sufficient to enable this constraint.
---@field public VolumeStiffness number @The stiffness of the volume preservation constraints.
---@field public TetherStiffness FChaosClothWeightedValue @The tethers' stiffness of the long range attachment constraints. The long range attachment connects each of the cloth particles to its closest fixed point with a spring constraint. This can be used to compensate for a lack of stretch resistance when the iterations count is kept low for performance reasons. Can lead to an unnatural pull string puppet like behavior. If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Tether Stiffness" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them. Otherwise only the Low value is meaningful and sufficient to enable this constraint. Use 0, 0 to disable.
---@field public TetherScale FChaosClothWeightedValue @The limit scale of the long range attachment constraints (aka tether limit). If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Tether Scale" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them. Otherwise only the Low value is meaningful and sufficient to set the tethers' scale.
---@field public bUseGeodesicDistance boolean @Use geodesic instead of euclidean distance calculations for the Long Range Attachment constraint, which is slower at setup but more accurate at establishing the correct position and length of the tethers, and therefore is less prone to artifacts during the simulation.
---@field public ShapeTargetStiffness number @The stiffness of the shape target constraints.
---@field public CollisionThickness number @The added thickness of collision shapes.
---@field public FrictionCoefficient number @Friction coefficient for cloth - collider interaction.
---@field public bUseCCD boolean @Use continuous collision detection (CCD) to prevent any missed collisions between fast moving particles and colliders. This has a negative effect on performance compared to when resolving collision without using CCD.
---@field public bUseSelfCollisions boolean @Enable self collision repulsion forces (point-face).
---@field public SelfCollisionThickness number @The radius of the spheres used in self collision. (i.e., offset per side. total thickness of cloth is 2x this value)
---@field public SelfCollisionFriction number @Friction coefficient for cloth - cloth interaction.
---@field public bUseSelfIntersections boolean @Enable self intersection resolution. This will try to fix any cloth intersections that are not handled by collision repulsions.
---@field public bUseSelfCollisionSpheres boolean @Enable sphere-based self collision repulsion forces.
---@field public SelfCollisionSphereRadius number @The radius of the spheres used in self collision centered at each vertex.
---@field public SelfCollisionSphereStiffness number @The stiffness of the springs used to control self collision.
---@field public SelfCollisionSphereRadiusCullMultiplier number @Multiplier for culling the self collision spheres. Spheres are seeded on every vertex, and culled based on SelfCollisionSphereRadius * SelfCollisionSphereRadiusCullMultiplier.
---@field public bUseLegacyBackstop boolean @This parameter is automatically set by the migration code. It can be overridden here to use the old way of authoring the backstop distances. The legacy backstop requires the sphere radius to be included within the painted distance mask, making it difficult to author correctly. In this case the backstop distance is the distance from the animated mesh to the center of the corresponding backstop collision sphere. The non legacy backstop automatically adds the matching sphere's radius to the distance calculations at runtime to make for a simpler authoring of the backstop distances. In this case the backstop distance is the distance from the animated mesh to the surface of the backstop collision sphere. In both cases, a positive backstop distance goes against the corresponding animated mesh's normal, and a negative backstop distance goes along the corresponding animated mesh's normal.
---@field public DampingCoefficient number @The amount of global damping applied to the cloth velocities, also known as point damping. Point damping improves simulation stability, but can also cause an overall slow-down effect and therefore is best left to very small percentage amounts.
---@field public LocalDampingCoefficient number @The amount of local damping applied to the cloth velocities. This type of damping only damps individual deviations of the particles velocities from the global motion. It makes the cloth deformations more cohesive and reduces jitter without affecting the overall movement. It can also produce synchronization artifacts where part of the cloth mesh are disconnected (which might well be desirable, or not), and is more expensive than global damping.
---@field public bUsePointBasedWindModel boolean @This parameter is automatically set by the migration code. It can be overridden here to use the old deprecated "Legacy" wind model in order to preserve behavior with previous versions of the engine. The old wind model is not an accurate aerodynamic model and as such should be avoided. Being point based, it doesn't take into account the surface area that gets hit by the wind. Using this model makes the simulation slightly slower, disables the aerodynamically accurate wind model, and prevents the cloth to interact with the surrounding environment (air, water, ...etc.) even when there is no wind.
---@field public Drag FChaosClothWeightedValue @The aerodynamic coefficient of drag applying on each particle. If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Drag" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them. Otherwise only the Low value is meaningful and sufficient to set the aerodynamic drag.
---@field public Lift FChaosClothWeightedValue @The aerodynamic coefficient of lift applying on each particle. If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Lift" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them. Otherwise only the Low value is meaningful and sufficient to set the aerodynamic lift.
---@field public bUseGravityOverride boolean @Use the config gravity value instead of world gravity.
---@field public GravityScale number @Scale factor applied to the world gravity and also to the clothing simulation interactor gravity. Does not affect the gravity if set using the override below.
---@field public Gravity FVector @The gravitational acceleration vector [cm/s^2]
---@field public Pressure FChaosClothWeightedValue @Pressure force strength applied in the normal direction(use negative value to push toward backface) If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Pressure" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them. Otherwise only the Low value is meaningful and sufficient to set the pressure.
---@field public AnimDriveStiffness FChaosClothWeightedValue @The strength of the constraint driving the cloth towards the animated goal mesh. If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Anim Drive Stiffness" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them. Otherwise only the Low value is meaningful and sufficient to enable this constraint.
---@field public AnimDriveDamping FChaosClothWeightedValue @The damping amount of the anim drive. If an enabled Weight Map (Mask with values in the range [0;1]) targeting the "Anim Drive Damping" is added to the cloth, then both the Low and High values will be used in conjunction with the per particle Weight stored in the Weight Map to interpolate the final value from them. Otherwise only the Low value is sufficient to work on this constraint.
---@field public LinearVelocityScale FVector @The amount of linear velocities sent to the local cloth space from the reference bone (the closest bone to the root on which the cloth section has been skinned, or the root itself if the cloth isn't skinned).
---@field public AngularVelocityScale number @The amount of angular velocities sent to the local cloth space from the reference bone (the closest bone to the root on which the cloth section has been skinned, or the root itself if the cloth isn't skinned).
---@field public FictitiousAngularScale number @The portion of the angular velocity that is used to calculate the strength of all fictitious forces (e.g. centrifugal force). This parameter is only having an effect on the portion of the reference bone's angular velocity that has been removed from the simulation via the Angular Velocity Scale parameter. This means it has no effect when AngularVelocityScale is set to 1 in which case the cloth is simulated with full world space angular velocities and subjected to the true physical world inertial forces. Values range from 0 to 2, with 0 showing no centrifugal effect, 1 full centrifugal effect, and 2 an overdriven centrifugal effect.
---@field public bUseTetrahedralConstraints boolean @Enable tetrahedral constraints.
---@field public bUseThinShellVolumeConstraints boolean @Enable thin shell volume constraints.
---@field public bUseContinuousCollisionDetection boolean @Enable continuous collision detection.
local UChaosClothConfig = {}

