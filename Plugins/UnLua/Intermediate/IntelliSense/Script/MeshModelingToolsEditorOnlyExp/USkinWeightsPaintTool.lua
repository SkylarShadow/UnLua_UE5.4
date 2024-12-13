---An interactive tool for painting and editing skin weights.
---@class USkinWeightsPaintTool : UDynamicMeshBrushTool
---@field protected WeightToolProperties USkinWeightsPaintToolProperties @tool properties
---@field protected PolygonSelectionMechanic UPolygonSelectionMechanic @polygon selection mechanic
---@field protected EditorContext TWeakObjectPtr<USkeletalMeshEditorContextObjectBase>
---@field protected PersonaModeManagerContext TWeakObjectPtr<UPersonaEditorModeManagerContext>
local USkinWeightsPaintTool = {}

