---@class UModelingToolsModeCustomizationSettings : UDeveloperSettings
---@field public bUseLegacyModelingPalette boolean @Toggle between the Legacy Modeling Mode Palette and the new UI (requires exiting and re-entering the Mode)
---@field public ToolSectionOrder TArray<string> @Add the names of Modeling Mode Tool Palette Sections to have them appear at the top of the Tool Palette, in the order listed below.
---@field public SectionColors TArray<FModelingModeCustomSectionColor> @Custom Section Header Colors for listed Sections in the Modeling Mode Tool Palette
---@field public ToolColors TArray<FModelingModeCustomToolColor> @Custom Tool Colors for listed Tools in the Modeling Mode Tool Palette. Format: SectionName        (Specifies a default color for all tools in the section.) SectionName.ToolName        (Specifies an override color for a specific tool in the given section.)
---@field public BrushAlphaSets TArray<FModelingModeAssetCollectionSet> @A Brush Alpha Set is a named list of Content Browser Collections, which will be shown as a separate tab in the Texture Asset Picker used in various Modeling Mode Tools when selecting a Brush Alpha (eg in Sculpting)
---@field public bShowCategoryButtonLabels boolean @If true, the category labels will be shown on the toolbar buttons, else they will be hidden
---@field public bAlwaysShowToolButtons boolean @If true, Tool buttons will always be shown when in a Tool. By default they will be hidden.
---@field public LastMeshSelectionDragMode integer @saved-state for various mode settings that are configured via UI toggles/etc, and not exposed in settings dialog
---@field public LastMeshSelectionLocalFrameMode integer
---@field public LastMeshSelectionElementType integer @saved-state for various mode settings that does not persist between editor runs
---@field public LastMeshSelectionTopologyMode integer
---@field public bLastMeshSelectionVolumeToggle boolean
---@field public bLastMeshSelectionStaticMeshToggle boolean
local UModelingToolsModeCustomizationSettings = {}

