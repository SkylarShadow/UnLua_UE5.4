---@class FNiagaraVariableMetaData
---@field public Description string
---@field public CategoryName string
---@field public DisplayUnit EUnit @The unit to display next to input fields for this parameter - note that this is only a visual indicator and does not change any of the calculations.
---@field public bAdvancedDisplay boolean @Declares that this input is advanced and should only be visible if expanded inputs have been expanded.
---@field public bDisplayInOverviewStack boolean @Declares that this parameter's value will be shown in the overview node if it's set to a local value.
---@field public InlineParameterSortPriority integer @Affects the sort order for parameters shown inline in the overview. Use a smaller number to push it to the top. Defaults to zero.
---@field public bOverrideColor boolean @The color used to display a parameter in the overview. If no color is specified, the type color is used.
---@field public InlineParameterColorOverride FLinearColor @The color used to display a parameter in the overview. If no color is specified, the type color is used.
---@field public InlineParameterEnumOverrides TArray<FNiagaraEnumParameterMetaData> @The index of the entry maps to the index of an enum value. Useful for overriding how an enum parameter is displayed in the overview.
---@field public bEnableBoolOverride boolean @Useful to override inline bool visualization in the overview.
---@field public InlineParameterBoolOverride FNiagaraBoolParameterMetaData @Useful to override inline bool visualization in the overview.
---@field public EditorSortPriority integer @Affects the sort order in the editor stacks. Use a smaller number to push it to the top. Defaults to zero.
---@field public bInlineEditConditionToggle boolean @Declares the associated input is used as an inline edit condition toggle, so it should be hidden and edited as a       checkbox inline with the input which was designated as its edit condition.
---@field public EditCondition FNiagaraInputConditionMetadata @Declares the associated input should be conditionally editable based on the value of another input.
---@field public VisibleCondition FNiagaraInputConditionMetadata @Declares the associated input should be conditionally visible based on the value of another input.
---@field public PropertyMetaData TMap<string, string> @Property Metadata
---@field public ParentAttribute string @If set, this attribute is visually displayed as a child under the given parent attribute. Currently, only static switches are supported as parent attributes!
---@field public AlternateAliases TArray<string> @List of alternate/previous names for this variable. Note that this is not normally needed if you rename through the UX. However, if you delete and then add a different variable, intending for it to match, you will likely want to add the prior name here. You may need to restart and reload assets after making this change to have it take effect on already loaded assets.
---@field public WidgetCustomization FNiagaraInputParameterCustomization @Changes how the input is displayed.
---@field private VariableGuid FGuid @A unique identifier for the variable that can be used by function call nodes to find renamed variables.
local FNiagaraVariableMetaData = {}