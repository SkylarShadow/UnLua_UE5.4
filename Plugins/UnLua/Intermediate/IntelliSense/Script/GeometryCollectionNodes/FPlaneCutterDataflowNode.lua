---Cuts geometry using a set of noised up planes
---@class FPlaneCutterDataflowNode : FDataflowNode
---@field public Collection FManagedArrayCollection
---@field public BoundingBox FBox
---@field public TransformSelection FDataflowTransformSelection
---@field public NumPlanes integer
---@field public RandomSeed number
---@field public Grout number
---@field public Amplitude number
---@field public Frequency number
---@field public Persistence number
---@field public Lacunarity number
---@field public OctaveNumber integer
---@field public PointSpacing number
---@field public AddSamplesForCollision boolean
---@field public CollisionSampleSpacing number
local FPlaneCutterDataflowNode = {}