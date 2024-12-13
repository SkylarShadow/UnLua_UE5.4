---Tool to create a mesh from a set of selected Spline Components
---@class UTriangulateSplinesTool : UInteractiveTool
---@field private TriangulateProperties UTriangulateSplinesToolProperties
---@field private OutputTypeProperties UCreateMeshObjectTypeProperties
---@field private Preview UMeshOpPreviewWithBackgroundCompute
---@field private TargetWorld TWeakObjectPtr<UWorld>
---@field private ActorsWithSplines TArray<TWeakObjectPtr<AActor>> @Note: We track actors instead of the USplineComponents here because the USplineComponents objects are often deleted / swapped for identical but new objects
local UTriangulateSplinesTool = {}

