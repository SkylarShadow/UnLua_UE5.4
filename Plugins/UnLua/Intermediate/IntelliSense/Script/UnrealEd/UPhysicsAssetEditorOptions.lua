---@class UPhysicsAssetEditorOptions : UObject
---@field public PhysicsBlend number @Lets you manually control the physics/animation
---@field public bUpdateJointsFromAnimation boolean @Lets you manually control the physics/animation
---@field public PhysicsUpdateMode integer @Determines whether simulation of root body updates component transform
---@field public PokePauseTime number @Time between poking ragdoll and starting to blend back.
---@field public PokeBlendTime number @Time taken to blend from physics to animation.
---@field public GravScale number @Scale factor for the gravity used in the simulation
---@field public GravityOverrideZ number @Gravity override used in the simulation
---@field public bUseGravityOverride boolean @Toggle gravity override vs gravity scale
---@field public MaxFPS integer @Max FPS for simulation in PhysicsAssetEditor. This is helpful for targeting the same FPS as your game. -1 means disabled
---@field public HandleLinearDamping number @Linear damping of mouse spring forces
---@field public HandleLinearStiffness number @Linear stiffness of mouse spring forces
---@field public HandleAngularDamping number @Angular damping of mouse spring forces
---@field public HandleAngularStiffness number @Angular stiffness of mouse spring forces
---@field public InterpolationSpeed number @How quickly we interpolate the physics target transform for mouse spring forces
---@field public PokeStrength number @Strength of the impulse used when poking with left mouse button
---@field public InteractionDistance number @Raycast distance when poking or grabbing
---@field public bShowConstraintsAsPoints boolean @Whether to draw constraints as points
---@field public bDrawViolatedLimits boolean @Whether to highlight limits that have been violated
---@field public bRenderOnlySelectedConstraints boolean @Whether to only render selected constraints
---@field public bSimulationFloorCollisionEnabled boolean @Toggle collisions with floor in the simulation
---@field public ConstraintDrawSize number @Controls how large constraints are drawn in Physics Asset Editor
---@field public MeshViewMode EPhysicsAssetEditorMeshViewMode @View mode for meshes in edit mode
---@field public CollisionViewMode EPhysicsAssetEditorCollisionViewMode @View mode for collision in edit mode
---@field public ConstraintViewMode EPhysicsAssetEditorConstraintViewMode @View mode for constraints in edit mode
---@field public SimulationMeshViewMode EPhysicsAssetEditorMeshViewMode @View mode for meshes in simulation mode
---@field public SimulationCollisionViewMode EPhysicsAssetEditorCollisionViewMode @View mode for collision in simulation mode
---@field public SimulationConstraintViewMode EPhysicsAssetEditorConstraintViewMode @View mode for constraints in simulation mode
---@field public CollisionOpacity number @Opacity of 'solid' rendering
---@field public bSolidRenderingForSelectedOnly boolean @When set, turns opacity of solid rendering for unselected bodies to zero
---@field public bHideSimulatedBodies boolean @When set, disables rendering for simulated bodies
---@field public bHideKinematicBodies boolean @When set, disables rendering for kinematic bodies
---@field public bResetClothWhenSimulating boolean @When set, cloth will reset each time simulation is toggled
---@field public bExposeLegacyMenuSimulationControls boolean @The following are for enabling/disabling controls at runtime. Some controls use the new "UToolMenu" menus. These are enabled/disabled via json permissions. Other controls use the legacy FMenuBuilder. These use the following properties to enable/disable.
---@field public bExposeLegacyMenuConstraintControls boolean
local UPhysicsAssetEditorOptions = {}

