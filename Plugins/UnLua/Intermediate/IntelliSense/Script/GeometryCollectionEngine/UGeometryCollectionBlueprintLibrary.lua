---Blueprint library for Geometry Collections.
---@class UGeometryCollectionBlueprintLibrary : UBlueprintFunctionLibrary
local UGeometryCollectionBlueprintLibrary = {}

---Set a custom instance data value for all instances associated with a geometry collection.
---This assumes that the geometry collection is using a custom instanced renderer.
---@param GeometryCollectionComponent UGeometryCollectionComponent
---@param CustomDataIndex integer
---@param CustomDataValue number
function UGeometryCollectionBlueprintLibrary.SetISMPoolCustomInstanceData(GeometryCollectionComponent, CustomDataIndex, CustomDataValue) end

