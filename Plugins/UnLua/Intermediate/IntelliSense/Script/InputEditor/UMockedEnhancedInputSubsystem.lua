---Mock input subsystems to avoid having to create an actual subsystem + local player + game instance.
---@class UMockedEnhancedInputSubsystem : UObject
---@field protected ContinuouslyInjectedInputs TMap<UInputAction, FInjectedInput> @Map of inputs that should be injected every frame. These inputs will be injected when ForcedInput is ticked.
local UMockedEnhancedInputSubsystem = {}

---Update the value of a continuous input injection for the given player mapping name, preserving the state of triggers and modifiers.
---@param MappingName string
---@param RawValue FInputActionValue
function UMockedEnhancedInputSubsystem:UpdateValueOfContinuousInputInjectionForPlayerMapping(MappingName, RawValue) end

---Update the value of a continuous input injection, preserving the state of triggers and modifiers.
---@param Action UInputAction
---@param RawValue FInputActionValue
function UMockedEnhancedInputSubsystem:UpdateValueOfContinuousInputInjectionForAction(Action, RawValue) end

---Stops continuous input injection for the given player mapping name.
---@param MappingName string
function UMockedEnhancedInputSubsystem:StopContinuousInputInjectionForPlayerMapping(MappingName) end

---Stops continuous input injection for the given action.
---@param Action UInputAction
function UMockedEnhancedInputSubsystem:StopContinuousInputInjectionForAction(Action) end

---Starts simulation of input via injection. This injects the given input every tick until it is stopped with StopContinuousInputInjectionForAction.
---@param MappingName string
---@param RawValue FInputActionValue
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UMockedEnhancedInputSubsystem:StartContinuousInputInjectionForPlayerMapping(MappingName, RawValue, Modifiers, Triggers) end

---Starts simulation of input via injection. This injects the given input every tick until it is stopped with StopContinuousInputInjectionForAction.
---@param Action UInputAction
---@param RawValue FInputActionValue
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UMockedEnhancedInputSubsystem:StartContinuousInputInjectionForAction(Action, RawValue, Modifiers, Triggers) end

---Flag player for reapplication of all mapping contexts at the end of this frame.
---This is called automatically when adding or removing mappings contexts.
---@param Options FModifyContextOptions @[opt] 
---@param RebuildType EInputMappingRebuildType @[opt] 
function UMockedEnhancedInputSubsystem:RequestRebuildControlMappings(Options, RebuildType) end

---@param Config UPlayerMappableInputConfig
---@param Options FModifyContextOptions @[opt] 
function UMockedEnhancedInputSubsystem:RemovePlayerMappableConfig(Config, Options) end

---Remove a specific control context.
---This is safe to call even if the context is not applied.
---@param MappingContext UInputMappingContext
---@param Options FModifyContextOptions @[opt] 
function UMockedEnhancedInputSubsystem:RemoveMappingContext(MappingContext, Options) end

---@param MappingName string
---@param Options FModifyContextOptions @[opt] 
---@return integer
function UMockedEnhancedInputSubsystem:RemoveAllPlayerMappedKeysForMapping(MappingName, Options) end

---@param Options FModifyContextOptions @[opt] 
function UMockedEnhancedInputSubsystem:RemoveAllPlayerMappedKeys(Options) end

---= DefaultMappingIssues::StandardFatal
---@param PrioritizedActiveContexts TArray_UInputMappingContext_
---@param InputContext UInputMappingContext
---@param Action UInputAction
---@param Key FKey
---@param OutIssues TArray_FMappingQueryIssue_ @[out] 
---@param BlockingIssues EMappingQueryIssue
---@return EMappingQueryResult
function UMockedEnhancedInputSubsystem:QueryMapKeyInContextSet(PrioritizedActiveContexts, InputContext, Action, Key, OutIssues, BlockingIssues) end

---= DefaultMappingIssues::StandardFatal
---@param InputContext UInputMappingContext
---@param Action UInputAction
---@param Key FKey
---@param OutIssues TArray_FMappingQueryIssue_ @[out] 
---@param BlockingIssues EMappingQueryIssue
---@return EMappingQueryResult
function UMockedEnhancedInputSubsystem:QueryMapKeyInActiveContextSet(InputContext, Action, Key, OutIssues, BlockingIssues) end

---Returns the keys mapped to the given action in the active input mapping contexts.
---@param Action UInputAction
---@return TArray_FKey_
function UMockedEnhancedInputSubsystem:QueryKeysMappedToAction(Action) end

---Callback for when any Enhanced Input user settings have been changed (a new key mapping for example)
---@param Settings UEnhancedInputUserSettings
function UMockedEnhancedInputSubsystem:OnUserSettingsChanged(Settings) end

---A callback for when the user has applied a new mappable key profile.
---@param InNewProfile UEnhancedPlayerMappableKeyProfile
function UMockedEnhancedInputSubsystem:OnUserKeyProfileChanged(InNewProfile) end

---Removes player mapped key in the KeySlot for mapping of MappingName.
---Requests a rebuild of the player mappings.
---@param MappingName string
---@param KeySlot FPlayerMappableKeySlot @[opt] 
---@param Options FModifyContextOptions @[opt] 
---@return integer
function UMockedEnhancedInputSubsystem:K2_RemovePlayerMappedKeyInSlot(MappingName, KeySlot, Options) end

---@param MappingName string
---@param KeySlot FPlayerMappableKeySlot @[opt] 
---@return FKey
function UMockedEnhancedInputSubsystem:K2_GetPlayerMappedKeyInSlot(MappingName, KeySlot) end

---@param MappingName string
---@param NewKey FKey
---@param KeySlot FPlayerMappableKeySlot @[opt] 
---@param Options FModifyContextOptions @[opt] 
---@return integer
function UMockedEnhancedInputSubsystem:K2_AddPlayerMappedKeyInSlot(MappingName, NewKey, KeySlot, Options) end

---Input simulation via injection. Runs modifiers and triggers delegates as if the input had come through the underlying input system as FKeys.
---Applies action modifiers and triggers on top.
---@param MappingName string
---@param Value FVector
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UMockedEnhancedInputSubsystem:InjectInputVectorForPlayerMapping(MappingName, Value, Modifiers, Triggers) end

---Input simulation via injection. Runs modifiers and triggers delegates as if the input had come through the underlying input system as FKeys.
---Applies action modifiers and triggers on top.
---@param Action UInputAction
---@param Value FVector
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UMockedEnhancedInputSubsystem:InjectInputVectorForAction(Action, Value, Modifiers, Triggers) end

---Input simulation via injection. Runs modifiers and triggers delegates as if the input had come through the underlying input system as FKeys.
---Applies action modifiers and triggers on top.
---@param MappingName string
---@param RawValue FInputActionValue
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UMockedEnhancedInputSubsystem:InjectInputForPlayerMapping(MappingName, RawValue, Modifiers, Triggers) end

---Input simulation via injection. Runs modifiers and triggers delegates as if the input had come through the underlying input system as FKeys.
---Applies action modifiers and triggers on top.
---@param Action UInputAction
---@param RawValue FInputActionValue
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UMockedEnhancedInputSubsystem:InjectInputForAction(Action, RawValue, Modifiers, Triggers) end

---Check if a mapping context is applied to this subsystem's owner.
---@param MappingContext UInputMappingContext
---@param OutFoundPriority integer @[out] 
---@return boolean
function UMockedEnhancedInputSubsystem:HasMappingContext(MappingContext, OutFoundPriority) end

---@return UEnhancedInputUserSettings
function UMockedEnhancedInputSubsystem:GetUserSettings() end

---@param MappingName string
---@return TArray_FKey_
function UMockedEnhancedInputSubsystem:GetAllPlayerMappedKeys(MappingName) end

---Get an array of the currently applied key mappings that are marked as Player Mappable.
---@return TArray_FEnhancedActionKeyMapping_
function UMockedEnhancedInputSubsystem:GetAllPlayerMappableActionKeyMappings() end

---Remove all applied mapping contexts.
function UMockedEnhancedInputSubsystem:ClearAllMappings() end

---@param Config UPlayerMappableInputConfig
---@param Options FModifyContextOptions @[opt] 
function UMockedEnhancedInputSubsystem:AddPlayerMappableConfig(Config, Options) end

---Add a control mapping context.
---@param MappingContext UInputMappingContext
---@param Priority integer
---@param Options FModifyContextOptions @[opt] 
function UMockedEnhancedInputSubsystem:AddMappingContext(MappingContext, Priority, Options) end

