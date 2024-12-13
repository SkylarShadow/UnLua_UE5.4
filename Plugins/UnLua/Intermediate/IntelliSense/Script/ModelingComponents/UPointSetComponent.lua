---UPointSetComponent is a Component that draws a set of points, as small squares.
---Per-point Color and (view-space) Size is supported. Normals are not supported.
---Points are inserted with an externally-defined ID, internally this is done via
---a TSparseArray. This class allocates a contiguous TArray large enugh to hold the
---largest ID. Using ReservePoints() may be beneficial for huge arrays.
---The points are drawn as two triangles (ie a square) orthogonal to the view direction.
---The actual point size is calculated in the shader, and so a custom material must be used.
---@class UPointSetComponent : UMeshComponent
---@field private PointMaterial UMaterialInterface
---@field private Bounds FBoxSphereBounds
---@field private bBoundsDirty boolean
local UPointSetComponent = {}

---Checks whether or not an instance of the provided AssetUserData class is contained.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UPointSetComponent:HasAssetUserDataOfClass(InUserDataClass) end

---Returns an instance of the provided AssetUserData class if it's contained in the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return UAssetUserData
function UPointSetComponent:GetAssetUserDataOfClass(InUserDataClass) end

---Creates and adds an instance of the provided AssetUserData class to the target asset.
---@param InUserDataClass TSubclassOf_UAssetUserData_
---@return boolean
function UPointSetComponent:AddAssetUserDataOfClass(InUserDataClass) end

