---@class FNiagaraMeshRendererMeshProperties
---@field public Mesh UStaticMesh @The mesh to use when rendering this slot
---@field public MeshParameterBinding FNiagaraParameterBinding @Binding to supported mesh types.
---@field public LODMode ENiagaraMeshLODMode
---@field public LODLevelBinding FNiagaraParameterBindingWithValue @Absolute LOD level to use
---@field public LODBiasBinding FNiagaraParameterBindingWithValue @LOD bias to apply to the LOD calculation.
---@field public LODLevel integer
---@field public LODBias integer
---@field public LODDistanceFactor number @Used in LOD calculation to modify the distance, i.e. increasing the value will make lower poly LODs transition closer to the camera.
---@field public bUseLODRange boolean @When enabled you can restrict the LOD range we consider for LOD calculation. This can be useful to reduce the performance impact, as it reduces the number of draw calls required.
---@field public LODRange FIntVector2 @Used to restrict the range of LODs we include when dynamically calculating the LOD level.
---@field public Scale FVector @Scale of the mesh
---@field public Rotation FRotator @Rotation of the mesh
---@field public PivotOffset FVector @Offset of the mesh pivot
---@field public PivotOffsetSpace ENiagaraMeshPivotOffsetSpace @What space is the pivot offset in?
local FNiagaraMeshRendererMeshProperties = {}
