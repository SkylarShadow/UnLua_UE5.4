---Spatial simulation data for a mesh.
---@class FClothPhysicalMeshData
---@field public Vertices TArray<FVector3f> @Positions of each simulation vertex
---@field public Normals TArray<FVector3f> @Normal at each vertex
---@field public VertexColors TArray<FColor> @Color at each vertex
---@field public Indices TArray<integer> @Indices of the simulation mesh triangles
---@field public WeightMaps TMap<integer, FPointWeightMap> @The weight maps, or masks, used by this mesh, sorted by their target id
---@field public InverseMasses TArray<number> @Inverse mass for each vertex in the physical mesh
---@field public BoneData TArray<FClothVertBoneData> @Indices and weights for each vertex, used to skin the mesh to create the reference pose
---@field public SelfCollisionVertexSet TSet<integer> @Valid indices to use for self collisions (reduced set of Indices)
---@field public EuclideanTethers FClothTetherData @Long range attachment tethers, using euclidean (beeline) distance to find the closest attachment
---@field public GeodesicTethers FClothTetherData @Long range attachment tethers, using geodesic (surface) distance to find the closest attachment
---@field public MaxBoneWeights integer @Maximum number of bone weights of any vetex
---@field public NumFixedVerts integer @Number of fixed verts in the simulation mesh (fixed verts are just skinned and do not simulate)
---@field public SelfCollisionIndices TArray<integer>
local FClothPhysicalMeshData = {}