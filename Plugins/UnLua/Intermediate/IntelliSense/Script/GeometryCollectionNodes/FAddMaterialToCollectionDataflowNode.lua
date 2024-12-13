---Adds Outside/Inside Materials to Outside/Inside faces
---@class FAddMaterialToCollectionDataflowNode : FDataflowNode
---@field public Collection FManagedArrayCollection @Collection to add material(s) to
---@field public FaceSelection FDataflowFaceSelection @Face selection, the material(s) will be added to the selected faces
---@field public Materials TArray<UMaterial> @Materials array storing the materials
---@field public OutsideMaterial UMaterial @Outside material to assign to the outside faces from the face selection
---@field public InsideMaterial UMaterial @Inside material to assign to the inside faces from the face selection
---@field public bAssignOutsideMaterial boolean @If true, the outside material will be assigned to the outside faces from the face selection
---@field public bAssignInsideMaterial boolean @If true, the inside material will be assigned to the inside faces from the face selection
local FAddMaterialToCollectionDataflowNode = {}
