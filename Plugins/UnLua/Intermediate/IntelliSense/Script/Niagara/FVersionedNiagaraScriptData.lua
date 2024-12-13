---Struct containing all of the data that can be different between different script versions.
---@class FVersionedNiagaraScriptData
---@field public Version FNiagaraAssetVersion
---@field public VersionChangeDescription string @What changed in this version compared to the last? Displayed to the user when upgrading to a new script version.
---@field public ModuleUsageBitmask integer @When used as a module, what are the appropriate script types for referencing this module?
---@field public Category string @Used to break up scripts of the same Usage type in UI display.
---@field public AssetTagDefinitionReferences TArray<FNiagaraAssetTagDefinitionReference>
---@field public bSuggested boolean @If true, this script will be added to a 'Suggested' category at the top of menus during searches
---@field public ProvidedDependencies TArray<string> @Array of Ids of dependencies provided by this module to other modules on the stack (e.g. 'ProvidesNormalizedAge')
---@field public RequiredDependencies TArray<FNiagaraModuleDependency> @Dependencies required by this module from other modules on the stack
---@field public bDeprecated boolean @If this script is no longer meant to be used, this option should be set.
---@field public DeprecationMessage string @Message to display when the script is deprecated.
---@field public DeprecationRecommendation UNiagaraScript @Which script to use if this is deprecated.
---@field public bUsePythonScriptConversion boolean @If true then a python script will be executed when changing from this script to the selected deprectation recommendation. This allows the current script to transfer its inputs to the new script.
---@field public ConversionScriptExecution ENiagaraPythonUpdateScriptReference @Reference to a python script that is executed when the user updates from a previous version to this version.
---@field public PythonConversionScript string @Python script to run when converting this script to the recommended deprecation update script.
---@field public ConversionScriptAsset FFilePath @Asset reference to a python script to run when converting this script to the recommended deprecation update script.
---@field public ConversionUtility TSubclassOf<UNiagaraConvertInPlaceUtilityBase> @Custom logic to convert the contents of an existing script assignment to this script.
---@field public bExperimental boolean @Is this script experimental and less supported?
---@field public ExperimentalMessage string @The message to display when a function is marked experimental.
---@field public NoteMessage string @A message to display when adding the module to the stack. This is useful to highlight pitfalls or weird behavior of the module.
---@field public DebugDrawMessage string @A message to display on UI actions handling debug draw state.
---@field public LibraryVisibility ENiagaraScriptLibraryVisibility @Defines if this script is visible to the user when searching for modules to add to an emitter.
---@field public NumericOutputTypeSelectionMode ENiagaraNumericOutputTypeSelectionMode @The mode to use when deducing the type of numeric output pins from the types of the input pins.
---@field public Description string
---@field public Keywords string @A list of space separated keywords which can be used to find this script in editor menus.
---@field public CollapsedViewFormat string @The format for the text to display in the stack if the value is collapsed. This supports formatting placeholders for the function inputs, for example "myfunc({0}, {1})" will be converted to "myfunc(1.23, Particles.Position)".
---@field public InlineExpressionFormat TArray<FNiagaraInlineDynamicInputFormatToken>
---@field public InlineGraphFormat TArray<FNiagaraInlineDynamicInputFormatToken>
---@field public bCanBeUsedForTypeConversions boolean @If used as a dynamic input with exactly one input and output of different types, setting this to true will auto-insert this script to convert from one type to another when dragging and dropping parameters in the stack.          For example, a script with a bool as input and a float as output will be automatically inserted in the stack when dropping a bool parameter into the float input of a module in the stack.
---@field public ScriptMetaData TMap<string, string> @Script Metadata
---@field public InputSections TArray<FNiagaraStackSection>
---@field public LastGeneratedVMId FNiagaraVMExecutableDataId @Adjusted every time ComputeVMCompilationId is called.
---@field public UpdateScriptExecution ENiagaraPythonUpdateScriptReference @Reference to a python script that is executed when the user updates from a previous version to this version.
---@field public PythonUpdateScript string @Python script to run when updating to this script version.
---@field public ScriptAsset FFilePath @Asset reference to a python script to run when updating to this script version.
---@field public ParameterDefinitionsSubscriptions TArray<FParameterDefinitionsSubscription> @Subscriptions to parameter definitions for this script version
---@field private Source UNiagaraScriptSourceBase @'Source' data/graphs for this script
local FVersionedNiagaraScriptData = {}