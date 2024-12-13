---Create a geometry collection from a UStaticMesh
---@class FStaticMeshToCollectionDataflowNode : FDataflowNode
---@field public StaticMesh UStaticMesh @Asset input
---@field public bSetInternalFromMaterialIndex boolean @Set the internal faces from material index
---@field public bSplitComponents boolean @Split components
---@field public Collection FManagedArrayCollection @Geometry collection newly created
---@field public Materials TArray<UMaterial> @Materials array to use for this asset
---@field public InstancedMeshes TArray<FGeometryCollectionAutoInstanceMesh> @Array of instanced meshes
local FStaticMeshToCollectionDataflowNode = {}
