---Reassign existing material(s) to Outside/Inside faces
---@class FReAssignMaterialInCollectionDataflowNode : FDataflowNode
---@field public Collection FManagedArrayCollection @Collection for reassign the material(s)
---@field public FaceSelection FDataflowFaceSelection @Face selection, the material(s) will be assigned to the selected faces
---@field public Materials TArray<UMaterial> @Materials array storing the materials
---@field public OutsideMaterialIdx integer @Index of the material in the Materials array to assign to the outside faces from the face selection
---@field public InsideMaterialIdx integer @Index of the material in the Materials array to assign to the inside faces from the face selection
---@field public bAssignOutsideMaterial boolean @If true, the selected material from the Materials array will be assigned to the outside faces from the face selection
---@field public bAssignInsideMaterial boolean @If true, the selected material from the Materials array will be assigned to the inside faces from the face selection
local FReAssignMaterialInCollectionDataflowNode = {}
