---@class AChaosVDSolverInfoActor : AActor
---@field protected SolverID integer
---@field protected SimulationTransform FTransform
---@field protected SolverName string
---@field protected CollisionDataComponent UChaosVDSolverCollisionDataComponent
---@field protected SolverParticlesByID TMap<integer, AChaosVDParticleActor>
---@field protected ParticleDataComponent UChaosVDParticleDataComponent
---@field protected JointsDataComponent UChaosVDSolverJointConstraintDataComponent
local AChaosVDSolverInfoActor = {}

