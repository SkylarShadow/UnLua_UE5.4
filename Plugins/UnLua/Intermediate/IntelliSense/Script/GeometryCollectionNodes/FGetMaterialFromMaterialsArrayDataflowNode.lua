---Get a Material from a Materials array
---@class FGetMaterialFromMaterialsArrayDataflowNode : FDataflowNode
---@field public Materials TArray<UMaterial> @Materials array storing the materials
---@field public Material UMaterial @Selected material from the Materials array
---@field public MaterialIdx integer @Index in the Materials array for the selected material
local FGetMaterialFromMaterialsArrayDataflowNode = {}
